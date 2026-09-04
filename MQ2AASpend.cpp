// MQ2AASpend.cpp : Redguides exclusive ini based auto AA purchaser
// v1.0 - Sym - 04-23-2012
// v1.1 - Sym - 05-26-2012 - Updated to spends aa on normal level ding and basic error checking on ini string
// v2.0 - Eqmule 11-23-2015 - Updated to not rely on the UI or macrocalls.
// v2.1 - Eqmule 04-23-2016 - Updated to bruteforce AA in the correct order.
// v2.1 - Eqmule 05-18-2016 - Added a feature to bruteforce Bonus AA first.
// v2.2 - Eqmule 07-22-2016 - Added string safety.
// v2.3 - Eqmule 08-30-2016 - Fixed buy aa so it will take character level into account when buying aa's
// v2.4 - Eqmule 09-25-2016 - Fixed buy aa so it will not try to buy aa's with an ID of 0 (like Hidden Communion of the Cheetah)
// v2.5 - Eqmule 12-17-2016 - Added SpendOrder as a ini setting. Defualt is still class,focus,arch,gen,special.
// v2.6 - Sic    01-04-2020 - Updated Bonus to reflect AutoGrant as of 12/19/2019 gives autogrant up to and including TBM, xpac #22

#include <mq/Plugin.h>
#include <cstdarg>
#include <cstdio>
#include <ctime>

PreSetup("MQ2AASpend");
PLUGIN_VERSION(2.6);

constexpr const char* PTAA_COMPAT_VERSION = "0.1.3";

// The Alternate Ability length converted to decimal is length 10 for a total of 20ish chars, add some padding in case that changes.
constexpr int MAX_BUYLINE = 32;

// AutoGrant is now an "Automatic Script" per DBG current expansion - 4.
const int iAutoGrantExpansion = NUM_EXPANSIONS - 4;

struct AAInfo
{
	std::string name;
	std::string level;

	AAInfo(std::string name_, std::string level_)
		: name(std::move(name_)), level(std::move(level_)) {}
};

bool bInitDone = false;
bool bDebug = false;

//----------------------------------------------------------------------------
// AA Settings

std::vector<AAInfo> vAAList;
bool bAutoSpend = false;
bool bAutoSpendNow = false;
bool bBruteForce = false;
bool bBruteForceBonusFirst = false;
int iBankPoints = 0;
int doBruteForce = 0;
int doBruteForceBonusFirst = 0;
bool doAutoSpend = false;
int iLastAAPoints = -1;

const std::vector<int> DefaultSpendOrder = { 3, 5, 2, 1, 4 }; // default order is: class, focus, arch, gen, special
const std::string DefaultSpendOrderString = "35214";

std::vector<int> SpendOrder = DefaultSpendOrder;
std::string SpendOrderString = DefaultSpendOrderString;

static void UpdateSpendOrder();

static void RefreshINI();
static void WriteAACostCache();
static std::string GetDebugLogPath()
{
	char path[MAX_PATH] = { 0 };
	const char* server = GetServerShortName();
	const char* character = (pLocalPC && pLocalPC->Name[0]) ? pLocalPC->Name : "Unknown";
	sprintf_s(path, "%s\\MQ2AASpend_%s_%s_debug.log", gPathConfig,
		(server && server[0]) ? server : "Unknown", character);
	return path;
}

static std::string StripMQColorCodes(const char* text)
{
	std::string clean;
	if (!text) return clean;

	for (const unsigned char* p = reinterpret_cast<const unsigned char*>(text); *p; ++p)
	{
		// MacroQuest chat colors are encoded as BEL ('\a') followed by a
		// one-character color/control code, e.g. "\ag", "\ar", "\ax".
		if (*p == '\a')
		{
			if (*(p + 1))
				++p;
			continue;
		}

		clean.push_back(static_cast<char>(*p));
	}

	return clean;
}

static void DebugLogf(const char* format, ...)
{
	if (!bDebug) return;

	char buffer[MAX_STRING] = { 0 };
	va_list args;
	va_start(args, format);
	vsnprintf_s(buffer, _countof(buffer), _TRUNCATE, format, args);
	va_end(args);

	// Keep MacroQuest color codes in the in-game chat output.
	WriteChatf("%s", buffer);

	// Strip them from the plain-text logfile.
	const std::string cleanBuffer = StripMQColorCodes(buffer);
	const std::string path = GetDebugLogPath();
	FILE* file = nullptr;
	if (fopen_s(&file, path.c_str(), "a") == 0 && file)
	{
		std::time_t now = std::time(nullptr);
		std::tm localTime = {};
		localtime_s(&localTime, &now);

		char timestamp[32] = { 0 };
		std::strftime(timestamp, sizeof(timestamp), "%Y-%m-%d %H:%M:%S", &localTime);
		fprintf(file, "[%s] %s\n", timestamp, cleanBuffer.c_str());
		fclose(file);
	}
}

static void ClearDebugLog()
{
	const std::string path = GetDebugLogPath();
	FILE* file = nullptr;
	if (fopen_s(&file, path.c_str(), "w") == 0 && file)
		fclose(file);
}


static std::string GetAACostCachePath()
{
	char path[MAX_PATH] = { 0 };
	const char* server = GetServerShortName();
	const char* character = (pLocalPC && pLocalPC->Name[0]) ? pLocalPC->Name : "Unknown";
	sprintf_s(path, "%s\\MQ2AASpend_%s_%s_costs.txt", gPathConfig,
		(server && server[0]) ? server : "Unknown", character);
	return path;
}

static void WriteAACostCache()
{
	if (!pLocalPlayer || !pLocalPC)
		return;

	/*
	 * Build the cache by walking the rank chain for each AA in the current
	 * priority list instead of iterating 0..NUM_ALT_ABILITIES.
	 *
	 * AA IDs on RoF2/Triune are sparse and can be much larger than
	 * NUM_ALT_ABILITIES, so NUM_ALT_ABILITIES is not a safe upper bound for
	 * enumerating AA IDs.
	 *
	 * MAX_PC_LEVEL is intentionally used for cache lookups so later ranks in
	 * an AA line can be discovered for full target/"M" cost calculations even
	 * when the character is below a later rank's normal level requirement.
	 */
	std::map<std::string, std::map<int, int>> costsByName;

	for (const AAInfo& info : vAAList)
	{
		const std::string& name = info.name;

		int index = GetAAIndexByName((PCHAR)name.c_str());
		if (index <= 0)
			continue;

		CAltAbilityData* pRank = GetAAById(index, MAX_PC_LEVEL);
		if (!pRank)
			continue;

		std::set<int> seenIds;

		for (int depth = 0; pRank && depth < 100; ++depth)
		{
			if (pRank->CurrentRank > 0)
				costsByName[name][pRank->CurrentRank] = pRank->Cost;

			int currentId = pRank->Index;
			if (currentId > 0)
			{
				if (seenIds.count(currentId))
					break;

				seenIds.insert(currentId);
			}

			int nextId = pRank->NextGroupAbilityId;
			if (nextId <= 0 || seenIds.count(nextId))
				break;

			CAltAbilityData* pNext = GetAAById(nextId, MAX_PC_LEVEL);
			if (!pNext || pNext == pRank)
				break;

			pRank = pNext;
		}
	}

	const std::string path = GetAACostCachePath();
	FILE* file = nullptr;
	if (fopen_s(&file, path.c_str(), "w") != 0 || !file)
	{
		WriteChatf("MQ2AASpend :: Unable to write AA cost cache: %s", path.c_str());
		return;
	}

	fprintf(file, "# MQ2AASpend Project Triune AA cost cache v2\n");
	fprintf(file, "# Format: AA Name|rank=cost;rank=cost;...\n");

	for (const auto& [name, rankCosts] : costsByName)
	{
		fprintf(file, "%s|", name.c_str());

		bool first = true;
		for (const auto& [rank, cost] : rankCosts)
		{
			if (!first)
				fputc(';', file);

			fprintf(file, "%d=%d", rank, cost);
			first = false;
		}

		fputc('\n', file);
	}

	fclose(file);

	if (bDebug)
		DebugLogf("MQ2AASpend :: Wrote AA cost cache v2 with %d priority abilities: %s",
			static_cast<int>(costsByName.size()), path.c_str());
}

