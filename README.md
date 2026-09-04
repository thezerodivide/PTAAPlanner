# PTAAPlanner

PTAAPlanner is a Project Triune AA planning tool for MacroQuest.

It allows you to build a prioritized AA purchase list and hand that list off to MQ2AASpend for automatic purchasing.

## Requirements

- Project Triune
- Latest MacroQuest RoF2 build
- PTAAPlanner Lua script
- Triune-compatible MQ2AASpend build included with this repository

## Installation

For most users, download the latest release ZIP and extract the files into your MacroQuest directory.

The release ZIP includes:

- `aaplanner.lua`
- `MQ2AASpend.dll`

Place them in the appropriate MacroQuest folders if installing manually:

```text
aaplanner.lua
-> MacroQuest\lua\

MQ2AASpend.dll
-> MacroQuest\plugins\
```

## Usage

Run PTAAPlanner with:

```text
/lua run aaplanner
```

Use the PTAAPlanner window to select and prioritize the AAs you want to purchase.

When your list is ready:

1. Click **Write MQ2AASpend List**
2. Click **Enable Auto Spend**

PTAAPlanner will write the selected AAs into the MQ2AASpend configuration and enable automatic AA spending.

## Project Triune MQ2AASpend Compatibility

PTAAPlanner uses MQ2AASpend to perform the actual AA purchases.

The standard MQ2AASpend plugin assumes that an Alternate Advancement ability is fully trained when its MacroQuest AA data reports:

```text
CurrentRank == MaxRank
```

Project Triune does not always expose AA rank data this way.

For example, an untrained single-rank ability may appear in the EverQuest AA window as:

```text
0/1
```

while MacroQuest reports the corresponding AA record as:

```text
CurrentRank = 1
MaxRank = 1
```

The upstream MQ2AASpend logic can therefore incorrectly classify some available Project Triune AAs as already maxed and skip them.

## Included Triune-Compatible MQ2AASpend

This repository includes a modified version of `MQ2AASpend.cpp` designed to work correctly with Project Triune's AA data.

Instead of using:

```cpp
CurrentRank == MaxRank
```

as the authoritative indication that an AA is complete, the modified version relies on MacroQuest's:

```cpp
pAltAdvManager->CanTrainAbility(...)
```

check to determine whether the candidate AA rank can actually be purchased.

This preserves normal MQ2AASpend priority-list behavior while correctly handling Project Triune AA records.

The modified version has been tested with:

- Untrained single-rank abilities
- Partially trained multi-rank abilities
- Fully trained abilities
- Abilities blocked by level or prerequisites
- PTAAPlanner-generated AA lists

All tested cases behaved as expected.

## Building MQ2AASpend for Project Triune

Most users do not need to build MQ2AASpend themselves. A precompiled `MQ2AASpend.dll` is included in the release ZIP.

If you prefer to build it from source, clone the MacroQuest repository:

```powershell
git clone https://github.com/macroquest/macroquest.git
cd macroquest
git submodule init
git submodule update
```

Switch `eqlib` to the RoF2 emulator branch:

```powershell
git -C src\eqlib checkout emu-rof2
```

Verify the branch:

```powershell
git -C src\eqlib branch --show-current
```

It should report:

```text
emu-rof2
```

Generate the MQ2AASpend plugin project:

```powershell
cd plugins
.\mkplugin.exe MQ2AASpend
```

Add the generated `MQ2AASpend.vcxproj` to the MacroQuest solution.

Replace the generated `MQ2AASpend.cpp` with the Triune-compatible version included in this repository.

Build using:

```text
Configuration: Release
Platform: Win32
```

The resulting plugin DLL will normally be written to:

```text
macroquest\build\bin\release\plugins\MQ2AASpend.dll
```

Copy that DLL into the `plugins` directory of the MacroQuest installation you use for Project Triune.

## Testing MQ2AASpend

MQ2AASpend includes a debug mode that runs its AA-selection logic without actually issuing the purchase command.

You can test your generated list with:

```text
/aaspend debug on
/aaspend auto now
```

Review the output to confirm that the expected AA is selected.

When you are satisfied:

```text
/aaspend debug off
```

The plugin can then be used normally with PTAAPlanner's **Enable Auto Spend** button.

## Upstream MQ2AASpend

MQ2AASpend is originally developed and maintained by RedGuides:

https://github.com/RedGuides/MQ2AASpend

This repository only carries the Project Triune compatibility modification required for the AA data exposed by Triune.