//----------------------------------------------------------------------------
// Merc AA Settings

#if HAS_MERCENARY_AA
std::vector<AAInfo> vMercAAList;
bool bUseCurrentMercType = false;
bool bAutoSpendMerc = false;
bool bBruteForceMerc = false;
int doBruteForceMerc = 0;
bool doAutoSpendMerc = false;

const std::vector<std::string> MercCategories = {
	"",              // 0
	"General",       // 1
	"Tank",          // 2
	"Healer",        // 3
	"Melee DPS",     // 4
	"Caster DPS"     // 5
};

const std::vector<int> DefaultMercSpendOrder = { 3, 2, 4, 5, 1 };
const std::string DefaultMercSpendOrderString = "32451";

std::string MercSpendOrderString = DefaultMercSpendOrderString;
std::vector<int> MercSpendOrder = DefaultMercSpendOrder;

static int GetCurrentMercenaryType();
static void UpdateMercSpendOrder();
static std::string GetMercSpendOrderDisplayString();
static const MercenaryAbilitiesData* FindMercAbilityByName(std::string_view abilityName);
#endif // HAS_MERCENARY_AA

void ShowHelp()
{
	WriteChatf("\atMQ2AASpend :: v%s :: by Sym - Project Triune compatibility build by TheZeroDivide\ax", PTAA_COMPAT_VERSION);
	WriteChatf("/aaspend :: Lists command syntax");
	if (bInitDone)
	{
		WriteChatf("/aaspend status :: Shows current status");
		WriteChatf("/aaspend costcache :: Rebuilds the Project Triune AA rank-cost cache for PTAAPlanner.");
		WriteChatf("/aaspend debug on|off|clear|path :: Debug chat + per-character logfile controls.");
		WriteChatf("/aaspend add \"AA Name\" maxlevel :: Adds AA Name to ini file, will not purchase past max level. Use M to specify max level");
		WriteChatf("/aaspend del \"AA Name\" :: Deletes AA Name from ini file");
		WriteChatf("/aaspend buy \"AA Name\" :: Buys a particular AA. Ignores bank setting.");
		WriteChatf("/aaspend brute on|off|now :: Buys first available ability on ding, or now if specified. Default \ar*OFF*\ax");
		WriteChatf("/aaspend bonus on|off|now :: Buys first available ability BONUS AA on ding, or now if specified. Default \ar*OFF*\ax");
		WriteChatf("/aaspend auto on|off|now :: Autospends AA's based on ini on ding, or now if specified. Default \ag*ON*\ax");
		WriteChatf("/aaspend bank # :: Keeps this many AA points banked before auto/brute spending. Default \ay0\ax.");
		WriteChatf("/aaspend order ##### :: Sets the Spend Order.\ay Default is 35214 (class, focus, arch, gen, special)\ax.");

#if HAS_MERCENARY_AA
		WriteChatf("MQ2AASpend Merc commands:");
		WriteChatf("/aaspend mercadd \"AA Name\" maxlevel :: Adds Merc AA Name to ini file, will not purchase past max level. Use M to specify max level");
		WriteChatf("/aaspend mercdel \"AA Name\" :: Deletes Merc AA Name from ini file");
		WriteChatf("/aaspend mercbuy \"AA Name\" :: Buys a particular Merc AA.");
		WriteChatf("/aaspend mercbrute on|off|now :: Brute mode for Merc AA. Default \ar*OFF*\ax");
		WriteChatf("/aaspend mercauto on|off|now :: Autospends Merc AA's based on ini on ding, or now if specified. Default \ar*OFF*\ax");
		WriteChatf("/aaspend mercorder ##### :: Sets the Merc Spend Order.\ay Default is 32451 (general=1, tank=2, healer=3, melee=4, caster=5)\ax.");
		WriteChatf("/aaspend mercorder auto on|off :: Set the Merc Spend Order to always prioritize your current merc type. Default \ar*OFF*\ax");
#endif // HAS_MERCENARY_AA
	}
}

void ShowStatus()
{
	if (pLocalPC) RefreshINI();
	WriteChatf("\atMQ2AASpend :: Status\ax");
	WriteChatf("Brute Force Mode: %s", bBruteForce ? "\agon\ax" : "\aroff\ax");
	WriteChatf("Brute Force Bonus AA First: %s", bBruteForceBonusFirst ? "\agon\ax" : "\aroff\ax");
	WriteChatf("Auto Spend Mode: %s", bAutoSpend ? "\agon\ax" : "\aroff\ax");
	WriteChatf("Banking \ay%d\ax points", iBankPoints);
	UpdateSpendOrder();
	WriteChatf("Spend Order: \ag%s\ax", SpendOrderString.c_str());
	WriteChatf("INI has \ay%d\ax abilities listed", vAAList.size());
	if (bDebug) WriteChatf("Debug logfile: %s", GetDebugLogPath().c_str());

#if HAS_MERCENARY_AA
	WriteChatf("\atMQ2AASpend :: Merc Status\ax");
	WriteChatf("Merc Brute Prioritize Merc Type: %s - Will prioritize AA for your active mercenary type", bUseCurrentMercType ? "\agon\ax" : "\aroff\ax");
	WriteChatf("Merc Brute Force Mode: %s", bBruteForceMerc ? "\agon\ax" : "\aroff\ax");
	WriteChatf("Merc Auto Spend Mode: %s", bAutoSpendMerc ? "\agon\ax" : "\aroff\ax");
	std::string displayString = GetMercSpendOrderDisplayString();
	WriteChatf("Merc Spend Order: \ag%s\ax", displayString.c_str());
	WriteChatf("INI has \ay%d\ax merc abilities listed", vMercAAList.size());
#endif // HAS_MERCENARY_AA
}

static void UpdateSpendOrder()
{
	if (SpendOrderString.empty())
	{
		SpendOrder = DefaultSpendOrder;
		SpendOrderString = DefaultSpendOrderString;
		return;
	}

	SpendOrder.clear();
	for (char ch : SpendOrderString)
	{
		int val = ch - '0';

		if (val >= 0 && val <= 10)
			SpendOrder.push_back(val);
	}
}

#if HAS_MERCENARY_AA
// SpendOrderString -> SpendOrder with auto merc type factored in
static void UpdateMercSpendOrder()
{
	std::vector<int> tempOrder;

	if (MercSpendOrderString.empty())
	{
		tempOrder = DefaultMercSpendOrder;
		MercSpendOrderString = DefaultMercSpendOrderString;
	}
	else
	{
		for (char ch : MercSpendOrderString)
		{
			int val = ch - '0';

			if (val >= 1 && val <= 5)
				tempOrder.push_back(val);
		}
	}

	// Rebuild from the new order
	MercSpendOrder.clear();

	// insert current merc type first if its available
	if (bUseCurrentMercType)
	{
		int mercType = GetCurrentMercenaryType();
		if (mercType != 0)
		{
			MercSpendOrder.push_back(mercType);
		}
	}

	for (int value : tempOrder)
	{
		if (std::find(MercSpendOrder.begin(), MercSpendOrder.end(), value) == MercSpendOrder.end())
		{
			MercSpendOrder.push_back(value);
		}
	}
}

std::string GetMercSpendOrderDisplayString()
{
	UpdateMercSpendOrder();

	// this string is literally just for display purposes.
	std::string spendOrderString;

	if (bUseCurrentMercType)
	{
		int mercType = GetCurrentMercenaryType();
		if (mercType != 0)
		{
			spendOrderString = fmt::format("\ay(active: {})\ax", MercCategories[mercType]);
		}
	}

	for (char ch : MercSpendOrderString)
	{
		int index = ch - '0';

		if (index >= 1 && index <= (int)MercCategories.size())
		{
			if (!spendOrderString.empty())
				spendOrderString.append(", ");
			spendOrderString.append(MercCategories[index]);
		}
	}

	return spendOrderString;
}
#endif // HAS_MERCENARY_AA

void Update_INIFileName()
{
	sprintf_s(INIFileName, "%s\\%s_%s.ini", gPathConfig, GetServerShortName(), pLocalPC->Name);
}

void SaveINI()
{
	Update_INIFileName();

	// write settings
	std::string sectionName = "MQ2AASpend_Settings";
	WritePrivateProfileSection(sectionName, "", INIFileName);
	WritePrivateProfileBool(sectionName, "AutoSpend", bAutoSpend, INIFileName);
	WritePrivateProfileBool(sectionName, "BruteForce", bBruteForce, INIFileName);
	WritePrivateProfileBool(sectionName, "BruteForceBonusFirst", bBruteForceBonusFirst, INIFileName);
	WritePrivateProfileInt(sectionName, "BankPoints", iBankPoints, INIFileName);
	UpdateSpendOrder();
	WritePrivateProfileString(sectionName, "SpendOrder", SpendOrderString, INIFileName);

#if HAS_MERCENARY_AA
	WritePrivateProfileBool(sectionName, "MercAutoSpend", bAutoSpendMerc, INIFileName);
	WritePrivateProfileBool(sectionName, "MercBruteForce", bBruteForceMerc, INIFileName);
	UpdateMercSpendOrder();
	WritePrivateProfileString(sectionName, "MercSpendOrder", MercSpendOrderString, INIFileName);
	WritePrivateProfileBool(sectionName, "MercOrderAuto", bUseCurrentMercType, INIFileName);
#endif // HAS_MERCENARY_AA

	// write all abilites
	sectionName = "MQ2AASpend_AAList";
	WritePrivateProfileSection(sectionName, "", INIFileName);

	for (size_t a = 0; a < vAAList.size(); a++)
	{
		AAInfo& info = vAAList[a];

		WritePrivateProfileString(sectionName, std::to_string(a),
			fmt::format("{}|{}", info.name, info.level), INIFileName);
	}

#if HAS_MERCENARY_AA
	// write merc abilities
	sectionName = "MQ2AASpend_MercAAList";
	WritePrivateProfileSection(sectionName, "", INIFileName);

	for (size_t a = 0; a < vMercAAList.size(); a++)
	{
		AAInfo& info = vMercAAList[a];

		WritePrivateProfileString(sectionName, std::to_string(a),
			fmt::format("{}|{}", info.name, info.level), INIFileName);
	}
#endif // HAS_MERCENARY_AA

	if (bInitDone) WriteChatf("\atMQ2AASpend :: Settings updated\ax");
}

static std::vector<AAInfo> LoadAAInfo(const std::string& section)
{
	std::vector<std::string> AAList = GetPrivateProfileKeys(section, INIFileName);

	// clear lists
	std::vector<AAInfo> aaInfo;
	int count = 0;

	// loop through all entries in the list. values look like:
	// 1=Gate|M
	// 2=Innate Agility|5
	for (const std::string& keyName : AAList)
	{
		std::string item = GetPrivateProfileString(section, keyName, std::string(), INIFileName);

		// split entries on =
		std::vector<std::string_view> pieces = mq::split_view(item, '|');

		if (pieces.empty())
		{
			WriteChatf("\arMQ2AASpend :: %s=%s isn't in valid format, skipping...\ax", keyName.c_str(), item.c_str());
			continue;
		}

		if (count++ > 500)
		{
			WriteChatf("\arMQ2AASpend :: There is a limit of 500 abilities in the ini file. Remove some maxxed entries if you want to add new abilities.\ax");
			break;
		}

		for (size_t i = 0; i < pieces.size();)
		{
			// Odd entries are the names. Add it to the list
			std::string_view name = pieces[i++];

			// next is maxlevel of ability. Add it to the level list.
			if (i < pieces.size())
			{
				std::string_view level = pieces[i++];
				aaInfo.emplace_back(std::string(name), std::string(level));
			}
		}
	}

	return aaInfo;
}

static void RefreshINI()
{
	Update_INIFileName();

	std::string sectionName = "MQ2AASpend_Settings";
	bAutoSpend = GetPrivateProfileBool(sectionName, "AutoSpend", true, INIFileName);
	bBruteForce = GetPrivateProfileBool(sectionName, "BruteForce", false, INIFileName);
	bBruteForceBonusFirst = GetPrivateProfileBool(sectionName, "BruteForceBonusFirst", false, INIFileName);
	iBankPoints = GetPrivateProfileInt(sectionName, "BankPoints", 0, INIFileName);
	SpendOrderString = GetPrivateProfileString(sectionName, "SpendOrder", DefaultSpendOrderString, INIFileName);
	UpdateSpendOrder();
	vAAList = LoadAAInfo("MQ2AASpend_AAList");

#if HAS_MERCENARY_AA
	bAutoSpendMerc = GetPrivateProfileBool(sectionName, "MercAutoSpend", false, INIFileName);
	bBruteForceMerc = GetPrivateProfileBool(sectionName, "MercBruteForce", false, INIFileName);
	bUseCurrentMercType = GetPrivateProfileBool(sectionName, "MercOrderAuto", false, INIFileName);
	MercSpendOrderString = GetPrivateProfileString(sectionName, "MercSpendOrder", DefaultMercSpendOrderString, INIFileName);
	UpdateMercSpendOrder();
	vMercAAList = LoadAAInfo("MQ2AASpend_MercAAList");
#endif // HAS_MERCENARY_AA
}

void LoadINI()
{
	RefreshINI();

	// Preserve upstream initialization behavior on explicit/startup loads.
	SaveINI();
	bInitDone = true;

	WriteAACostCache();

	if (bDebug)
		DebugLogf("MQ2AASpend :: INI refreshed: %d prioritized abilities, bank=%d",
			static_cast<int>(vAAList.size()), iBankPoints);
}

void SpendAAFromINI()
{
	if (!pLocalPlayer) return;

	// PTAAPlanner may rewrite the INI while the plugin is loaded. Always read
	// the current list/settings before an automatic purchase pass.
	RefreshINI();

	if (!bAutoSpendNow && GetPcProfile()->AAPoints < iBankPoints)
	{
		DebugLogf("MQ2AASpend :: Waiting for bank threshold: Have=%d Need=%d",
			GetPcProfile()->AAPoints, iBankPoints);
		return;
	}
	if (vAAList.empty())
	{
		DebugLogf("MQ2AASpend :: Priority list is empty after INI refresh.");
		return;
	}

	int level = pLocalPlayer->Level;

	for (const AAInfo& info : vAAList)
	{
		const std::string& vRef = info.name;
		const std::string& vLevelRef = info.level;

		DebugLogf("MQ2AASpend :: Have %s from ini, checking...", vRef.c_str());

		int index = GetAAIndexByName((PCHAR)vRef.c_str());
		CAltAbilityData* pAbility = GetAAById(index, level);

		if (!pAbility)
		{
			DebugLogf("MQ2AASpend :: %s could not be found.", vRef.c_str());

			continue;
		}

		/*
		 * Project Triune compatibility:
		 *
		 * Triune exposes individual AA ranks as linked records. CurrentRank
		 * describes the rank represented by that record, not necessarily the
		 * number of ranks the character owns.
		 *
		 * Walk the entire rank chain and select the FIRST rank that
		 * MacroQuest says the character can train.
		 */
		CAltAbilityData* pCandidate = nullptr;
		CAltAbilityData* pRank = pAbility;

		// Guard against malformed or cyclic AA chains.
		for (int chainDepth = 0; pRank && chainDepth < 100; ++chainDepth)
		{
			bool canTrain = pAltAdvManager->CanTrainAbility(pLocalPC, pRank);

			DebugLogf(
					"MQ2AASpend :: DEBUG %s rank-chain: Index=%d GroupID=%d Rank=%d MaxRank=%d Cost=%d Type=%d NextGroupAbilityId=%d CanTrain=%s",
					vRef.c_str(),
					pRank->Index,
					pRank->GroupID,
					pRank->CurrentRank,
					pRank->MaxRank,
					pRank->Cost,
					pRank->Type,
					pRank->NextGroupAbilityId,
					canTrain ? "TRUE" : "FALSE");

			if (canTrain)
			{
				pCandidate = pRank;
				break;
			}

			int nextAbilityId = pRank->NextGroupAbilityId;
			if (nextAbilityId <= 0)
				break;

			CAltAbilityData* pNextRank = GetAAById(nextAbilityId, level);
			if (!pNextRank || pNextRank == pRank)
				break;

			pRank = pNextRank;
		}

		if (!pCandidate)
		{
			DebugLogf("MQ2AASpend :: %s is \arNOT available\ax for purchase.", vRef.c_str());

			continue;
		}

		pAbility = pCandidate;

		if (!pAbility->Type)
		{
			DebugLogf("MQ2AASpend :: %s is \arNOT available\ax for purchase.", vRef.c_str());

			continue;
		}

		int aaType = pAbility->Type;
		int aaCost = pAbility->Cost;
		int purchaseLevel = pAbility->CurrentRank;

		// pAbility is now the first trainable rank in the chain.
		int ownedLevel = purchaseLevel > 0 ? purchaseLevel - 1 : 0;

		DebugLogf(
			"MQ2AASpend :: %s is \agavailable\ax for purchase. Cost is %d, tab is %d",
			vRef.c_str(), aaCost, aaType);

		DebugLogf(
			"MQ2AASpend :: %s current level is %d; next purchase is level %d",
			vRef.c_str(), ownedLevel, purchaseLevel);

		// Respect a numeric maximum rank from the INI.
		// "M" means purchase every available rank.
		if (_stricmp(vLevelRef.c_str(), "M"))
		{
			int configuredMax = GetIntFromString(vLevelRef.c_str(), MAX_PC_LEVEL + 1);

			if (ownedLevel >= configuredMax)
			{
				DebugLogf("MQ2AASpend :: %s max level has been reached per ini setting, skipping",
					vRef.c_str());

				continue;
			}
		}

		if (GetPcProfile()->AAPoints < aaCost)
		{
			if (bDebug)
				DebugLogf("MQ2AASpend :: Not enough points to buy %s: Have=%d Need=%d",
					vRef.c_str(), GetPcProfile()->AAPoints, aaCost);
			else
				WriteChatf("MQ2AASpend :: Not enough points to buy %s, skipping", vRef.c_str());
			continue;
		}

		if (bDebug)
			DebugLogf(
				"MQ2AASpend :: Attempting to purchase level %d of %s for %d point%s.",
				purchaseLevel, vRef.c_str(), aaCost, aaCost > 1 ? "s" : "");
		else
			WriteChatf(
				"MQ2AASpend :: Attempting to purchase level %d of %s for %d point%s.",
				purchaseLevel, vRef.c_str(), aaCost, aaCost > 1 ? "s" : "");

		if (!bDebug)
		{
			char szCommand[MAX_BUYLINE] = { 0 };

#if !IS_EXPANSION_LEVEL(EXPANSION_LEVEL_COTF)
			sprintf_s(szCommand, "/alt buy %d", pAbility->Index);
#else
			sprintf_s(szCommand, "/alt buy %d", pAbility->GroupID);
#endif

			DoCommand(pLocalPlayer, szCommand);
		}
		else
		{
			DebugLogf("MQ2AASpend :: Debugging so I wont actually buy %s", vRef.c_str());
		}

		// Purchase one AA per pass, preserving original behavior.
		break;
	}
}

CAltAbilityData* GetFirstPurchasableAA(bool bBonus, bool bNext)
{
	if (!pLocalPlayer || !pLocalPC) return nullptr;

	constexpr uint32_t ABILITY_MAP_SIZE = 5;
	using AbilityMap = std::map<int, CAltAbilityData*>;
	std::array<AbilityMap, ABILITY_MAP_SIZE> abilityMaps;

	int level = pLocalPlayer->Level;
	CAltAbilityData* pPrevAbility = nullptr;

	for (int nAbility = 0; nAbility < NUM_ALT_ABILITIES; nAbility++)
	{
		if (CAltAbilityData* pAbility = GetAAById(nAbility, level))
		{
			pPrevAbility = pAbility;
			CAltAbilityData* pNextAbility = GetAAById(pAbility->NextGroupAbilityId, level);
			if (pNextAbility)
				pAbility = pNextAbility;

			if (bBonus)
			{
				if (pAbility->Expansion <= iAutoGrantExpansion)
					continue;
			}

			// Check if we can train it.
			if (pAltAdvManager->CanTrainAbility(pLocalPC, pAbility))
			{
				if (pAbility->GroupID == 0)
					continue;// hidden communion of the cheetah is not valid and has this id, but is still sent down to the client

				if (bDebug)
				{
					WriteChatf("Adding \ay%s\ax (expansion:\ag%d\ax) to the \ao%d\ax map",
						pAbility->GetNameString(), pAbility->Expansion, pAbility->Type);
				}

				if (bNext)
					pPrevAbility = pAbility;

				int type = pAbility->Type - 1;
				if (type >= 0 && type < ABILITY_MAP_SIZE)
				{
					abilityMaps[type][pAbility->GroupID] = pPrevAbility;
				}
				else
				{
					WriteChatf("Type %d Not Found in GetFirstPurchasableAA.", pAbility->Type);
				}
			}
		}
	}

	// spend in the specified order:
	for (int order : SpendOrder)
	{
		if (order >= 1 && order <= ABILITY_MAP_SIZE)
		{
			AbilityMap& abilityMap = abilityMaps[order - 1];
			if (!abilityMap.empty())
			{
				return abilityMap.begin()->second;
			}
		}
	}

	if (!bBruteForce)
		WriteChatf("I couldn't find any AA's to purchase, maybe you have them all?");

	return nullptr;
}

bool BuySingleAA(CAltAbilityData* pAbility)
{
	if (!pLocalPlayer) return false;
	if (!pAbility) return false;

	const char* AAName = pAbility->GetNameString();

	if (pAbility->Type == 0)
	{
		WriteChatf("MQ2AASpend :: Unable to purchase %s", AAName);
		return false;
	}

	if (CAltAbilityData* pNextAbility = GetAAById(pAbility->NextGroupAbilityId, pLocalPlayer->Level))
		pAbility = pNextAbility;

	if (!pAltAdvManager->CanTrainAbility(pLocalPC, pAbility))
	{
		WriteChatf("MQ2AASpend :: You can't train %s for some reason, aborting", AAName);
		return false;
	}

	int aaCost = pAbility->Cost;
	if (aaCost <= GetPcProfile()->AAPoints)
	{
		WriteChatf("MQ2AASpend :: Attempting to purchase level %d of %s for %d point%s.",
			pAbility->CurrentRank, AAName, aaCost, aaCost > 1 ? "s" : "");

		if (!bDebug)
		{
			char szCommand[MAX_BUYLINE] = { 0 };
#if !IS_EXPANSION_LEVEL(EXPANSION_LEVEL_COTF)
			sprintf_s(szCommand, "/alt buy %d", pAbility->Index);
#else
			sprintf_s(szCommand, "/alt buy %d", pAbility->GroupID);
#endif

			DoCommand(pLocalPlayer, szCommand);
		}
		else
		{
			WriteChatf("MQ2AASpend :: Debugging so I wont actually buy %s", AAName);
		}

		return true;
	}
	else
	{
		WriteChatf("MQ2AASpend :: Not enough points to buy %s, aborting", AAName);
	}

	return false;
}

void BruteForcePurchase(int mode, bool bonusMode)
{
	if (mode != 2 && GetPcProfile()->AAPoints < iBankPoints)
		return;

	DebugSpew("MQ2AASpend :: Starting Brute Force Purchase");

	if (CAltAbilityData* pBruteAbility = GetFirstPurchasableAA(bonusMode, false))
	{
		BuySingleAA(pBruteAbility);
	}

	DebugSpew("MQ2AASpend :: Brute Force Purchase Complete");
}

//----------------------------------------------------------------------------

#if HAS_MERCENARY_AA
static int GetCurrentMercenaryType()
{
	if (!pMercManager) return 0;
	if (!pMercManager->currentMercenary.hasMercenary)
		return 0;
	return pMercManager->currentMercenary.mercenaryInfo.type;
}

static int MercTypeToInt(std::string_view str)
{
	for (int i = 1; i < (int)MercCategories.size(); ++i)
	{
		if (ci_equals(MercCategories[i], str))
			return i;
	}

	return 0;
}

struct SortByPriorityList
{
	SortByPriorityList(std::vector<int>& priority_)
		: priority(priority_) {}

	int indexOfType(int type) const
	{
		for (int i = 0; i < (int)priority.size(); ++i)
		{
			if (priority[i] == type)
				return i;
		}
		return 100;
	}

	bool operator()(const MercenaryAbilitiesData* a, const MercenaryAbilitiesData* b) const
	{
		int indexA = indexOfType(a->Type);
		int indexB = indexOfType(b->Type);

		if (indexA == indexB)
		{
			// Sort by name if they are the same type
			return _strcmpi(a->GetNameString(), b->GetNameString()) < 0;
		}

		return indexA < indexB;
	}

	std::vector<int>& priority;
};

// Returns the Ability ID of the first purchasable Mercenary AA for the current configuration.
const MercenaryAbilitiesData* GetFirstPurchasableMercAA()
{
	if (!pLocalPC)
		return nullptr;

	std::vector<const MercenaryAbilitiesData*> unownedAbilities;
	int currentPoints = pLocalPC->MercAAPoints;

	// Get list of purchasable AA
	MercenaryAbilityGroup* group = pMercAltAbilities->MercenaryAbilityGroups.GetFirst();
	while (group)
	{
		int groupId = pMercAltAbilities->MercenaryAbilityGroups.GetKey(group);

		if (const MercenaryAbilitiesData* unownedAbility = pMercAltAbilities->GetFirstUnownedAbilityByGroupId(groupId))
		{
			// Filter our level requirements here.
			if (GetPcProfile()->Level >= unownedAbility->MinPlayerLevel)
			{
				// If its free and trainable, grab it!
				if (unownedAbility->Cost == 0)
				{
					if (pMercAltAbilities->CanTrainAbility(unownedAbility->AbilityID))
						return unownedAbility;
				}

				unownedAbilities.push_back(unownedAbility);
			}
		}

		group = pMercAltAbilities->MercenaryAbilityGroups.GetNext(group);
	}

	if (unownedAbilities.empty())
		return nullptr;

	UpdateMercSpendOrder();

	// Sort the list of abilities by the type priority given by the ordering.
	std::sort(unownedAbilities.begin(), unownedAbilities.end(), SortByPriorityList(MercSpendOrder));

	if (bDebug)
	{
		WriteChatf("Priority: %s", MercSpendOrderString.c_str());
		for (int value : MercSpendOrder)
			WriteChatf("  %d", value);
		for (auto ability : unownedAbilities)
		{
			WriteChatf("Merc Ability: \ag%s\ax - \ao%d\ax - \ay%s (%d)\ax", ability->GetNameString(), ability->Cost, ability->GetTypeString(), ability->Type);
		}
	}

	// is the first item purchasable?
	const MercenaryAbilitiesData* firstAbility = unownedAbilities[0];

	if (pMercAltAbilities->CanTrainAbility(firstAbility->AbilityID))
		return firstAbility;

	if (bDebug)
	{
		WriteChatf("MQ2AASpend :: (Merc) Can't buy top priority ability (%s %d). Checking for requirements...",
			firstAbility->GetNameString(), firstAbility->GroupRank);
	}

	// first item isn't trainable. If it has requirements that aren't met, then we should consider those instead.
	if (!firstAbility->IsRequirementsMet())
	{
		for (const MercenaryAbilityReq& requirement : firstAbility->AbilityReqs)
		{
			if (!firstAbility->IsRequirementMet(requirement))
			{
				const MercenaryAbilitiesData* ability = pMercAltAbilities->GetFirstUnownedAbilityByGroupId(requirement.ReqGroupID);
				if (ability && ability->GroupRank <= requirement.ReqGroupRank)
				{
					if (bDebug)
					{
						WriteChatf("MQ2AASpend :: (Merc) We are missing a requirement: %s (%d)",
							ability->GetNameString(), ability->GroupRank);
					}

					if (pMercAltAbilities->CanTrainAbility(ability->AbilityID))
					{
						return ability;
					}
					else if (bDebug)
					{
						WriteChatf("MQ2AASpend :: (Merc) Can't train that ability! Keep looking...");
					}
				}
			}
		}
	}

	// didn't find something to buy.
	return nullptr;
}

const MercenaryAbilitiesData* FindMercAbilityByName(std::string_view abilityName)
{
	// Find AA By Name
	for (auto& groupNode : pMercAltAbilities->MercenaryAbilityGroups)
	{
		const MercenaryAbilityGroup& groupInfo = groupNode.value();
		if (const int* abilityId = groupInfo.GetFirst())
		{
			const MercenaryAbilitiesData* mercAbility = pMercAltAbilities->GetMercenaryAbility(*abilityId);
			if (!mercAbility) continue;

			// Check if this ability matches the name.
			if (!ci_equals(mercAbility->GetNameString(), abilityName))
				continue;

			// Ability exists, lets return it.
			return mercAbility;
		}
	}

	return nullptr;
}

bool BuySingleMercAA(const MercenaryAbilitiesData* pAbility)
{
	if (!pLocalPlayer) return false;
	if (!pAbility) return false;

	const char* AAName = pAbility->GetNameString();

	if (!pMercAltAbilities->CanTrainAbility(pAbility->AbilityID))
	{
		WriteChatf("MQ2AASpend :: (Merc) You can't train %s for some reason, aborting", AAName);
		return false;
	}

	int aaCost = pAbility->Cost;
	if (aaCost <= pLocalPC->MercAAPoints)
	{
		WriteChatf("MQ2AASpend :: (Merc) Attempting to purchase level %d of %s for %d point%s.",
			pAbility->GroupRank, AAName, aaCost, aaCost > 1 ? "s" : "");

		if (!bDebug)
		{
			pMercAltAbilities->BuyAbility(pAbility->AbilityID);
		}
		else
		{
			WriteChatf("MQ2AASpend :: (Merc) Debugging so I wont actually buy %s", AAName);
		}

		return true;
	}
	else
	{
		WriteChatf("MQ2AASpend :: (Merc) Not enough points to buy %s, aborting", AAName);
	}

	return false;
}

void BruteForcePurchaseMercAA(int mode)
{
	DebugSpew("MQ2AASpend :: Starting Brute Force Merc Purchase");

	if (const MercenaryAbilitiesData* pBruteAbility = GetFirstPurchasableMercAA())
	{
		BuySingleMercAA(pBruteAbility);
	}

	DebugSpew("MQ2AASpend :: Brute Force Purchase Merc Complete");
}

void SpendMercAAFromINI()
{
	if (!pLocalPlayer) return;
	if (vMercAAList.empty()) return;

	for (const AAInfo& info : vMercAAList)
	{
		if (bDebug)
			WriteChatf("MQ2AASpend :: (Merc) Have %s from ini, checking...", info.name.c_str());

		if (const MercenaryAbilitiesData* pAbility = FindMercAbilityByName(info.name))
		{
			pAbility = pMercAltAbilities->GetFirstUnownedAbilityByGroupId(pAbility->GroupID);
			if (!pAbility)
			{
				if (bDebug)
					WriteChatf("MQ2AASpend :: %s is \arNOT available\ax for purchase (none available).", info.name.c_str());
				continue;
			}

			if (!pMercAltAbilities->CanTrainAbility(pAbility->AbilityID))
			{
				if (bDebug)
					WriteChatf("MQ2AASpend :: %s is \arNOT available\ax for purchase (cannot train).", info.name.c_str());
				continue;
			}

			int aaCost = pAbility->Cost;
			int curLevel = pAbility->GroupRank - 1; // get previous rank since this is the one we don't own.

			if (bDebug)
			{
				WriteChatf("MQ2AASpend :: %s is \agavailable\ax for purchase. Cost is %d, type is %s", info.name.c_str(), aaCost, pAbility->GetTypeString());
				WriteChatf("MQ2AASpend :: %s current level is %d", info.name.c_str(), curLevel);
			}

			if (!ci_equals(info.level, "M"))
			{
				int wantedLevel = GetIntFromString(info.level.c_str(), 1000);
				if (curLevel >= wantedLevel)
				{
					if (bDebug)
						WriteChatf("MQ2AASpend :: %s max level has been reached per ini setting, skipping", info.name.c_str());
					continue;
				}
			}

			BuySingleMercAA(pAbility);
			break;
		}
	}
}
#endif // HAS_MERCENARY_AA

//----------------------------------------------------------------------------

PLUGIN_API void SetGameState(int GameState)
{
	if (GameState == GAMESTATE_INGAME)
	{
		if (!bInitDone) LoadINI();
		iLastAAPoints = GetPcProfile()->AAPoints;
	}
	else if (GameState != GAMESTATE_LOGGINGIN)
	{
		if (bInitDone) bInitDone = false;
		iLastAAPoints = -1;
	}
}

static void ProcessAddCommand(const char* arg1, const char* arg2, const char* arg3, std::vector<AAInfo>& aaList)
{
	if (!_strcmpi(arg2, "") || !_strcmpi(arg3, ""))
	{
		WriteChatf("Usage: /aaspend %s \"AA Name\" maxlevel", arg1);
		WriteChatf("        maxlevel can be a number or m or M for max available.");
	}
	else
	{
		for (const AAInfo& info : aaList)
		{
			if (ci_equals(arg2, info.name))
			{
				WriteChatf("MQ2AASpend :: Ability %s already exists", info.name.c_str());
				return;
			}
		}

		aaList.emplace_back(arg2, arg3);

		WriteChatf("MQ2AASpend :: Added %s levels of %s to ini", arg3, arg2);
		SaveINI();
	}
}

static void ProcessDeleteCommand(const char* arg1, const char* arg2, std::vector<AAInfo>& aaList)
{
	if (!_strcmpi(arg2, ""))
	{
		WriteChatf("Usage: /aaspend %s \"AA Name\"", arg1);
	}
	else
	{
		auto iter = std::find_if(aaList.begin(), aaList.end(), [&](const AAInfo& info) { return ci_equals(arg2, info.name); });

		if (iter != aaList.end())
		{
			aaList.erase(iter);

			WriteChatf("MQ2AASpend :: Deleted ability %s from ini", arg2);
			SaveINI();
		}
		else
		{
			WriteChatf("MQ2AASpend :: Abilty %s not found in ini", arg2);
		}
	}
}

void SpendCommand(PSPAWNINFO pChar, PCHAR szLine)
{
	CHAR szArg1[MAX_STRING] = { 0 };
	CHAR szArg2[MAX_STRING] = { 0 };
	CHAR szArg3[MAX_STRING] = { 0 };
	GetArg(szArg1, szLine, 1);
	GetArg(szArg2, szLine, 2);
	GetArg(szArg3, szLine, 3);

	if (!_strcmpi(szArg1, ""))
	{
		ShowHelp();
		return;
	}

	if (!_strcmpi(szArg1, "debug"))
	{
		if (!_strcmpi(szArg2, "on"))
		{
			bDebug = true;
			DebugLogf("MQ2AASpend :: Debug enabled.");
			WriteChatf("MQ2AASpend :: Debug logfile: %s", GetDebugLogPath().c_str());
		}
		else if (!_strcmpi(szArg2, "off"))
		{
			if (bDebug)
				DebugLogf("MQ2AASpend :: Debug disabled.");
			bDebug = false;
		}
		else if (!_strcmpi(szArg2, "clear"))
		{
			ClearDebugLog();
			WriteChatf("MQ2AASpend :: Debug logfile cleared: %s", GetDebugLogPath().c_str());
		}
		else if (!_strcmpi(szArg2, "path"))
		{
			WriteChatf("MQ2AASpend :: Debug logfile: %s", GetDebugLogPath().c_str());
		}
		else
		{
			WriteChatf("Usage: /aaspend debug on|off|clear|path");
		}

		WriteChatf("MQ2AASpend :: Debug is %s", bDebug ? "\agON\ax" : "\arOFF\ax");
		return;
	}

	if (!_strcmpi(szArg1, "costcache"))
	{
		WriteAACostCache();
		WriteChatf("MQ2AASpend :: AA cost cache refreshed: %s", GetAACostCachePath().c_str());
		return;
	}

	if (!_strcmpi(szArg1, "status"))
	{
		ShowStatus();
		return;
	}

	if (!_strcmpi(szArg1, "load"))
	{
		LoadINI();
		return;
	}

	if (!_strcmpi(szArg1, "save"))
	{
		SaveINI();
		return;
	}

	if (!_strcmpi(szArg1, "brute"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend brute on|off|now");
			WriteChatf("       This will auto buy AA's based on ini values on next ding, or now if now specified.");
		}
		else if (!_strcmpi(szArg2, "on"))
		{
			WriteChatf("MQ2AASpend :: Brute Force Mode Enabled -- Buying AA's in order of appearance, from class to general, then special");
			bBruteForce = true;
			bBruteForceBonusFirst = false;
			bAutoSpend = false;
		}
		else if (!_strcmpi(szArg2, "off"))
		{
			WriteChatf("MQ2AASpend :: Brute Force Mode Disabled");
			bBruteForce = false;
		}
		else if (!_strcmpi(szArg2, "now"))
		{
			WriteChatf("MQ2AASpend :: Brute Force Mode Active Now");
			doBruteForce = 2;
		}

		return;
	}

	if (!_strcmpi(szArg1, "bonus"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend bonus on|off|now");
			WriteChatf("       This will auto buy AA's based on bonusAA first, in other words, from expansions post autogrant only.");
		}
		else if (!_strcmpi(szArg2, "on"))
		{
			WriteChatf("MQ2AASpend :: Brute Force Bonus Mode Enabled -- Buying AA's from expansions post autogrant only.");

			bBruteForce = false;
			bBruteForceBonusFirst = true;
			bAutoSpend = false;
		}
		else if (!_strcmpi(szArg2, "off"))
		{
			WriteChatf("MQ2AASpend :: Brute Force Bonus Mode Disabled");

			bBruteForceBonusFirst = false;
		}
		else if (!_strcmpi(szArg2, "now"))
		{
			WriteChatf("MQ2AASpend :: Brute Force Bonus Mode Active Now");

			doBruteForceBonusFirst = 2;
		}

		return;
	}

	if (!_strcmpi(szArg1, "auto"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend auto on|off|now");
			WriteChatf("       This will auto buy AA's based on ini values on next ding, or now if now specified.");
		}
		else if (!_strcmpi(szArg2, "on"))
		{
			WriteChatf("MQ2AASpend :: Auto Mode Enabled -- Buying AA's based on ini values");

			bAutoSpend = true;
			bBruteForce = false;
			bBruteForceBonusFirst = false;
			bAutoSpendNow = false;
			SaveINI();
		}
		else if (!_strcmpi(szArg2, "off"))
		{
			WriteChatf("MQ2AASpend :: Auto Mode Disabled");

			bAutoSpend = false;
			bAutoSpendNow = false;
			SaveINI();
		}
		else if (!_strcmpi(szArg2, "now"))
		{
			WriteChatf("MQ2AASpend :: Auto Mode Active Now");
			RefreshINI();

			if (!vAAList.empty())
			{
				doAutoSpend = true;
				bAutoSpendNow = true;
			}
		}

		return;
	}

	if (!_strcmpi(szArg1, "bank"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend bank #");
			WriteChatf("       This will keep a minimum of # aa points before auto spending or brute force spending.");
		}
		else
		{
			iBankPoints = GetIntFromString(szArg2, 0);
			WriteChatf("MQ2AASpend :: Banking %d points", iBankPoints);

			SaveINI();

			if (bAutoSpend && pLocalPC && GetPcProfile()->AAPoints >= iBankPoints)
			{
				doAutoSpend = true;
				DebugLogf("MQ2AASpend :: Bank threshold already met after update: Have=%d Need=%d. Scheduling purchase pass.",
					GetPcProfile()->AAPoints, iBankPoints);
			}
		}

		return;
	}

	if (!_strcmpi(szArg1, "order"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend order \ag#####\ax where ##### is 5 numbers representing 5 tabs in the aa window.");
			WriteChatf("       General is 1 ArchType is 2 Class is 3 Special is 4 and Focus is 5.");
			WriteChatf("       Example: Lets say you want to spend in this order: Class, Focus, Archtype, General and last Special, you would then type: \ay/aaspend order 35214\ax");
		}
		else
		{
			SpendOrderString = szArg2;
			WriteChatf("MQ2AASpend :: New Spend Order is %s", szArg2);

			UpdateSpendOrder();
			SaveINI();
		}

		return;
	}

	if (!_strcmpi(szArg1, "add"))
	{
		ProcessAddCommand(szArg1, szArg2, szArg3, vAAList);
		return;
	}

	if (!_strcmpi(szArg1, "del"))
	{
		ProcessDeleteCommand(szArg1, szArg2, vAAList);
		return;
	}

	if (!_strcmpi(szArg1, "buy"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend buy \"AA Name\"");
		}
		else if (pLocalPlayer)
		{
			int index = GetAAIndexByName(szArg2);

			if (CAltAbilityData* pAbility = GetAAById(index, pLocalPlayer->Level))
			{
				BuySingleAA(pAbility);
			}
		}

		return;
	}

#if HAS_MERCENARY_AA
	//============================================================================
	// Merc Commands

	if (!_strcmpi(szArg1, "mercbrute"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend mercbrute on|off|now");
			WriteChatf("       This will auto buy Merc AA's based on ini values on next ding, or now if now specified.");
		}
		else if (!_strcmpi(szArg2, "on"))
		{
			std::string displayString = GetMercSpendOrderDisplayString();

			WriteChatf("MQ2AASpend :: Merc Brute Force Mode Enabled -- Buying Merc AA's in order of appearance: %s", displayString.c_str());
			bBruteForceMerc = true;
			bAutoSpendMerc = false;
		}
		else if (!_strcmpi(szArg2, "off"))
		{
			WriteChatf("MQ2AASpend :: Merc Brute Force Mode Disabled");
			bBruteForceMerc = false;
		}
		else if (!_strcmpi(szArg2, "now"))
		{
			WriteChatf("MQ2AASpend :: Merc Brute Force Mode Active Now");
			doBruteForceMerc = 2;
		}

		return;
	}

	if (!_strcmpi(szArg1, "mercauto"))
	{
		if (!_strcmpi(szArg2, ""))
		{
			WriteChatf("Usage: /aaspend mercauto on|off|now");
			WriteChatf("       This will auto buy Merc AA's based on ini values on next ding, or now if now specified.");
		}
		else if (!_strcmpi(szArg2, "on"))
		{
			WriteChatf("MQ2AASpend :: Merc Auto Mode Enabled -- Buying Merc AA's based on ini values");

			bAutoSpendMerc = true;
			bBruteForceMerc = false;
		}
		else if (!_strcmpi(szArg2, "off"))
		{
			WriteChatf("MQ2AASpend :: Merc Auto Mode Disabled");

			bAutoSpendMerc = false;
		}
		else if (!_strcmpi(szArg2, "now"))
		{
			WriteChatf("MQ2AASpend :: Merc Auto Mode Active Now");

			if (!vMercAAList.empty())
			{
				doAutoSpendMerc = true;
			}
		}

		return;
	}

	if (!_strcmpi(szArg1, "mercadd"))
	{
		ProcessAddCommand(szArg1, szArg2, szArg3, vMercAAList);
		return;
	}

	if (!_strcmpi(szArg1, "mercdel"))
	{
		ProcessDeleteCommand(szArg1, szArg2, vMercAAList);
		return;
	}

	if (!_strcmpi(szArg1, "mercbuy"))
	{
		if (szArg2[0] == 0)
		{
			WriteChatf("Usage: /aaspend mercbuy \"AA Name\"");
		}
		else if (pLocalPlayer)
		{
			// Find AA By Name
			const MercenaryAbilitiesData* mercAbility = FindMercAbilityByName(szArg2);
			if (mercAbility)
				mercAbility = pMercAltAbilities->GetFirstUnownedAbilityByGroupId(mercAbility->GroupID);
			if (mercAbility)
			{
				// Ability exists, lets try to grab it.
				BuySingleMercAA(mercAbility);
			}
		}

		return;
	}

	if (!_strcmpi(szArg1, "mercorder"))
	{
		if (szArg2[0] == 0)
		{
			WriteChatf("Usage: /aaspend mercorder \ag#####\ax where ##### is 5 numbers representing 5 types of mercenary abilities.");
			WriteChatf("       General = 1");
			WriteChatf("       Tank = 2");
			WriteChatf("       Healer = 3");
			WriteChatf("       Melee DPS = 4");
			WriteChatf("       Caster DPS = 5");
			WriteChatf("    Example: Healer, Tank, Melee DPS, Caster DPS, General is \ay/aaspend order 32451\ax");
			WriteChatf("Usage: /aaspend mercorder auto on|off");
			WriteChatf("    Turning this option on will always prioritize the type of your active mercenary first.");
			return;
		}

		if (ci_equals(szArg2, "auto"))
		{
			if (ci_equals(szArg3, "on"))
			{
				WriteChatf("MQ2AASpend :: Merc Order Auto Mode Enabled -- Merc AA Priority will prefer your active mercenary.");

				bUseCurrentMercType = true;
				UpdateSpendOrder();
				SaveINI();
			}
			else if (ci_equals(szArg3, "off"))
			{
				WriteChatf("MQ2AASpend :: Merc Order Auto Mode Disabled -- Merc AA Priority will only follow your saved order.");

				bAutoSpendMerc = false;
				UpdateSpendOrder();
				SaveINI();
			}
		}
		else
		{
			MercSpendOrderString = szArg2;
			WriteChatf("MQ2AASpend :: New Spend Order is %s", szArg2);

			UpdateMercSpendOrder();
			SaveINI();
		}

		return;
	}
#endif // HAS_MERCENARY_AA

	ShowHelp();
}

// This is called every time MQ pulses
PLUGIN_API void OnPulse()
{
	static int Pulse = 0;

	if (GetGameState() != GAMESTATE_INGAME)
		return;

	// Process every 50 pulses
	if (++Pulse < 50)
		return;

	Pulse = 0;

	// Do not rely solely on chat text to detect AA gains. Emulator servers can
	// format AA gain messages differently. Detect an increase in the character's
	// AA point total and schedule Auto Spend whenever the bank threshold is met.
	int currentAAPoints = GetPcProfile()->AAPoints;
	if (iLastAAPoints < 0)
	{
		iLastAAPoints = currentAAPoints;
	}
	else
	{
		if (currentAAPoints > iLastAAPoints && bAutoSpend && currentAAPoints >= iBankPoints)
		{
			doAutoSpend = true;
			DebugLogf("MQ2AASpend :: AA points increased from %d to %d and bank threshold %d is met. Scheduling purchase pass.",
				iLastAAPoints, currentAAPoints, iBankPoints);
		}
		iLastAAPoints = currentAAPoints;
	}

	//----------------------------------------------------------------------------
	// AA Actions

	if (doBruteForce != 0)
	{
		BruteForcePurchase(doBruteForce, false);
		doBruteForce = 0;
	}

	if (doBruteForceBonusFirst != 0)
	{
		BruteForcePurchase(doBruteForce, true);
		doBruteForceBonusFirst = 0;
	}

	if (doAutoSpend)
	{
		SpendAAFromINI();
		doAutoSpend = false;
		bAutoSpendNow = false;
	}

#if HAS_MERCENARY_AA
	//----------------------------------------------------------------------------
	// Merc AA Actions

	if (doBruteForceMerc != 0)
	{
		BruteForcePurchaseMercAA(doBruteForceMerc);
		doBruteForceMerc = 0;
	}

	if (doAutoSpendMerc && !vMercAAList.empty())
	{
		SpendMercAAFromINI();
		doAutoSpendMerc = false;
	}
#endif // HAS_MERCENARY_AA
}

PLUGIN_API bool OnIncomingChat(const char* Line, DWORD Color)
{
	if ((strstr(Line, "You have gained") && strstr(Line, "ability point") && strstr(Line, "You now have")) || strstr(Line, "You have reached the AA point cap"))
	{
		if (bBruteForce)
			doBruteForce = 1;
		if (bBruteForceBonusFirst)
			doBruteForceBonusFirst = 1;
		if (bAutoSpend)
			doAutoSpend = true;

#if HAS_MERCENARY_AA
		if (bBruteForceMerc)
			doBruteForceMerc = 1;
		if (bAutoSpendMerc && !vMercAAList.empty())
			doAutoSpendMerc = true;
#endif // HAS_MERCENARY_AA
	}

	if (strstr(Line, "Welcome to level"))
	{
		if (bBruteForce)
			doBruteForce = 1;
		if (bBruteForceBonusFirst)
			doBruteForceBonusFirst = 1;
#if HAS_MERCENARY_AA
		if (bBruteForceMerc)
			doBruteForceMerc = 1;
#endif // HAS_MERCENARY_AA
		if (bAutoSpend)
			doAutoSpend = true;
	}

	return 0;
}

PLUGIN_API void InitializePlugin()
{
	DebugSpewAlways("Initializing MQ2AASpend");
	AddCommand("/aaspend", SpendCommand);
	ShowHelp();
}

PLUGIN_API void ShutdownPlugin()
{
	DebugSpewAlways("Shutting down MQ2AASpend");
	RemoveCommand("/aaspend");
}
