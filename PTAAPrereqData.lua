-- Project Triune AA prerequisite data
-- Generated directly from release-peq.sql: aa_ability, aa_ranks, aa_rank_prereqs
-- Do not hand-edit; regenerate from the authoritative Project Triune database dump.
return {
  schemaVersion = 1,
  -- PEQ aa_ranks.desc_sid -> db_str(type=4), keyed by AA ability ID.
  descriptionStrings = {
    [2] = "This ability raises your base Strength by 2 points for each ability level.",
    [7] = "This ability raises your base Stamina by 2 points for each ability level.",
    [12] = "This ability raises your base Agility by 2 points for each ability level.",
    [17] = "This ability raises your base Dexterity by 2 points for each ability level.",
    [22] = "This ability raises your base Intelligence by 2 points for each ability level.",
    [27] = "This ability raises your base Wisdom by 2 points for each ability level.",
    [32] = "This ability raises your base Charisma by 2 points for each ability level.",
    [37] = "This ability raises your base Save Vs Fire by 2 points for each ability level.",
    [42] = "This ability raises your base Save Vs Cold by 2 points for each ability level.",
    [47] = "This ability raises your base Save Vs Magic by 2 points for each ability level.",
    [52] = "This ability raises your base Save Vs Poison by 2 points for each ability level.",
    [57] = "This ability raises your base Save Vs Disease by 2 points for each ability level.",
    [62] = "This ability will slightly modify your base run speed. This modification does NOT stack with movement rate spell effects.",
    [68] = "This ability decreases your food consumption by 10, 25 and 50%.",
    [71] = "This ability increases the amount of air you can hold in your lungs 10%, 25%, 50, 75, and 100% percent.  Rank 6 grants you the permanent ability to breathe underwater and in airless environment.",
    [74] = "This ability increases the maximum that you can bind wound by 10% for each ability level.",
    [77] = "The first three ranks of this ability increase the maximum effectiveness of your healing spells by 2, 5, and 10%.  Additional ranks increase the maximum effectiveness of your healing by an additional 3% per rank.",
    [80] = "The first three ranks of this ability grant you a chance to score an exceptional heal at 3, 6, and 10%. Additional ranks up to rank 15 further increase the chance by 2% per rank. Rank 16+ increase this chance by 1% per rank. An exceptional heal doubles the healing value of the spell.",
    [83] = "This ability lowers the mana cost of spells by 5, 10, 15, and 20%.",
    [86] = "This ability increases the duration of beneficial spells that you cast. Ranks 1, 2, and 3 increase the duration by 5, 15, and 30% respectively. Each additional rank increases this duration by 20%.",
    [92] = "The three ranks of this ability give you a 2%, 4% and 7% chance to land critical hits with your direct damage spells. This ability also grants a non-stacking base amount of critical damage multiplier for classes that do not have one.",
    [98] = "The first three ranks of this ability make NPCs notice your magical activities 5, 10, and 20% less.  Additional ranks further enhance this effect.",
    [101] = "This ability makes it impossible for you to fizzle a spell. The first level affects all spells below level 20.  The second, on all spells below level 35.  The third, on all spells below level 52.",
    [104] = "This ability reduces the casting time of beneficial spells that have a duration longer than instant and a cast time greater than three seconds.  The ability levels reduce these casting times by 10%, 25%, and 50%.",
    [107] = "This ability increases your maximum hitpoints by 2, 5, and 10% for the first three ranks, and one additional percent for each rank after that.  (The percentages are based off of your base hitpoints, which include stamina and stamina effects.)",
    [110] = "This ability raises your natural regeneration by one point per ability level.",
    [113] = "This ability increases your chance to land a critical hit.  Non-Warriors will nearly match the original critical hit abilities of Warriors, while Warriors will remain significantly ahead of other classes.",
    [116] = "This ability grants you a resistance bonus to fear type spells of 5, 10, and 25 percent. It also increases the chance of breaking fear earlier.",
    [119] = "This ability gives you a chance to finish off an NPC that is below 10% health and fleeing with a single blow.  Additional ranks increase the maximum level of affected NPC.  Rank 1: level 50, Rank 2: level 52, Rank 3: level 54, Rank 4: level 56, Rank 5: level 58, Rank 6: level 60, Rank 7: level 61, Rank 8: level 63, Rank 9: Level 65, Rank 10: level 66, Rank 11: level 68, Rank 12: level 70, Rank 13: Level 71, Rank 14: Level 73, Rank 15: Level 75. Rank 16: Level 76. Rank 17: 78. Rank 18: 80. Rank 19: 82. Rank 20: 84. Rank 21: 86. Additional ranks increase this limit by 1 level per rank. (Non-Warriors must first train one level of Combat Fury to use this ability.)",
    [122] = "Each rank boosts melee damage mitigation. The first three ranks increase it by by 2, 5, and 10%. Ranks four through eight add 3% each. Each rank after adds 2% for a total of 45% at rank 18.",
    [125] = "Each rank boosts your melee damage avoidance. The first three ranks boost it by 2, 5 and 10%.  Ranks four through eight add 3% each. Ranks nine through eleven add 1% each. Ranks twelve and thirteen add 2% each. Ranks fourteen through sixteen add 1% each. The final two ranks add 2% each. All ranks total a 39% increase.",
    [128] = "This ability turns the next group buff that you cast into a beneficial area effect spell, hitting everyone within its radius, at the cost of doubling the spell's mana usage. /alt activate 35",
    [129] = "This ability allows you to provide a resurrection that restores 100% experience, all hit points and mana, and causes no adverse resurrection effects.",
    [130] = "This ability allows you to become invisible to the undead, nearly at will, without the need to memorize a spell.",
    [131] = "When activated, Celestial Regeneration heals all group members within range. The effect lasts for 48s and heals 250 each tick at rank one, increasing steadily to 550 at rank nine. /alt activate 38",
    [132] = "This ability gives you the ability to cast a Divine Aura spell on a Player target, temporarily rendering the target invulnerable. /alt activate 39",
    [136] = "This ability allows you to cast a spell that cures most ailments. Rank 2 doubles the range of the spell. /alt activate 41",
    [137] = "This ability reduces the casting time on your evacuation and succor spells by 10%, 25%, and 50%.",
    [140] = "This ability gives you the ability to cast an extremely fast-casting, no mana cost evacuation or succor spell. /alt activate 43",
    [144] = "This ability reduces the chance that a rooted NPC will be freed by your damage spells by 50%.",
    [145] = "This ability gives you the chance to permanently charm any NPC which is either below level 47, or considers Light Blue to the caster. You may not have an animation active at the same time as dire charm, but may use the pets, charms, and even dire charms of other classes. /alt activate 46",
    [146] = "This ability will give the caster a new, massive Cannibalize spell. The first rank exchanges 1924 health for 1066 mana while the second exchanges 4057 health for 2248 mana. /alt activate 47",
    [147] = "This ability reduces the casting time of many beneficial spells that have a duration by 10%, 25%, and 50%.",
    [150] = "This ability reduces your chances of failing alchemy combinations by 10%, 25%, and 50%.",
    [153] = "This ability turns you into a Rabid Bear, boosting all of your offensive capabilities. The first rank adds 60 cold resist, 100 STR and DEX, 50 ATK, a 50 heal over time, a reduction to the delay in weapon attacks, and a 15 chance to double attack, each increasing with each rank. /alt activate 50",
    [155] = "This ability will summon an improved familiar that is an upgrade from the greater familiar. This improved familiar is higher in level, has more hit points, and is very resistant to all spells. The familiar provides 25 to all resists, an increase to critical spell damage, 6 mana regen per tick, see invisible, 200 maximum mana, and an incrase to casting level of 9 (which primarily affects target resist chance.) /alt activate 52",
    [156] = "This ability gives you an instant-cast self gate spell to the Nexus. /alt activate 53",
    [158] = "This ability allows you to zone without losing your current illusion.",
    [159] = "This ability reduces your chance of failing jewelcraft combinations by 10%, 25%, and 50%.",
    [162] = "This ability allows you to recover up to 10,000 points of mana nearly instantly. /alt activate 57",
    [163] = "This ability allows you to cast a quick healing spell on your pet.  /alt activate 58",
    [167] = "This ability allows you to cast a buff on your pet that will cause it to go berserk, doing increased damage. Lasts for 2 minutes. The first rank adds 300 AC, 110% attack speed, 20 STR, 2 flurry chance, 200 ATK, 10 hit chance, and a 110 damage modifier. Subsequent ranks increase the bonuses by 50, 10, 5, 2, 150, 10, and 10 respectively. /alt activate 60",
    [168] = "This ability will allow you to turn into a fire elemental, granting innate benefits of the form. Ranks 4 and above will give your fire spells a chance to proc a damage increasing buff on your group, each rank will increase the chance that the buff will proc. /alt activate 61",
    [171] = "This ability will allow you to turn into a water elemental, granting increased mana regeneration with each additional rank. /alt activate 62",
    [174] = "This ability will allow you to turn into an earth elemental, granting innate benefits of the form. Ranks 4 and above will give your detrimental spells a chance to proc an absorb damage buff on your group, each rank will increase the chance that the buff will proc. /alt activate 63",
    [177] = "This ability will allow you to turn into a air elemental, granting innate benefits of the form. Ranks 4 and above will give your detrimental spells a chance to stun their target, each rank increasing the chance the stun will proc. /alt activate 64",
    [182] = "This ability will prevent components used in the summoning of pets from being expended.",
    [183] = "This ability allows you to cast a no-resist damage over time spell equal to that of 40% of your maximum hitpoints per tick for 10 ticks. /alt activate 68",
    [184] = "This ability allows you to cast an AE low resist mesmerization spell effective against the undead. Works on enemies up to level 55 and lasts for 36s.",
    [185] = "Allows you to cast an AE low resist fear spell. /alt activate 70",
    [186] = "This ability allows you to turn most meat or body part items into bone chips.  You must hold the item or stack on your cursor. *Warning* This ability will use magical or \"no trade\" items if they are held on the cursor. /alt activate 71",
    [187] = "This ability allows you to cast a no component summon corpse spell. /alt activate 72",
    [188] = "Training in this ability gives you a new, fast-casting spell that has the chance to interrupt NPCs up to level 70 for rank 1, level 75 for rank 2, and level 80 for rank 3. /alt activate 73",
    [190] = "This ability will cause your critical hits to inflict greatly improved damage versus the undead.  Additional ranks increase both the damage you cause and the chance for it to occur.",
    [193] = "This ability will allow you to sacrifice up to half of your total mana pool in order to invoke a massive group heal.",
    [194] = "This ability provides you with the power to call the ultimate holy steed to your side.",
    [195] = "This ability will make you permanently immune to fear spells.",
    [196] = "This ability will allow you to use your Bash skill while wielding any 2-handed weapon.",
    [197] = "This ability allows you to become invisible, nearly at will, without the need to memorize a spell. /alt activate 80",
    [198] = "This ability increases your chance to use dual wield successfully.",
    [199] = "This ability increases your archery damage 30, 60, 100, and 100%.",
    [205] = "This ability provides you a never-ending supply of arrows.",
    [206] = "This ability provides you with the power to call the ultimate unholy steed to your side.",
    [208] = "This ability gives you a life tap harm touch that can be used in addition to your existing harm touch ability. /alt activate 87",
    [210] = "Each rank in this ability gives you increased damage off of the lifetap procs that result from your self buffs.",
    [213] = "This ability allows for improved use of all instrument types, adding 20 to each of your instrument modifiers.",
    [225] = "This ability allows you to sing your songs at a higher apparent level.  Note: This does not allow you to sing songs that are actually higher than your level.",
    [230] = "Each rank of this ability increases the chance to perform a superior mend. The first three ranks add a 10% chance each, the fourth adds 38 percent to the chance, and the last two ranks add 8% more each, totaling an 84 percent chance at rank six.",
    [233] = "This ability removes all negative effects from your body except for fear, charm, and resurrection effects. This ability does not work when you are silenced. /alt activate 98",
    [237] = "This ability reduces your reuse time on feign death by 10%, 25%, and 50%.",
    [240] = "This ability gives you the chance to automatically perform a bonus flying kick on ripostes 25, 35, and 50% of the time.",
    [243] = "This ability will cause all NPCs to forget about you.  If you are out of immediate combat, this ability will also make you invisible similar to your hiding ability. /alt activate 102",
    [244] = "This ability reduces your chance of failing on a poison combination by 10%, 25%, and 50%. It also reduces the time to apply poison by 2.5 seconds per ability level. Once one point is applied to this ability, you will never again fail in poison application.",
    [247] = "The first three ranks of this ability will give you an increased chance to execute a double riposte 15, 35, and 50% of the time.  Additional ranks further increase this effect.",
    [254] = "This ability will remove all poisons from your body. /alt activate 107",
    [255] = "This ability will allow you to perform up to 2 additional attacks from your primary hand. The first rank adds a 7% chance, the second and third ranks adds 4% each, ranks four through nine add 2% each, and the final three ranks add 1% each, totaling 30% at rank 12.",
    [258] = "This ability will allow you to strike everything in a small radius. Each rank increases the number of strikes upon your enemies. /alt activate 109",
    [259] = "This ability will allow you to taunt everything in a small radius. /alt activate 110",
    [260] = "This ability will allow you to make your entire group immune to fear for 10 seconds per level of the ability. /alt activate 111",
    [263] = "This ability will give you increased healing ability per bandage by 10%, 25%, and 50%.",
    [267] = "Each rank of this ability gives you an increased chance to score a critical hit with your direct damage spells. Ranks one through three add 2% each, ranks four through eight add 1%, and ranks nine through eleven add 2%, totaling 17% at rank eleven.",
    [273] = "This ability augments Dragon Punch for human and drakkin monks and Tail Rake for iksars with the chance to automatically perform a Knockback.",
    [274] = "This ability will grant you the ability to cast an extremely low resistance Root-type spell. /alt activate 117",
    [275] = "This ability allows for specialization and improved use of your voice adding a 20 modifier to singing effects per rank.",
    [278] = "This ability will give you one additional point of mana and hit point regeneration.",
    [279] = "This ability will give you additional improvements in your Natural Durability, Avoidance Boost, and Mitigation Boost.",
    [280] = "This ability will reduce the reuse time on your sense and disarm trap skills.",
    [283] = "This ability will reduce the damage that you take from falling.",
    [286] = "This ability will reduce the amount of time that it takes you to memorize a song.",
    [287] = "This ability will allow you to do minimal backstab damage on your backstab attempt, even if you are not positioned behind the monster.",
    [288] = "This ability will allow you to give your pet a 'hold' command until explicitly told to attack. Usage: /pet hold. Pet Hold is now a state that your pet is either in or not. When your pet is in the hold state, your pet will only attack something when you tell it to, and your pet will continue to attack anything on its hate list after that point. Once the encounter is finished, your pet will automatically go back to a held state. If your pet is never told to exclusively attack anything, your pet will never attack anything, even if something is attacking it. This ability also grants the \"Greater Pet Hold\" command which forces your pet to not add anything to its hatelist unless specifically added by you when greater hold is activated. You can add a target to your pet's hatelist with either attack or qattack.",
    [289] = "Once you train this ability, you may imbue your pet with an attack that is reputed to slow an enemy's walking. Adds a 75DEX buff to your pets as well as a proc that applies a snare. Stacks with normal Spirit of line of proc buffs. /alt activate 126",
    [290] = "This ability gives Beastlords the power to send themselves into an animalistic frenzy, bent only on slaughter, for a brief period of time. This ability lasts for one minute and adds 250 ATK, 199 percent haste, and a hundred hands effect delay reduction. /alt activate 127",
    [291] = "This ability allows the Beastlord to share some of his natural attunement with his party in the form of health and mana. The first rank grants 200 health and 80 mana per tick, increasing by 22 and 20 per rank respectively. /alt activate 128",
    [412] = "Training with the sages and merchants of New Tanaan gives adventurers the chance to hone their crafting skills.  For each rank of this ability that you purchase, you are able to raise an additional trade skill past its Specialization level (200).  (This ability applies to Baking, Blacksmithing, Brewing, Fletching, Jewelcraft, Pottery, and Tailoring.)",
    [418] = "This ability raises the maximum that your statistics can be raised to, with items or spells, by 5 points per rank.",
    [423] = "The planes demand a certain hardiness of those who adventure within.  Each rank of this ability adds an additional 1.5% to your maximum hit points.  You gain the ability to train an additional rank at levels 61, 63, and 65.",
    [426] = "Those who have meditated on the Plane of Tranquility find themselves able to expand their capacity of both Insight and Intellect.  Each rank of this ability raises the maximum that you may raise your Intelligence and Wisdom by ten points.  You may train in this ability once each level, beginning at level 61.",
    [459] = "This ability grants its wielder the ability to cure their party of many afflictions, poisons, curses, and harmful magics. The first rank removes 9 curse, poison, and disease counters, increasing steadily up to removing 31 of each at rank nine. ",
    [462] = "This ability decreases the amount of time required between uses of Bestow Divine Aura by ten percent per rank. You may train in this ability once each level, upon reaching level 63.",
    [468] = "This ability decreases the amount of time required between uses of Purify Soul by ten percent per rank. You may train in this ability once each level, upon reaching level 63.",
    [471] = "This ability decreases the amount of time required between uses of Gather Mana by ten percent per rank. You may train in this ability once each level, upon reaching level 63.",
    [474] = "This ability decreases the amount of time required between uses of Rabid Bear by four minutes per rank. You may train in this ability once each level, upon reaching level 63.",
    [477] = "This ability decreases the amount of time required between uses of Exodus by ten percent per rank. You may train in this ability once each level, upon reaching level 63.",
    [480] = "The first three ranks of this ability decrease the amount of time required between uses of Strong Root by ten percent per rank.  Additional ranks further decrease the time required between uses of Strong Root and also increase the strength of your roots making them less likely to break during combat.",
    [483] = "This ability decreases the amount of time required between uses of Mend Companion by ten percent per rank. You may train in this ability once each level, upon reaching level 63.",
    [489] = "This ability decreases the amount of time required between uses of Area Taunt by ten percent per rank. You may train in this ability once each level, upon reaching level 63 three times. Additional ranks begin at level 68.",
    [492] = "This ability decreases the amount of time required between uses of Rampage by ten percent per rank.",
    [495] = "Ranks 1, 2, and 3 of this ability decreases the amount of time required between uses of Purify Body by 3 minutes per rank. Additional ranks decrease this time by 2 minutes per rank.",
    [498] = "This ability decreases the amount of time required between uses of Escape by ten percent per rank.",
    [501] = "This ability decreases the amount of time required between uses of Purge Poison by ten percent per rank. You may train in this ability once each level, upon reaching level 63.",
    [507] = "Using this ability balances the health of your group such that all group members end up with the same amount of damage taken.  The first rank does so at a 20% penalty to the average, the second rank does so at a 10% penalty, and the final rank does so at no penalty. /alt activate 169",
    [510] = "Developed by the denizens of Tranquility as a deterrent to potential attackers, this ability will shield you with a large damage barrier of thorns that lasts for a limited number of hits. The first rank applies a 350 point damage shield, the second 500, and the third 650. /alt activate 170",
    [513] = "This ability causes your target to succumb to a sudden, violent attack, after which they are frequently unable to move for a time.  Each rank of this ability increases the amount of time that the victim remains immobile.  You may train the ranks of this ability at or after levels 61, 63, 65, 76, 78, 80, 81, 83 and 85. /alt activate 171",
    [516] = "This ability gathers streams of additional mana into your being, restoring a large portion of your mana pool. /alt activate 172",
    [517] = "This ability provides Enchanters with an additional line of defense in the form of an instant cast rune effect.  The first rank provides a 500 point rune, with each rank increasing by 500 up to rank 3, then 300 points per rank to a total of 3000 at rank eight. /alt activate 173",
    [520] = "This ability calls a loyal servant into being who will repeatedly hurl fire at your target.  The first three ranks of this ability increase the amount of time that the servant is able to remain by your side (45, 70, and 90 seconds).  Additional ranks of this ability increases the damaging capabilities of the servant. /alt activate 174",
    [523] = "This ability calls the shade of a nearby corpse back to life to serve the Necromancer.  The soulless abomination will fight the target, until called back to the afterlife some time later.  The slave summoned by the first rank of this ability serves for 60 seconds, and each increasing rank adds 15 additional seconds.  You may train the ranks of this ability at or after levels 61, 63, and 65.",
    [526] = "This ability grants the summoner the ability to suspend and recall their existing pet at will, provided they remain in their current zone.  The first rank suspends the pet at its current health only, while the second rank suspends the pet with all of its beneficial effects as well as its weapons and armor.  You may cast a second pet while your first pet is Suspended.  You may train the first rank upon reaching level 62 and the second rank upon reaching level 64.",
    [528] = "This ability calls a number of spirit companions into existence directed at a target.  The companions attack the target without question until they are called back to their home plane 60 seconds later.  Additional ranks increase the strength of these spirit companions. /alt activate 177",
    [534] = "This ability invokes the direct blessing of your deity upon all of those nearby.  All group members in range are healed 1125 hit points. Additional ranks increase the healing power of this by 375.",
    [537] = "This ability further increases the amount of healing provided by a single bandage while binding wounds.  The two ranks of this ability may be trained at or after levels 63 and 64.",
    [545] = "This ability transforms you into an exceptionally bloodthirsty wolf that attacks with lightning speed for 48s. Rank one adds 5 overhaste and 100 ATK, increasing to 20 and 160 at rank four, which also adds a 150 point heal over time. These bonuses increase steadily to rank seven which adds a 15 damage modifier as well. The final rank adds 25 overhaste, 200 ATK, a 550 point heal over time, and a 25 damage modifier. /alt activate 184",
    [548] = "For a brief time, you are able to commune with the woodland spirits who provide your party with exceptional regenerative abilities and a protective shield of armor and thorns. Lasts for 30s. The first rank adds a 250 point heal, 25 point damage shield, and 100 AC. Each rank boosts the bonuses by 25, 15, and 30 respectively. /alt activate 185",
    [551] = "Each rank in this ability improves your chance of performing a double attack in any given combat round. This is not a skill cap increase but instead a flat 3% chance granted per rank.",
    [556] = "This ability does not grant double attack skill or skillcap but instead grants a 3% chance per rank to perform a double attack in any given combat round.",
    [561] = "This ability grants you an increased chance of performing a double attack in any given combat round. The first three ranks add a 3% chance each, the fourth rank adds 11%, and the last two ranks add 2% more, totaling 24% at rank six.",
    [564] = "Each rank of this ability grants you an increased chance of performing a double attack in any given combat round. The first three ranks add 3% each, the fourth adds 11%, and the fifth and six ranks add 2% more each. Total bonus for all ranks is 24%.",
    [567] = "Each rank of this ability reduces the chance that a rooted NPC will be freed by your damaging spells. The first rank provides a 12% increases of the protection provided by Enhanced Root, the second increases the protection by 13% and the third rank by 15%.",
    [574] = "This ability allows you to instruct your pet to feign death via the '/pet feign' command.  Three ranks of this skill are available, causing your pet to succeed 25%, 50%, and 75% of the time, respectively.  You gain the ability to train an additional rank at levels 61, 63, and 65.",
    [577] = "The most devout find that their calls are answered with much greater frequency. This ability grants your Death Pact-type spells a second chance to successfully heal their target.  Additional ranks of this ability cause said spells to do a portion of their healing value even on a complete failure.  You gain the ability to train an additional rank at levels 61, 63, and 65.",
    [580] = "Progressive ranks of this ability grant you finer control over your animations. At its initial level, you are allowed to give your animations \"Guard\" and \"Follow\" commands. At the second rank, \"Attack\" and \"Queue Attack\" commands. At the final rank, \"Report Health\", \"Who Leader\", \"Back off\", \"Stop\", \"Target Pet\", \"Taunt\", and \"Sit\" commands. You gain the ability to train an additional rank at levels 61, 63, and 65.",
    [583] = "Training in this ability shortens the time between uses of Divine Stun by seven seconds per rank.  The three ranks of this ability may be trained once each level for levels 63 and above.",
    [586] = "This extends your capacity to act as a living shield,   This ability adds twelve seconds per rank to the duration of your /shield.  You may train the ranks of this ability at or after levels 61, 63, and 65.",
    [589] = "The most advanced Shadow Knights can further enhance their Leech Touch ability.  Each rank of this ability increases the damage and healing done by Leech Touch.",
    [592] = "This ability allows you to bellow with a force that causes physical harm to your targetted foe as well as potentially interfering with their spell casting, stunning enemies of level 60 or blow. Additional ranks increase the highest level of NPC that you can stun with your Boastful Bellows by one per rank, and starting at rank five of this line your bellow will have the additional effect of reducing your target's resistance to fire, cold and magic. Subsequent ranks will increase this debuff at five rank intervals. The first rank deals about 400 base damage, and the damage increases 50 per rank. /alt activate 199",
    [593] = "This ability decreases the amount of time required between uses of Lay Hands. Each rank of this ability reduces the time between uses of Lay on Hands by 12 minutes. You gain the ability to train an additional rank at levels 61, 63, 65, and 76.",
    [596] = "This ability decreases the amount of time required between uses of Harm Touch and its upgrades. Each rank reduces the reuse time by 12 minutes. You gain the ability to train an additional rank at levels 61, 63, 65 and 76.",
    [599] = "This ability increases the chance of scoring an extra hit with all two-handed weapons. The first rank adds a 2% chance while each subsequent rank adds 3% to the chance, totaling 17% at rank six.",
    [602] = "Each rank in this ability increases the chance of scoring an extra hit with all two-handed weapons that you wield. The first rank adds a 2% chance, the second through sixth ranks add 3%, the seventh adds 10%, and the eighth and ninth ranks add 1% each, totaling a 29% chance at rank nine.",
    [605] = "This ability provides a previously unheard of level of stealth.  The Rogue is able to draw shadows about himself so completely, even creatures that are normally not fooled by such trickery are frequently unable to see him. You may train in this ability upon reaching level 63.",
    [606] = "This ability grants you a chance to hide or evade while moving.  Each rank provides an increasing chance. You may train in this ability once each level after reaching level 61.",
    [611] = "Under the tutelage of Wu, Monks are able to hone their skills to the point of being able to execute a second and sometimes even third strike when scoring a hit with their special attacks. Rank 1 provides 100 DoubleSpecialAttack for monk skills, each subsequent rank adds 50 up to 350 at rank six. At 100 the first bonus attack is always guaranteed, then DoubleSpecialAttack is divided by 4 and tested again, as such no second attack is guaranteed until 400 DoubleSpecialAttack. Each subsequent guarantee would require four times the previous DoubleSpecialAttack value.",
    [616] = "This ability calls an assault of elemental minions into existence directed at a target, with each rank increasing the power of said minions. The minions attack the target without question until they are called back to their plane 30 seconds later.  The initial rank of this ability calls five elementals. Ranks 2 and 3 add two elementals each. Ranks 3 and 4 only add strength to the summoned minions. Ranks 5 and 6 increases the time the elementals stay in this plane by 15 seconds each. Each rank lowers the cooldown to a final cooldown of two minutes at rank six. /alt activate 207",
    [619] = "This ability calls a number of swords of Xuzl into existence directed at a target.  The swords attack the target until they dissipate 45 seconds later.  The initial rank of this ability calls two swords.  Additional ranks increase the overall power of the ability. /alt activate 208",
    [622] = "This ability reduces the time between which you may attempt to hide or evade by one second per rank.  You may train the ranks of this ability at or after levels 61, 62, and 63.",
    [625] = "Years of experimentation have led to the discovery of how to gain additional performance (in the form of critical spell hits) from weapons and other items. The first three ranks add 3% to the chance while the next three ranks add 2% each, totaling 15% for 6 ranks. This ability also grants a non-stacking base amount of critical damage multiplier for classes that do not have one.",
    [628] = "This ability allows Bards to run at previously unheard of speeds, increasing your run speed cap by 5 and 10 respectively.",
    [630] = "This ability will cause all NPCs to forget about you.  If you are out of immediate combat, this ability will also make you invisible.  This ability is usable any time that you have 250 mana. /alt activate 212",
    [631] = "Studying one's opponent for weaknesses provides the knowledge and ability to pierce through advanced defenses.  Each rank of this ability grants an increasing chance of bypassing an opponent's special defenses, such as dodge, block, parry, and riposte. Ranks one through three add a 15% chance each, with each subsequent rank adding 5%, totaling 75% at rank 9.",
    [634] = "This ability grants a chance that the healing effect on your lifetaps will provide an exceptional amount of healing. The first two ranks add 3% each, the third rank adds 4%, and each subsequent rank adds another 2%, totaling 26% at rank eleven.",
    [637] = "Each rank in this ability increases your chance to score a critical hit with your direct damage spells. The first three ranks add 2% each, the second three ranks add 1% each, and the final three ranks add 2% each.",
    [643] = "This ability allows you to project your innate talent with illusions upon others.  (Activating this ability on a targeted group member causes your next illusion spell to affect that target.) /alt activate 217",
    [644] = "This ability provides you the chance of instantly killing an opponent (humanoid only). Rank one allows targets of level 50 or below, with each rank adding 2 to the maximum level affected, up to level 62 at rank seven.",
    [645] = "This ability provides you an additional means of entrapping, or more specifically, ensnaring an opponent. Additional ranks reduce the ability of your enemy to resist the effects.",
    [649] = "This ability adds strength to your charm spells.  Victims of your charm spells are less likely to break out of their charms early.  ",
    [652] = "This ability grants a chance to endure what would otherwise be a stunning blow, from any angle, without being stunned. Rank one adds a 50% chance while the next two ranks increase that chance by 25% each, totaling 100%.",
    [655] = "This ability reduces the casting time of your summoning spells by 10%, 25%, and 50%.",
    [658] = "This ability increases your natural mana regeneration by 1 point per ability level.",
    [661] = "This ability raises your regeneration ability by 1 point per ability level up to rank 30, and 5 points per level for ranks 31 and up.",
    [665] = "Each rank of this ability increases the range of your songs.  Rank 1 increases it by 10%, rank 2 by 15%, rank 3 by 25%, rank 4 by 30%, rank 5 by 35%, and rank 6 by 40%.",
    [671] = "This ability will increase the amount of mana returned to you when reclaiming your pet.",
    [678] = "Each rank in this ability improves the efficiency with which you store your gear, effectively reducing your overall weight.",
    [683] = "This ability raises your natural endurance regeneration by 1 point per ability level.",
    [686] = "Through years of practice, you develop a close bond with your weapons.  This affinity enhances the performance of your weapons by increasing the rate that they trigger effects.",
    [691] = "This ability allows you to advance a second arcane specialization by 50 points.  After acquiring this ability, the next specialization to go over your current cap becomes your secondary forte.",
    [692] = "Your highly developed concentration creates the possibility of continuing to cast spells while stunned.  Increased ranks in this ability increase the chance that your spells will not be interrupted by stuns.",
    [695] = "Each rank in this ability increases your tracking skill maximum by 10.",
    [718] = "Transforms beastlords into the likeness of their warders for 30s, greatly increasing their destructive power. The first rank adds a 50 damage modifier while the second and third ranks add 25 more each. All ranks also reduce spell resist chance by 20. /alt activcate 245",
    [723] = "This ability allows the beastlord to make an additional vicious attack against their foe with a base damage of 100, increasing to 200 at rank two. /alt activate 247",
    [724] = "Each rank of this ability increases the critical hit chance of all pets' melee attacks by 1%.",
    [729] = "Each rank in this ability increases the chance of all pets to peform flurry attacks by 4% for ranks one through five, 7% for ranks six through eight, and 5% for ranks nine through eleven, totaling a 56% chance.",
    [734] = "This ability makes your summoned pets a valid target for beneficial group spells.",
    [735] = "This ability makes it impossible for you to fizzle spells up to a certain level.  Rank 1 - level 54.  Rank 2 - level 56.  Rank 3 - level 58.  Rank 4 - level 62.  Rank 5 - level 64.  Rank 6 - level 66.  Rank 7 - level 67.  Rank 8 - level 69.  Rank 9 - level 71.  Rank 10 - level 72.  Rank 11 - level 74.  Rank 12 - level 76. Rank 13 - 79. Rank 14 - 80. Rank 15 - 81. Rank 16 - 82. Rank 17 - 83. Rank 18 - 84. Rank 19 - 85. Rank 20 - 86. Rank 21 - 87. Rank 22 - 88. Rank 23 - 89. Rank 24 - 90. Rank 25 - 91. Rank 26 - 92. Rank 27 - 93. Rank 28 - 94. Rank 29 - 95. Rank 30 - 96.",
    [738] = "The first three ranks of this ability make NPCs notice your magical activities 5, 10, and 20% less.  Additional ranks further enhance this effect.",
    [746] = "This ability infuses you with a divine spirit, greatly increasing your physical prowess for a short period of time. The ability lasts for 180s with the first rank adding a weapon delay reducing effect, a 50 damage modifier, a 50 bonus to proc chance, and a 50 point heal over time effect. Each subsequent rank adds 25 to each bonus respectively. /alt activate 254",
    [749] = "Use of this ability creates a stationary ward that continually heals everyone around it. The ward lasts for 5 minutes. Increased ranks improve the healing capabilities of the ward.",
    [754] = "This ability decreases the reuse time of Radiant Cure by 10% per rank.",
    [757] = "Use of this ability creates a stationary ward that continually heals everyone around it. The ward lasts for five minutes. Increased ranks improve the healing capabilities of the ward.",
    [762] = "Each rank in this ability increases your tracking skill cap by 10.",
    [767] = "This ability grants damage-over-time spells the chance to have a critical effect each tick they are active.  Each rank adds 5% to the chance.",
    [773] = "Through mastery of illusions, enchanters are able to create a mirror of themselves to draw the attacks of enemies. The simulacrum last for one minute. The first three ranks increase the power and number of copies summoned as well as reducing the cooldown to a minimum of 16 minutes. /alt activate 261",
    [776] = "This ability increases the chance that you'll be successful with blurring the memories of your enemies.",
    [781] = "This ability increases the duration of all of your single-target mesmerization spells. Area of Effect spells will not be extended.",
    [782] = "This ability decreases the reuse time on Mass Group Buff by 10% per rank.",
    [785] = "When activated, this ability causes half of the damage you take to be transferred to your summoned pet.  Additional ranks increase how long your pet will shield you from damage. Ranks 6 and beyond have a heal component.",
    [790] = "Each rank of this ability increases the critical hit chance of all pets' melee attacks by 1%.",
    [795] = "This ability increases the chance of all pets to perform flurry attacks.  The first five ranks increase the chance by 4%, the sixth through eighth by 7%, and ninth through eleventh by 3%, totaling 50% at rank eleven.",
    [800] = "This ability increases the ability of all pets to avoid melee damage by 2, 5, and 10%. ",
    [803] = "This ability increases the maximum hit points of all pets by 2%, 5%, and 10%. The percentage is based on the elemental's base hit points.",
    [806] = "This ability increases the damage you cause when attacking with a weapon in your secondary hand. This AA literally adds a 5% bonus to your offhand MINIMUM damage only. Well worth avoiding. ",
    [807] = "This ability gives you a chance to bypass your opponents special defenses such as dodge, block, parry, and riposte. Each rank adds a 5% chance.",
    [810] = "Each rank in this ability gives monks an increasing chance for their feigned deaths to not be revealed by spells cast upon them.  At higher ranks, monks become immune to feign breaking on a resisted spell and have a good chance of feigning through a spell that successfully hits them.",
    [815] = "Each rank in this ability increases your chance to perform up to two additional attacks with your primary hand. The first rank grants a 7% chance, the next two ranks increase that by 4%, further ranks up to rank nine increase it by 2%, and the last rank increases it by 1%, altogether totaling a 28% chance. Due to the way Flurry functions this will have no affect until you can perform triple attacks, as a successful triple attack is required to test for flurry.",
    [820] = "Each rank in this ability increases the damage done by your Flying Kicks, Round Kicks and Kick attacks by 10. (Yes, literally 10 damage per rank.)",
    [823] = "This ability gives you the chance to block attacks that originate behind you.  Additional ranks increase the effectiveness.",
    [828] = "When activated, your attacks will strike every enemy around you. Initial rank lasts about 12 seconds and has no visible buff icon or discipline indicator. Will NOT trigger proc effects naturally nor via Bloodlust or Rage of Rallos Zek. /alt activate 276",
    [834] = "This ability imbues your pet with the ability to land critical hits. Each rank adds a 1% chance.",
    [839] = "This ability imbues your pet with the ability to flurry attacks, granting a 4% chance per rank.",
    [846] = "Each rank in this ability grants the rogue a 5% chance to attempt an additional backstab after a successful double backstab.",
    [849] = "This ability decreases the reuse time for Hand of Piety by 4 minutes per level.",
    [852] = "This ability increases the chance that your bashes will stun the enemy. Additional ranks increase the chance to stun your enemy.",
    [855] = "This ability increases the damage you do with your bashes. Each additional rank increases the damage inflicted.",
    [860] = "This ability grants its wielder the ability to cure their party of many afflictions, poisons, curses, and harmful magics.  The first rank removes 9 curse, poison, and disease counters, increasing steadily up to removing 25 of each at rank six. /alt activate 285",
    [863] = "A paladin is pure not just in mind, but in body as well.  This ability allows paladins to remove harmful maladies from themselves.",
    [864] = "Ranks in this ability increase the accuracy of your melee and archery attacks. It provides both a flat 10 accuracy per rank as well as specific 10 to various melee skills, the bonus for archery is 5 per rank.",
    [867] = "This ability intensifies the overall effect of damage shields that are cast on you. Each rank adds three to your damage shield. ",
    [872] = "While activated, this ability consumes your mana to imbue your arrows with flames that set your opponent alight for a short period. You can deactivate this ability at any time. /alt activate 289",
    [875] = "While active, this ability channels the ranger's mana to imbue arrows with an icy impact that freezes the target for a short period. Additional ranks increase the damage inflicted with each attack. /alt activate 290",
    [878] = "Through experience, skilled rogues can take advantage of openings in their opponents' defenses to land deadly strikes even from the front. ",
    [881] = "Each rank of this ability decreases the chance that you will set off a trap when opening a chest or other similar container.",
    [888] = "Each rank in this ability increases the chance that your weapon poisons will activate boosting its proc rate by 10. This ability also affects most other spell-typed proc effects, which includes many non-weapon or item based procs such as the Shadowknight's lifetap proc buffs or the ranger's Call of proc buffs.",
    [895] = "This ability intensifies the overall effect of damage shields that are cast on you. Additional ranks increase the effectiveness of this ability. ",
    [907] = "Each rank of this ability increases your maximum hit points by 100.",
    [912] = "This ability allows warriors to temporarily boost hit points to get through tough situations.  The exertion takes its toll, though.  These hit points dissipate over the course of a minute and leave the warrior weaker than when Warlord's Tenacity started.  Additional ranks increase the amount of hit points that are gained temporarily. /alt activate 300",
    [915] = "Each rank in this ability increases the damage you do when you kick or slam.",
    [918] = "Each rank in this ability increases the range of your shielding ability.",
    [921] = "This ability provides you with a familiar that strengthens the effects of your fire-based spells.  Additional ranks allows the familiar to strengthen higher level spells. /alt activate 303",
    [922] = "This ability provides you with a familiar that strengthens the effects of your ice-based spells. Additional ranks allows the familiar to strengthen higher level spells. /alt activate 304",
    [923] = "This ability provides you with a familiar that strengthens the effects of your magic-based spells. Additional ranks allows the familiar to strengthen higher level spells. /alt activate 305",
    [926] = "Use of this ability creates a stationary ward that damages every enemy within its range. The ward lasts for five minutes. Increased ranks improve the damage of the ward. /alt activate 307",
    [931] = "When activated, every direct damage spell the wizard casts for 2 minutes will have an increased chance to have a critical effect while doubling mana cost. Rank one grans a 7% chance, rank two a 26% chance, and rank three a 40% chance to perform a critical spell. /alt activate 308",
    [934] = "This ability increases your chance to land a critical hit. Rank one and two add 15% to your chance to score a critical hit, rank three adds 30%, while rank four jumps sharply up by 86% to bring the value up to 146%. The next two ranks increase that by 26% each. All six ranks total a 198% increase to your base critical hit chance (i.e. a warrior with 5% base crit would then have a 14.9% chance to score a critical hit).",
    [937] = "This ability increases your chance to land a critical hit.  Non-Warriors will nearly match the original critical hit abilities of Warriors, while Warriors will remain significantly ahead of other classes. further increases your chance to score a critical blow against your opponent.",
    [940] = "This ability increases your chance to land a critical hit.  Non-Warriors will nearly match the original critical hit abilities of Warriors, while Warriors will remain significantly ahead of other classes. further increases your chance to score a critical blow against your opponent.",
    [952] = "The planes demand a certain hardiness of those who adventure within.  Each rank of this ability adds an additional 1.25% to your maximum hit points.  You gain the ability to train an additional rank at levels 61, 63, and 65.",
    [955] = "Those who have meditated on the Plane of Tranquility find themselves able to expand their capacity of both Insight and Intellect.  Each rank of this ability raises the maximum that you may raise your Intelligence and Wisdom by ten points.  You may train in this ability once each level, beginning at level 61.",
    [960] = "This ability gives you the chance to permanently charm any Animal which is either below level 47, or considers Light Blue to the caster. You may not have any other summoned druid pet active at the same time as this dire charm, but may use the pets, charms, and even dire charms of other classes. /alt activate 317",
    [961] = "This ability gives you the chance to permanently charm any Undead which is either below level 47, or considers Light Blue to the caster. /alt activate 318",
    [962] = "Sometimes when the masters of the divine pass on, they are returned to Norrath to continue their holy work. This ability provides clerics with a chance to return to life when they meet death. Each rank adds a 2% chance.",
    [967] = "This ability summons a swarm of skeletal archers to harry your foes for 30, 45, and 60 seconds respectively.",
    [970] = "Use of this ability creates a stationary ward that continually heals everyone around it.  Increased ranks improve the healing capabilities of the ward. The ward lingers for five minutes. /alt activate 321",
    [976] = "This ability will prevent components used in the summoning of pets from being expended.",
    [977] = "This ability gives you the ability to cast a Divine Aura spell on yourself, temporarily rendering you invulnerable.",
    [979] = "This ability reduces the chance of failing blacksmith combinations by 10%, 25%, and 50%.",
    [982] = "This ability reduces the chance of failing baking combinations by 10%, 25%, and 50%.",
    [985] = "This ability reduces the chance of failing brewing combinations by 10%, 25%, and 50%.",
    [988] = "This ability reduces the chance of failing fletching combinations by 10%, 25%, and 50%.",
    [991] = "This ability reduces the chance of failing pottery combinations by 10%, 25%, and 50%.",
    [994] = "This ability reduces the chance of failing tailoring combinations by 10%, 25%, and 50%.",
    [997] = "This ability gives you the chance to automatically recover an item that would otherwise be lost on a failed tradeskill combine.",
    [1000] = "Upon using this ability, you will be transported to the Bazaar. If you use this ability while already in Bazaar, it will take you back to where you were before entering. /alt activate 331",
    [1004] = "Reduces the casting time of Encroaching Darkness. Rank 1 reduces the cast time by 10%. Rank 2 reduces the cast time by 25%. Rank 3 reduces the cast time by 50%.",
    [1006] = "This ability raises the maximum that your resistances can be increased to with items and spells by 5 points per rank.",
    [1007] = "This ability decreases the amount of time required between uses of Mass Group Buff by ten percent per rank.",
    [1011] = "You have been strengthened by your ordeals during the Trials of Mata Muram, increasing your maximum resistance levels.",
    [1017] = "This ability provides an alternate form of your Call of the Hero spell. Rank 2 reduces the cast time of Call of the Hero by 2 seconds.",
    [1018] = "This ability allows the Bard to selectively boost the effective range of all beneficial songs that the Bard sings.",
    [1021] = "This ability increases the number of mystical effects that can affect you at once by 1 per rank.",
    [1026] = "This ability increases how far below zero your hit points can fall before you die. Each rank adds 50 hitpoints to your unconscious range.",
    [1037] = "This Ability grants you several layers of protection from harm. As you take damage each layer will absorb ten strikes before failing. As your armor fails you will take more and more damage.",
    [1041] = "Each rank in this ability increases the damage you cause when you land a critical hit on a melee attack.  This ability does not affect special attacks.",
    [1044] = "Each rank in this ability increases the damage you cause when you land a critical hit on a melee attack.  This ability does not affect special attacks.",
    [1047] = "Each rank in this ability increases the damage you cause when you land a critical hit on a melee attack.  This ability does not affect special attacks.",
    [1050] = "The first two ranks add 15% to the critical damage modifier for melee criticals, the third adds 20%, and the last three ranks add 10% each, totaling an 80% modifier at rank six. This effect modifies damage done from a critical melee hit by a percentage. Does not affect Slay Undead which has its own modifier boost, could not definitively tell if it affected monk kick/strikes either from limited testing.",
    [1056] = "Energetic Attunement enhances your receptivity to the potential healing power of your magical gear.  Each rank of this ability increases the maximum by which your hit point regeneration can be raised with items by 1 point.",
    [1057] = "This ability grants you a 5% chance to completely resist any spell.",
    [1071] = "This ability gives you an additional spell slot so you can memorize an additional spell.",
    [1072] = "This ability raises the maximum that your mana regeneration can be increased with items by 1 point per rank.",
    [1089] = "This ability reduces the chance of failing research combinations by 10%, 25%, and 50%.",
    [1092] = "This ability lends persistence to your illusionary disguises, causing them to last until you die or the illusion is forcibly removed.",
    [1093] = "This ability makes it more difficult for opponents to riposte your offhand attacks.  Each rank increases the chance that your opponent will fail to riposte by 20%.",
    [1110] = "When activated, you begin a dance of whirling blades that greatly increases your chance to make the maximum number of attacks per round, granting a 100% increase to your chance to dual wield and a 500% increase to your chance to double attack. Additionally you will have a chance to perform a bladewhirl attack on your opponent, reducing your opponents combat effectiveness and doing damage to your opponent. This bladewhirl is modified by percussion. Dance of Blades lasts for 60s and the cooldown is reduced with each rank down to fifteen minutes at rank three.",
    [1116] = "When this ability is activated, your music forms a physical barrier about you, decreasing the damage you take from spells and melee attacks. The first rank mitigates 25% of melee and spell damage up to a maximum of 4000 total absorption. Each rank adds 2% to mitigations and 2000 to the maximum amounts mitigated. Lasts for one minute. /alt activate 361",
    [1119] = "When this ability is activated, the beastlord will unleash a terrible roar that leaves the opponent damaged, shaken, and less willing to attack the beastlord. The first rank deals 500 damage and reduces the targets STR, DEX, and AGI by 50. Each rank deals 500 more damage and reduces stats by 15 more as well as reducing hate further. /alt activate 362",
    [1122] = "This ability upgrades your Suspended Minion ability to allow pets to remain suspended across zone lines.  Also, if you camp with a suspended pet and have this ability, the pet will be available to you when you return.",
    [1126] = "This ability grants you an enhanced version of the Mend Companion ability, healing for 4500, 7500, and 10500 respectively. /alt activate 418",
    [1129] = "The first rank of this ability allows you to give your pet a \"focus\" command. While focused, your pet will ignore all other opponents until its current opponent is defeated. The second rank allows you to tell your pet to not cast any spells. Usage: /pet focus, /pet spellhold, or hotkeys can be created using the pet control window.",
    [1131] = "Each rank of this ability increases the damage you do with throwing weapons.",
    [1134] = "Each rank of this ability increases the damage that is done by Frenzy. The first rank adds 75, with each subsequent rank increasing that by 25, totaling 400 at rank 13.",
    [1137] = "This ability reduces the timer on the various war cry disciplines by 3 minutes per rank.",
    [1140] = "This ability increases the accuracy of your thrown weapons.",
    [1143] = "This ability grants the chance to automatically make a single frenzied attack on a successful riposte.",
    [1146] = "This ability gives you an enhanced form of your Sprint discipline that refresh much more quickly.",
    [1149] = "Use of this ability causes the berserker's attacks to take on a desperate edge.  As the berserker gets closer to death, they will attack faster. /alt activate 373",
    [1150] = "Using this ability causes the berserker to fall into a rage, attacking their opponent with no thought of their own safety.  With each rank, the damage is increased, but the berserker's defenses suffer.  This ability functions as a discipline and does not stack with other disciplines.",
    [1155] = "This ability increases the duration of war cry effects by 25, 50, and 100%.",
    [1178] = "While this ability is active, the berserker will push themselves beyond their limits.  The berserker's damage output will increase, but they will take a portion of the damage they dole out themselves. Each additional rank increases the damage inflicted upon your enemy. The duration is 90s and each rank lowers the cooldown for a final cooldown of 5 minutes at rank four. /alt activate 387",
    [1181] = "This ability decreases the amount of damage you take when your offhand attacks encounter a damage shield. Each rank adds 20 points of damage shield mitigation.",
    [1186] = "This ability grants heal-over-time spells the chance to have a critical effect each tick they are active, doubling the healing for that tick. The first two ranks add a 3% chance, the third rank adds 4%, and the last three ranks add 2% each.",
    [1192] = "Use of this ability calls forth a celestial hammer to attack your opponent. Additional ranks increase the strength of the hammer. The first rank lasts 30 seconds with each rank lasting 15 more seconds. /alt activate 391",
    [1195] = "While this ability is active, any creature attacking the cleric has a chance to be stunned in retribution. The ability lasts for 90s. The nine ranks affect creatures up to level 70, 75, 83, 88, 88, 93, 99, 101, and 103, respectively. From rank 3, has a chance to bestow a Divine Blessing and Favor on the cleric when a Divine Retribution occurs.  Higher ranks decrease the likelihood of the creature resisting the effect, increase hate reduced, and improve the healing and protective yield of the Divine Blessing and Favor.",
    [1196] = "This ability adds twenty points of damage to any sucessful attack you perform with a bow. Starting at rank 6, this ability adds thirty five points of damage per attack.",
    [1209] = "While you are under the effects of this ability, creatures will always choose to attack someone else before they attack you. You may cast spells upon yourself, but the sanctuary effect immediately ends if you take any hostile action or cast spells on another player. /alt activate 396",
    [1210] = "Each rank of this ability increases the strength of your critical spell hits, causing them to do more damage. Each rank adds a stacking 10% increase to critical spell damage.",
    [1213] = "Each rank of this ability increases the strength of your critical spell hits, causing them to do roughly 10% more damage per rank.",
    [1222] = "Use of this ability creates an enhanced version of your Nature's Boon ward.  Increased ranks improve the healing capabilities of this ward.",
    [1228] = "This ability allows you to call a fallen comrade's spirit back to their corpse.  This does not restore any lost experience, but the player can still get an experience resurrection after being affected by this ability. /alt activate 404",
    [1229] = "Use of this ability allows you to quickly gate yourself back to a secondary bind point that has been previously set by use of a Stone of Marking. /alt activate 405",
    [1230] = "This ability gives you an innate chance to forage more than one item at a time.  Additional ranks increase the chance to forage a second item.",
    [1233] = "Use of this ability causes your opponent to immediately fall into a deep sleep.  The effect last for up to one minute per rank.",
    [1239] = "While this ability is active, any creature that tries to attack the enchanter has a chance to be stunned in retribution. This ability lasts for two minutes and does not affect creatures that are immune to stunning. Rank 1 will affect creatures level 73 and below and rank 2 will affect creatures level 83 and below. Rank 3 will affect creatures level 88 and below. Rank 4 will affect up to level 93. Rank 5 affects enemies up to level 98. Rank 6 affects enemies up to level 103. /alt activate 412",
    [1242] = "While active, a portion of the damage you sustain is taken out of your mana rather than your hit points.  Any damage that cannot be absorbed by your mana comes off your hit points instead.  The first rank of this ability will absorb 10 hits from spell or melee attacks before fading, the second rank will absorb 20, and the third will absorb 30, the fourth rank will absorb 40 hits, the fifth by 50, the sixth rank 60 hits. Additional ranks beyond rank 6 further increase the amount of damage that is mitigated by converting your mana. Each rank starting from rank 10 also increases the number of hits the ability absorbs. /alt activate 413",
    [1245] = "Through use of this ability, you can soothe an angry creature, greatly reducing how angry it is with its current target.  This ability will only function if the person the creature is most angry with is in your group or raid.",
    [1251] = "This ability will allow you to absorb the pure essence of elemental fire into your soul, increasing the damage caused by your fire-based spells by 50% for 90s. /alt activate 784",
    [1252] = "This ability will allow you to absorb the pure essence of elemental air into your soul, reducing how much creatures hate you for the detrimental spells you cast by 50% for 90s. /alt activate 785",
    [1253] = "This ability will allow you to absorb the pure essence of elemental ice into your soul, reducing the damage you take from spells by 50% for 90s. /alt activate 786",
    [1254] = "This ability will allow you to absorb the pure essence of elemental earth into your soul, reducing the damage you take from melee attacks by 50% for 90s. /alt activate 787",
    [1255] = "This ability allows the monk to execute a perfect feign death that causes every creature to forget about them immediately.  Upon feigning, the monk will automatically hide themselves as well. /alt activate 420",
    [1272] = "This ability gives you an additional way to feign death.",
    [1274] = "This ability calls up to five shades of nearby corpses back to life to serve the necromancer.  The soulless abominations will mindlessly fight the target until called back to the afterlife some time later.  The first rank summons up to three shades that serve for 60 seconds.  The second rank summons up to four shades that serve for 75 seconds.  The third and onward rank summons up to five shades that serve for up to 90 seconds.  Additional ranks increase the power of the shades. /alt activate 792",
    [1284] = "This ability grants a chance to endure what would otherwise be a stunning blow, from any angle, without being stunned. Rank one gives a 15% chance, rank two is 30%, three is 50%, and each subsequent rank adds 10% more, totaling 100% at rank eight.",
    [1287] = "This ability grants you the chance to fully block an attack when using a shield. The first rank adds a 1% chance while the second and third ranks add 2% each.",
    [1296] = "Each rank in this ability increases the maximum you can increase your tracking skill by 20 points.",
    [1304] = "Each rank in this ability increases the chance of successfully landing a backstab.",
    [1307] = "Each rank in this ability gives rogues an increasing chance to remain hidden when they are an indirect target of an Area-of-Effect spell.  At the highest rank, a resisted AoE spell will never break Hide and there is a good chance that the rogue will remain hidden even when a spell successfully hits them.  Nerves of Steel does not help when the rogue is the direct target of an AoE spell (if they are the direct target, then they've already been spotted). All ranks beyond rank 5 further increase the chance of remaining sneaking even if you do not resist the AoE spell.",
    [1313] = "This ability grants the Shadow Knight a chance to drain the life of his opponent any time he makes a melee attack. The first rank adds a 50 point lifetap, increasing by 25 points per rank which also increases the chance to proc up to 50 at rank 5 and higher.",
    [1323] = "While this ability is active, all of your spells will be fueled directly by the energy of your body, consuming hit points rather than mana.  The conversion is not efficient, though, and will consume more hit points than the mana requirements of the spell. /alt activate 446",
    [1327] = "Through use of this ability, the shaman can call upon their ancestors to fill their group with strength and healing. The buff has a base duration of 30s. The first rank increases stap caps by 30, AGI/STR/DEX by 30, and adds a 278 point heal over time. Each subsequent rank increases these bonuses up to 105 to stats and 499 healing at rank six.",
    [1334] = "When used, this ability will cause the targeted creature to become considerably less angry with you. /alt activate 451",
    [1337] = "This ability grants you an enhanced version of Frenzied Devastation that lasts for an additional 6 seconds per rank. Beginning with rank 10, each rank increases the crit chance for damaging spells.",
    [1343] = "When activated, this ability will teleport the wizard's entire group to the wizard's bind point. /alt activate 456",
    [1345] = "This ability allows you to share your natural affinity for the hunt with your party in the form of greater accuracy, more critical hits, and increased offensive power. The first three ranks add 4% to healing and spell criticals, 15 to base accuracy, 25 ATK, and 30 to melee critical chance. The last three ranks add another 1% to healing and spell criticals, 15 base acuracy, 10 ATK, and 10 to melee critical chance. /alt activate 462",
    [1348] = "While this ability is active, the berserker is fueled by his rage causing his melee critical hits to land for massive damage.  When the ability wears off, though, it drains a significant portion of the berserker's life force. Each additional rank increases the amount of damage inflicted. /alt activate 465",
    [1351] = "This ability allows you to pressure your opponent, causing him to stumble away from you. This both deals damage and decreases his armor class for up to 12 seconds. /alt activate 467",
    [1352] = "This ability grants you an Eagle Strike attack with a chance to reduce the movement speed of the target. Ranks in this ability can increase the potency of the snare effect, or the damage, or both. This ability can not be used at the same time as Stunning Kick or Eye Gouge. /alt activate 468",
    [1355] = "This ability grants you a Round Kick attack with a chance to stun a target up to level 70. Ranks 2 and 3 increase the duration of the stun while further ranks increase the maximum level of NPC that can be stunned with this effect.  This ability cannot be used at the same time as Crippling Strike or Eye Gouge. /alt activate 469",
    [1358] = "This ability grants you a Tiger Claw attack with a chance to gouge the eyes of the target, reducing its ability to attack. The first rank deals an 11 base damage Tiger Claw attack (will not repeat via Wu's) and applies a 60ATK debuff. Each rank adds a small amount of damage and ATK debuff, with no other effect. This ability cannot be used at the same time as Crippling Strike or Stunning Kick. /alt activate 470",
    [1361] = "Your devotion to Dark Reign grants you increased statistics.",
    [1362] = "Your devotion to Dark Reign grants you increased hit points, mana, and endurance.",
    [1363] = "Your devotion to Dark Reign increases the number of mystical effects that can affect you at once.",
    [1364] = "Your devotion to Dark Reign increases the chance that your direct damage spells, damage over time spells, healing spells, and melee attacks will have a critical effect.",
    [1365] = "Your devotion to Dark Reign provides you with an innate chance to completely resist the effects of most detrimental spells.",
    [1366] = "Your devotion to Norrath's Keepers grants you increased statistics.",
    [1367] = "Your devotion to Norrath's Keepers grants you increased hit points, mana, and endurance.",
    [1368] = "Your devotion to Norrath's Keepers increases the number of mystical effects that can affect you at once.",
    [1369] = "Your devotion to Norrath's Keepers increases the chance that your direct damage spells, damage over time spells, healing spells, and melee attacks will have a critical effect.",
    [1370] = "Your devotion to Norrath's Keepers provides you with an innate chance to completely resist the effects of most detrimental spells.",
    [1371] = "This ability doubles the amount of experience you gain when killing NPCs for the next half an hour.",
    [1372] = "This ability infuses you with raw power, greatly increasing all of your statistics, resists vs. fire, cold, poison, disease, and magic, and increasing your run speed.",
    [1373] = "This ability summons forth a jester from Bristlebane's court.  The jester sticks around for 15 minutes or until you zone.",
    [1374] = "This ability summons every corpse you have to you and returns the experience you lost for that death if the corpse is still able to be resurrected.",
    [1375] = "This ability summons forth a faithful servant that will follow you around and cast healing and beneficial buffs on you and other players near you.  The servant lasts for 30 minutes or until you zone.",
    [1376] = "When used, this ability restores a large amount of health, mana, and endurance.",
    [1377] = "This ability greatly increases the power of your melee and ranged attacks, your chance to perform critical hits on direct damage and damage-over-time spells, and your chance to perform exceptional heals on both direct healing and heal-over-time spells.",
    [1378] = "A strange power courses through your blood.  You sense a purpose, a desire, a secret waiting to be told.",
    [1379] = "The curse within your blood grows stronger.  A sense of foreboding plays at the back of your mind.",
    [1380] = "The curse spreads further, seeping into your thoughts and plaguing your dreams.  Shadows lurk on the edge of vision, haunting your steps.",
    [1383] = "This ability infuses an undead NPC with holy energy, causing it to continually take damage for the next 30 seconds.  Each additional level of this ability increases the damage done.  Occasionally an undead NPC will react violently to the infusion of holy energy, potentially destroying it outright. /alt activate 558",
    [1388] = "This ability permanently enhances your vision allowing you to see the invisible.",
    [1404] = "While active, this ability will reduce the amount of hate you generate when casting spells by up to 20%.  Each additional rank increases the maximum that this ability can reduce your hate by an additional 20%.",
    [1409] = "While active, this ability will reduce the amount of hate you generate when casting spells by up to 20%.  Each additional rank increases the maximum that this ability can reduce your hate by an additional 20%.",
    [1414] = "This ability decreases the amount of time required between uses of Mind Crash by ten percent per rank.",
    [1417] = "This ability further increases the amount of healing provided by a single bandage while binding wounds.",
    [1419] = "When activated, this ability will teleport the druid's entire group to the druid's bind point.",
    [1420] = "Each rank in this ability increases the amount of healing provided by a single bandage.",
    [1425] = "This ability infuses you with a primal rage, increasing your melee abilities but you will also take damage as you push yourself beyond your means. The rage starts slow, but each additional rank you have in the ability increases its maximum potential. Be warned, once the rage has taken hold of you, the only way to stop it is to let it run its course. /alt activate 499",
    [1435] = "Whenever you cast a level 30 to 70 spell that heals or harms someone, this ability grants you an innate chance for the next level 70 or lower spell you cast after that to only cost a single point of mana.  Additional ranks increase the chance of this occurring.  Note that you only have a brief time to make use of the benefits of this ability before it fades away.",
    [1453] = "Each rank of this ability grants you an increasing chance to not use a component when summoning axes.",
    [1458] = "This ability causes your next War Cry to hit everyone within its radius at the cost of doubling the endurance used. /alt activate 505",
    [1459] = "Use of this ability creates a stationary ward that cleanses poison and disease from every player within its range. The ward lasts for five minutes. Increased ranks improve the effectiveness of the ward. /alt activate 506",
    [1462] = "This ability infuses a summoned NPC with elemental energy, causing it to continually take damage for the next 30 seconds.  Each additional level of this ability increases the damage done.  Occasionally a summoned NPC will react violently to the infusion of energy, potentially destroying it outright.",
    [1471] = "This ability decreases the amount of time required between uses of Roar of Thunder by ten percent per rank.",
    [1474] = "While under the effect of this ability, an NPC will not be able to gate away from you.  Additional ranks increase the duration of the effect. /alt activate 512",
    [1477] = "This ability allows you to quickly retreat from the current situation and arrive at a relatively safe location elsewhere in the zone.  You must be hidden to use this ability. /alt activate 789",
    [1478] = "While active, the wizard focuses his mastery over fire to cause any fire-based direct damage spell they cast to have a chance to cause the targeted creature to burst into flames, taking continual damage and becomes more susceptible to ice-based attacks.  Additional ranks increase the effectiveness of the ability and the chance for it to occur.",
    [1486] = "Whenever you cast a level direct healing spell, there is a chance that your target will continue to be healed 50 points per rank over the next 18 seconds. The triggering spell must be at least level 30 in your spellbook and have a minimum mana cost of 10. ",
    [1494] = "This ability allows you to cloak your entire group in a camouflage nearly at will, causing them to become invisible without the need to memorize a spell.",
    [1495] = "This ability gives you an alternate form of Spirit of the Wood that channels the energy of the woodland spirits on to a single target.  The concentrated energy provides an exceptionally fast heal and leaves the target with a brief period of regeneration and protective thorns. Lasts for 18s. The first rank heals for 1000, adds a 500 point heal over time, a 60 point damage shield, and 180 AC. Each rank increases the bonuses by 500, 250, 5, and 20 respectively.",
    [1498] = "Use of this ability calls forth the spirit of a wild bear to attack your opponent for 30s, increasing by 15 seconds per rank to 60s at rank three and beyond. Additional ranks increase the strength of the spirit and reduce the cooldown to a final cooldown of 12 minutes. /alt activate 520",
    [1501] = "This ability will bind an NPC to your will, charming them until the spell wears off.  All ranks of this ability work on NPCs up to level 70, with the first rank lasting two minutes and each subsequent rank adding two minutes to the duration. /alt activate 521",
    [1504] = "This ability increases the duration of your Frenzied Burnouts by 12 seconds per rank.",
    [1510] = "This ability allows you to fuel your spells directly from your health instead of from your mana.  Blood magic is dangerous, though.  Spells will drain more health than they would use mana and the longer Blood Magic is in effect, the penalty will grow.  Once you have started using Blood Magic, you cannot stop until it wears off by itself or you die. Additional ranks increase the duration of each stage of the effect. /alt activate 524",
    [1511] = "This ability decreases the amount of time required between uses of Wake the Dead or Army of the Dead by one minute per rank.",
    [1514] = "This ability improves the chance that damage-over-time spells will have a critical effect each tick they are active. Each rank adds a 2% chance.",
    [1520] = "Through the use of this ability, you can call upon ancestral spirits to protect you from harm for a brief period.  The spirits will absorb a portion of the damage you would normally take. The buff has a base duration of 18 seconds and absorbs a percentage of incoming melee damage, 25% per rank. /alt activate 528",
    [1523] = "This ability allows you to become invisible to undead, nearly at will, without the need to memorize a spell. /alt activate 529",
    [1527] = "This ability allows you to become invisible nearly at will, without the need to memorize a spell.",
    [1542] = "This ability allows you to estimate the selling price of an item you are holding on your cursor. /alt activate 536",
    [1543] = "Each rank in this ability increases the minimum damage you will do on any backstab.",
    [1546] = "This ability decreases the amount of time required between uses of Imitate Death by two minutes per rank.",
    [1549] = "This ability grants a chance to endure what would otherwise be a stunning blow, from any angle, without being stunned. Each rank provides a 25% increase to your chance to avoid a stunning blow.",
    [1552] = "Years of training allows the monk to increase their base movement run. This increase does not stack with movement rate spell effects.",
    [1555] = "This ability decreases the amount of time required between uses of Dance of Blades by four minutes per rank.",
    [1569] = "This ability calls a number of stone guardians into existence to attack your target.  The first rank of the ability calls 3 guardians and each additional rank adds an additional guardian, through rank 6. Beyond rank six the duration that your pets last will extend by 5 seconds per rank. /alt activate 544",
    [1572] = "This ability gives you an innate chance to put an NPC into a deep sleep when you mesmerize it.  An NPC under the effects of a deep sleep will suffer offensive penalties for 2 minutes after the spell was initially cast.  Additional ranks increase the effectiveness of the ability and the chance for it to occur.",
    [1577] = "This ability grants you a chance to score an exceptional heal when healing your pet, doubling the healing of the spell. The first two ranks add 3% per rank and the third rank adds 4%, totaling 10% at rank three.",
    [1583] = "This ability decreases the amount of time required between uses of Warlord's Tenacity and Resolute Defiance by 10% per rank.",
    [1586] = "This ability increases your stalwart endurance, adding 25% to your chance to endure what would otherwise be a stunning blow, from any angle, without being stunned.",
    [1587] = "Each rank in this ability increases your chance to not have item effects interrupted when you take damage.",
    [1592] = "Each rank of this ability increases the maximum amount of attack you can gain from items.",
    [1597] = "This ability gives you a chance to provoke your opponent to the point where they will not flee from you or, if they are already fleeing, will instead turn back to you and continue fighting. Rank 3 additionally snares your enemy reducing their movements. /alt activate 552",
    [1598] = "This ability engulfs your target in a barrage of discordant noise, causing it to take damage for the duration of the effect.  Every time this effect causes damage, it also has a chance to interrupt any spells being cast. The firs rank deals 100 damage per tick and has a 10% chance to interrupt casting when damage is dealt. The damage goes up 100 per rank and ranks three and higher increase the interrupt chance to 50%.",
    [1604] = "This ability increases the maximum level of humanoid that can be affected by your assassination. Rank one increases the level to 48 and each subsequent rank adds another 2 to the maximum level. ",
    [1608] = "Each rank of this ability grants you an increasing chance to make an additional attack upon a successful ranged attack by 2%.  This extra attack will consume an additional arrow or fail if one is not available.",
    [1616] = "This ability gives you the chance to perform up to two additional attacks with your primary hand.  The first rank adds a 7% chance, the second two ranks add 4%, ranks four through nine add 2% each, and rank ten adds 1% totaling 28% at rank ten.",
    [1627] = "Years of practice allows the bard to innately increase their base movement run. This increase does not stack with movement rate spell effects.",
    [1638] = "This ability allows you to channel up to 10% of your total mana into a raw, unfocused blast of pure magical energy aimed at your target. /alt activate 565",
    [1639] = "This ability allows you to channel up to 20% of your total mana into a raw, unfocused blast of pure magical energy aimed at your target. /alt activate 793",
    [1640] = "This ability allows you to channel up to 30% of your total mana into a raw, unfocused blast of pure magical energy aimed at your target. /alt activate 794",
    [1641] = "This ability grants you an innate chance to detect traps.  Any time you are near a trap, you will have a chance to detect it.  This chance is considerably lower than if you were actively searching for it.",
    [1642] = "This ability grants you an innate chance to detect traps.  Any time you are near a trap, you will have a chance to detect it.  This chance is considerably lower than if you were actively searching for it.",
    [1643] = "This ability provides you with the power to call the ultimate holy steed to your side.",
    [1644] = "This ability provides you with the power to call the ultimate unholy steed to your side. /alt activate 573",
    [1645] = "This ability provides you with the power to call a valiant unicorn to your side. /alt activate 570",
    [1646] = "This ability provides you with the power to call a savage nightmare to your side. /alt activate 571",
    [1647] = "Your knowledge of the innate frequency of the Theater of Blood allows you to transport yourself directly to that altered plane.",
    [1662] = "This ability raises your base resistance to corruption-based spells by 2 point per rank. You may train in this ability twice each level, beginning at level 65.",
    [1667] = "This ability provides you with the power to call a levitating unicorn to your side. Requires Valiant Steed.",
    [2400] = "This passive ability reduces the time required between uses of your Celestial Regeneration ability by 10% per rank. Note: This will not affect Focused Celestial Regeneration.",
    [3676] = "This ability turns the next group buff you cast into a beneficial area effects spell, hitting everyone within its radius, at the cost of doubling the spell's mana usage. May only be used while fast regeneration is active.",
    [4665] = "This ability enables you to teleport to the Throne of Heroes in the Guild Lobby.",
    [4672] = "Decreases failure chance of tinkering combines by 10, 25 and 50%",
    [4675] = "Decreases failure chance of jewel crafting combines by 10, 25 and 50%",
    [4688] = "Increases the amount of healing provided by a single bandage.",
    [4698] = "Quick Draw expands the potion belt by one additional available item slot per rank.",
    [4699] = "Battle Ready expands the bandolier by one additional save slot per rank.",
    [4702] = "Once activated, Glyph of Dragon Scales will absorb a large percentage of incoming damage from spells and melee attacks.  It will last for 3 minutes or until it has absorbed a total of 10,000 damage.",
    [4704] = "Once activated, Glyph of Arcane Secrets decreases the mana usage of your spells up to level 75 for 15 minutes.  Glyph of Arcane Secrets has no effect on complete healing or percentage-based healing spells.",
    [4705] = "Once activated, Glyph of Draconic Potential increases your maximum hit points and mana by between 900 and 1050 for 30 minutes. This glyph does not increase your current hit points or mana.",
    [4706] = "Once activated, Glyph of Destruction increases the damage done by your critical melee hits and damage spells by 40% of the base damage for 2 minutes. This ability does not impact melee special attacks.",
    [4739] = "After slaying a non-trivial con enemy, you have a 50% base chance, plus 10% per rank, to enter a battle frenzy that instantly boosts your endurance, provides a 500 hitpoint heal, and increases your offensive damage for the next 30 seconds.",
    [4742] = "Hold the Line increases the amount of hit points healed by healing spells that land on you but reduces your offensive damage by as well. Rank 1 will increase the healing spells that land on you by 10% and Rank 2 will increase the heals by 15% while your damage done will go down by 25%.",
    [4761] = "Each rank in this ability further increases your chance to get a critical hit with your damage over time spells. The first rank adds a 2% chance and each subsequent rank adds another 1%.",
    [4773] = "Whenever you cast a level 71 or higher spell that heals or harms someone, this ability grants you an innate chance for the next level 75 or lower spell you cast to only cost a single point of mana. Note that you only have a brief time to make use of the benefits of this ability before it fades away.",
    [4801] = "This ability decreases the amount of time required between uses of Mend by 30 seconds per rank.",
    [4809] = "This ability refines your accuracy when you enter a Frenzy. Each additional rank increases your accuracy further.",
    [4819] = "Each rank in this ability increases the chance that your feigned deaths will not be revealed by spells that successfully land on you.",
    [4836] = "You grapple with your enemy, moving them forward slightly, dealing damage and reducing their ability to evade for up to 12 seconds.. /alt activate 601",
    [4844] = "As long as a shield is equipped, each rank in Shield Specialist confers a 20% damage bonus to attacks made by a weapon held in the primary hand per rank.",
    [4849] = "When activated, Mark of the Mage Hunter reduces the damage of incoming spells. Each additional rank increases both the amount of damage absorbed per spell, as well as the total amount of damage that may be absorbed before fading. /alt activate 606",
    [4854] = "Uncanny Resilience reduces the amount of damage sustained by incoming melee attacks by 20, 30, and 40%. The first rank can mitigate a total of 4000 damage, increasing by 2000 per rank. Lasts for 18s.",
    [4857] = "Blinding Fury sends you into a battle rage that increases your melee ability. This rage is so intense that you have a chance of temporarily losing your sight.  While blinded by fury, you will attack even faster and unleash a series of double attacks. /alt activate 610",
    [4860] = "Battle Leap enables you to spring forward into combat. Your momentum will confer a boost to your attacks for six seconds, adding a 20% damage modifier. /alt activate 611",
    [4861] = "Soul Seeker lowers the reuse timer of your Life Burn by 2 minutes per rank.",
    [4887] = "Surreality decreases the reuse timer of Mind Over Matter by 2 minutes per rank. ",
    [4890] = "Manadraw allows the enchanter to gather mana from his surroundings. Unlike the Gather Mana, Manadraw continues to pull additional mana from the environment for up to one minute after activation. /alt activate 616",
    [4894] = "Use of this ability causes your opponent to immediately fall into a deep sleep and suffer terrible nightmares.  When they wake, their movements will be slowed while they recover from the effects.  The base ability will affect NPCs up to level 74. Maximum rank will affect targets up to your current level required to purchase the ability plus three. /alt activate 748",
    [4903] = "This ability allows you to absorb the pure essence of elemental fire into your soul.  While this ability is active, your fire-based spells will benefit from enhanced damage, providing a 50% improved damage bonus for two minutes.  The effects of this ability last slightly longer than Heart of Flames. Each rank raises both the minimum and maximum damage bonus granted. /alt activate 621",
    [4906] = "This ability allows you to absorb the pure essence of elemental air into your soul.   While this ability is active, enemies will notice your actions less.  This ability lasts slightly longer than Heart of Vapor. Reduces hate generation by 50% for two minutes. /alt activate 622",
    [4909] = "This ability allows you to absorb the pure essence of elemental ice into your soul.  While this ability is active, you will take less damage from spells. Reduces spell damage taken by 50% for two minutes, up to a maximum of 7000 points absorbed. Additional ranks increase the maximum amount of damage that can be absorbed before the effect fades. /alt activate 623",
    [4912] = "This ability allows you to absorb the pure essence of elemental earth into your soul.  While this ability is active, you will take less damage from melee attacks. This ability reduces melee damage taken by 50% for two minutes, up to a maximum of 7000 absorbed. /alt activate 624",
    [4915] = "This ability allows you to channel up to 40% of your total mana into a raw, unfocused blast of pure magical energy aimed at your target. /alt activate 625",
    [4924] = "Each rank in this ability further increases your chance to get a critical hit with your damage-over-time spells by 1% per rank.",
    [4927] = "This ability summons a shadow of gathering dusk that falls across your opponent. This shadow increases the likelihood that your opponent will attack you as it continues to gather over time. When the shadow has fully gathered, it will unleash a curse of duskfall to damage your opponent. Additional ranks increase the power of this effect.",
    [4931] = "Veil of Mindshadow enables an enchanter to phase themselves partly out of existence. This ability absorbs 80% of incoming melee damage until 3500 damage has been absorbed, increasing to 4000 and 4500 at higher ranks. /alt activate 791",
    [4934] = "Through this ability, an enchanter learns to channel and congeal his mana into ruby crystals. These crystals can later be harvested to heal the enchanter's wounds. /alt activate 632",
    [4935] = "Through this ability, an enchanter learns to channel and congeal his mana into sapphire crystals. These crystals can later be harvested to recover lost mana. /alt activate 633",
    [4938] = "Arcane Whisper reduces hate on a single target slightly over time. Additional ranks further reduce hate on your target. /alt activate 636",
    [4943] = "By creating a localized field of unstable reality, this ability periodically teleports you in random directions while keeping you slightly phased out of physical existence.  While Dimensional Instability is active, enemies will notice your actions significantly less and you will be less susceptible to melee damage.  Be careful!  The locational shifts caused by Dimensional Instability beginning and ending will interrupt your spell casting. /alt activate 639",
    [4944] = "While active, the wizard focuses his mastery over ice to cause any ice-based direct damage spell they cast to have a chance to cause the targeted creature to enter a cryogenic stasis, dealing damage to them and causing them to become more susceptible to fire-based attacks. Additional ranks increase the effectiveness of the ability and the chance for it to occur.",
    [5001] = "This ability places a ward on an ally that will heal them over time when their health drops below 50%.  Each rank will increase the amount of healing. This is a Guardian Spirit. Only 1 guardian spirit may be active on you at any time. /alt activate 614",
    [5002] = "This passive ability grants a small amount of double attack skill per rank.",
    [5006] = "Following adoption of the Norrathian Pantheon Allegiance Initiative, this ability summons a Personal Tribute Master to your side.",
    [5007] = "When activated, Protection of the Spirit Wolf summons a spirit wolf which will protect you from danger. The first rank absorbs 25 percent of melee and spell damage up to a total of 2000. Each rank increases the mitigations by 2% per rank and the total amount that can be mitigated by 2000 per rank. /alt activate 778",
    [5015] = "Taste of Blood applies a buff to your pets which provides a chance to enter a blood frenzy when they get credit for a successful kill. This buff applies a damage bonus buff to the pet for 30 seconds that also increases their Flurry chance by 50. /alt activate 666",
    [5017] = "Hymn of the Last Stand increases your maximum hit points which then decay slowly over time. Addional ranks in this ability increase the hit points you gain and prolong the duration of time that it takes for the hit points to decay. /alt activate 668",
    [5020] = "Bladed Song causes your opponent to take damage every time they attack. For 60s the enemy has a 250 pt reverse damage shield applied to them, causing them damage any time they attack any foe. /alt activate 669",
    [5021] = "This ability allows you to twist your blades within an opponent's wound, causing them to lose hit point over time. Wounds inflicted in this manner are difficult to heal, reducing your opponent's ability to be healed until the effects of Twisted Shank have worn off. This effect lasts for 96s and reduces healing received by 25 percent while dealing 200 damag per tick. /alt activate 670",
    [5022] = "While active you periodically attempt to throw dirt into your opponent's eyes. If successful, your opponent will be temporarily blinded and will be less able to make accurate attacks. The ability lasts for 60s and the blinding lasts for 6s. Each rank in this ability increases the chance that you will be able to find an opening to throw dirt in your opponent's eyes. /alt activate 671",
    [5025] = "Ligament Slice cripples your opponent, decreasing their movement rate and ability to defend themselves.  Additional ranks in this ability intensify the effect. /alt activate 672",
    [5028] = "Tumbling increases your chance to avoid incoming damage and increases your movement speed. While tumbling, your ability to deal damage will be lessened as you devote more energy to acrobatic movements. /alt activate 673",
    [5083] = "Reduces the reuse timer on your Sanctuary ability. Each rank further reduces the reuse time of Sanctuary.",
    [5085] = "When the Shadow Knight gets credit for a successful kill, Mortal Coil grants a 25% chance to harvest the energy of his victim's departing essence. This energy improves the Shadow Knight's AC and grants him the ability to draw hit points from his enemies as he attacks them. Each rank in this ability increases the amount of energy harvested.",
    [5095] = "Armor of the Inquisitor grants the paladin an improvement to his armor class and increases the benefit he gains from healing spells that land on him. The first rank boosts healing received by 15 percent, AC by 175, lasts for 60s and has a 13 minute cooldown. Each rank increases the healing by 5%, AC by 175, duration by 30s, and reduces the cooldown by a minute and a half. /alt activate 76",
    [5098] = "Hand of Disruption has a chance to interrupt your target's spells as they are being cast.",
    [5105] = "Through this ability you are able to assume the form of a white spirit wolf. While in this form, your beneficial spells will require less mana and you will be resistant to cold based attacks. Additionally you will have an increased chance to perform critical heals while this effect is active. Additional ranks further reduce the mana used for beneficial spells, increases the resistance to cold based attacks, as well as the critical chance for beneficial spells. /alt activate 705",
    [5109] = "Through this ability you are able to channel a black werewolf. While in this form, you will benefit from improved vision and quickened attack speeds. Additional ranks of this ability will add more health and mana to you. /alt activate 707",
    [5127] = "Each rank of this ability shortens the reuse timer of your Doppelganger ability by 5 minutes.",
    [5150] = "Grants you the ability to call upon your dragon bloodline to unleash a breath attack upon your foes, damaging them and reducing their resistance to fire.",
    [5165] = "Grants you the ability to call upon your dragon bloodline to unleash a breath attack upon your foes, damaging them and reducing their resistance to disease.",
    [5180] = "Grants you the ability to call upon your dragon bloodline to unleash a breath attack upon your foes, damaging them and reducing their resistance to magic.",
    [5195] = "Grants you the ability to call upon your dragon bloodline to unleash a breath attack upon your foes, damaging them and reducing their resistance to poison.",
    [5210] = "Grants you the ability to call upon your dragon bloodline to unleash a breath attack upon your foes, damaging them and reducing their resistance to cold.",
    [5225] = "Grants you the ability to call upon your dragon bloodline to unleash a breath attack upon your foes, damaging them and slightly reducing their resistance to all magic.",
    [5248] = "When you land a killing blow on a non-trivial opponent, you will occasionally draw enough strength from the act to get a instant boost to your endurance as well as increase the damage done by your attacks for the duration of the effect.  Each additional rank increases the chance that this occurs.",
    [5251] = "This ability channels the energy of the woodland spirits on to a single target. The first rank increases stat caps by 95 and adds 95 AGI, STR, and DEX while also granting a 2333 point heal with a 1166 point heal over time effect. Subsequent ranks increase these bonuses. /alt activate 662",
    [5263] = "This ability grants you the chance to fully block an attack when using a shield.  Increased ranks improve the chance to block attacks.",
    [5264] = "Increases the critical hit chance of all pets' melee attacks by 1% per rank.",
    [5269] = "This ability provides a 50% chance to not consume a reagent when casting Call of the Hero or similar spells.",
    [5276] = "Decreases the reuse timer of your Elemental Heart and Elemental Core abilities by 1 minute per rank.",
    [5295] = "Arcane Overkill adds a chance for you to gain mana back when you score a killing strike with a spell. Ranks one through six increase your chance by 10% each rank while additional ranks increase the amount of mana returned by an Arcane Overkill. Ranks 16, 17, and 18 add a small increase to critical spell damage for 2 minutes. Ranks 19, 20, and 21 increase the chance to proc, mana returned, and damage inflicted slightly.",
    [5298] = "By focusing your songs on an enemy, you can weaken their ability to defend themselves, increasing the damage they take from attacks by 1, 2, and 3%.  After 30 seconds, the song builds to a crescendo dealing 1000 damage per rank to the target.  Additional ranks inflict more damage upon the target at the end of the effect. /alt activate 777",
    [5717] = "When active this ability will increase the power of those around you by increasing the chance they have to do a critical strike with a spell or melee.",
    [5776] = "Each rank increases your critical hit rates with melee attacks.",
    [5833] = "The gods empower you to render your pet invulnerable for a short period of time.",
    [5984] = "Force of Disruption has a chance to interrupt your target's spells as they are being cast. It also increases the likelihood that the target will attack you. Additional ranks increase the amount of hate generated.",
    [6020] = "Ranks in this ability increase the minimum damage of your Eagle Strike, Dragon Punch and Tiger Claw attacks.",
    [6051] = "Increases the hitpoints of your companions by 1, 3 and 5% for the first three ranks. Each additional rank increases your pet's health by 2%.",
    [6084] = "This passive ability grants you a small amount of double-attack skill. Rank 1 grants you 50 skill, with each additional rank adding 25 double-attack.",
    [6088] = "Each rank of this passive ability reduces the time required between uses of your Divine Retribution ability by 3 minutes.",
    [6106] = "This ability grants you an alternate version of Prolonged Destruction that requires less mana, but at a reduced chance for critical damage.",
    [6112] = "This passive ability gives you a chance to not consume a reagent when casting spells which require them. Each rank increases the chance to not consume a reagent.",
    [6113] = "This passive ability extends the duration of your Elixir line of spells. Each rank increases the duration by 1 tick.",
    [6119] = "Each rank of this ability increases your maximum hit points by 100 up to rank 20, and 200 hit points from rank 21 to 30.",
    [6136] = "This ability reduces the reuse time of Warlord's Tenacity.",
    [6218] = "Allows you to transform yourself into a Werewolf and grants additional mana, hitpoints, runspeed and accuracy. Additional ranks increase the mana, hitpoints and mana regeneration from this effect.",
    [6232] = "Provides an upgraded version of Direwood Guard to Druids.",
    [6290] = "While active, the wizard focuses his mastery over arcanum to cause any magic-based direct damage spell they cast to have a chance to proc a spell that will allow their target to take additional damage from spells that are cast on them, regardless of who cast the spell on the wizard's target. Ranks 1 through 3 work on spells between level 60 and 75, Ranks 4 through 6 work on spells between level 65 and 80 and Ranks 7 through 12 work on spells between level 70 and 85. Ranks 13 through 15 work on spells between level 85 and 90. Ranks 16, 17, and 18 work on spells up to level 91, 93 and 95 respectively. Ranks 18, 19, and 20 work on levels 96, 98, and 100 respectively while increasing the proc chance as well as the damage inflicted.",
    [6299] = "Provides a version of Resurrection.",
    [6302] = "Reduces the reuse timer on your Reckless Abandon ability by 2 minutes per rank.",
    [6322] = "This ability increases the accuracy of your thrown weapons.",
    [6325] = "When activated this ability will increase all forms of melee damage and speed your attacks as well as increase your overall accuracy.",
    [6328] = "Imbues your blades with a powerful poison that will reduce the targets poison resist and increase the poison damage they take. Additional ranks increase the damage inflicted. /alt activate 3515",
    [6333] = "Summons a short duration pet that will briefly gain the attention of one creature and then cause that creature to forget all anger when the pet dies.",
    [6334] = "This ability increases the damage of your thrown weapons.",
    [6337] = "This ability decreases the reuse time of Cacophony by 1 minute per rank.",
    [6340] = "This ability decreases the reuse time of Funeral Dirge by 1 minute per rank.",
    [6343] = "Each rank decreases the reuse time on your Eye Gouge, Stunning Kick and Crippling Strike abilities by 5 seconds.",
    [6346] = "This ability will reduce the reuse of your Silent Casting ability by 3 minutes per rank.",
    [6349] = "This ability will reduce the reuse of your Silent Casting ability by 3 minutes per rank.",
    [6355] = "Decreases the wait time before you can next use your Trueshot or Aimshot ability. Each rank reduces the reuse time by 6 minutes.",
    [6362] = "Reduces the reuse timer on your Reckless Discipline by 2 minutes per rank.",
    [6370] = "When active this ability increases your accuracy and the power of your melee attacks. Each rank further increases the power and accuracy of your attacks.",
    [6375] = "This ability increases the power of any critical hits your damage over time spells will do to your enemy. The first rank adds a 120 damage modifier and then each rank past the first increases the multiplier by 10.",
    [6379] = "This ability moves your companion forward in the direction you are facing.",
    [6380] = "This ability allows the Beastlord to share some of his natural attunement with his target in the form of health and mana. Each new rank increases the amount of health and mana bestowed upon your target.",
    [6383] = "The first three ranks of this ability increases the chance for all pets to avoid melee damage by 5, 7 and 10%. Each additional rank increases this chance by 2%.",
    [6386] = "This ability grants a chance to endure what would otherwise be a stunning blow, from any angle, without being stunned. Each rank improves your chance to avoid being stunned by 5%.",
    [6395] = "Grants a Paladin an innate chance to heal himself with each swing. Additional ranks increase the strength of the heal.",
    [6422] = "The planes demand a certain hardiness of those who adventure within.  Each rank of this ability adds an additional 1% to your maximum hit points.  You gain the ability to train an additional rank at levels 61, 63, and 65.",
    [6436] = "Provides a reduced chance for your root spells to break when an NPC is struck by a non melee attack.",
    [6445] = "This ability reduces the cast time of your Suspended Minion ability by 15%, 30% and 50%.",
    [6452] = "This ability reduces the time between casts of your summon axe abilities by 1 second per rank.",
    [6455] = "Calls someone from your group to your side by flinging them into the air and propelling them towards you. Additional ranks increase the range that you summon your party member.",
    [6458] = "This ability will reduce the cast time of your Survival of the Fittest spells by 15%, 30% and 50% in three ranks. It will also reduce the reuse time of these spells by 30 seconds per rank.",
    [6461] = "This ability will reduce the cast time of your Ancestral Intervention spells by 15%, 30% and 50% in three ranks. It will also reduce the reuse time of these spells by 30 seconds per rank.",
    [6467] = "The planes demand a certain hardiness of those who adventure within.  Each rank of this ability adds an additional 1% to your maximum hit points.  You gain the ability to train an additional rank at levels 61, 63, and 65.",
    [6478] = "Each rank of this passive ability reduces the time required between uses of Blessing of Resurrection by 1 second.",
    [6481] = "Each rank of this passive ability reduces the time required between uses of Divine Resurrection by 10%.",
    [6488] = "This ability increases the power of all healing abilities by 20% for up to sixty seconds. Each additional rank increases the healing bonus slightly.",
    [6489] = "Each rank of this passive ability reduces the time required between uses of your Holyforge Discipline by 10 minutes.",
    [6492] = "This ability imbues your weapons with the power of holy judgement. Lasts for up to 5 minutes or 20 uses whichever comes first. Additional ranks increase the damage of holy judgement.",
    [6499] = "Furious Leap allows you to jump forward a short distance.",
    [6503] = "Reduces the casting time of Harvest of Druzzil. Rank 1 reduces the cast time by 12%. Rank 2 reduces the cast time by 24%. Rank 3 reduces the cast time by 36% and Rank 4 reduces the cast time by 50%.",
    [6508] = "Summons several skeletons to fight beside the Shadow Knight for a short time. Additional ranks  increase the time the skeletons remain before returning to the grave.",
    [6511] = "This ability increases the accuracy of your archery.",
    [6514] = "Reduces the casting time of Call of the Wild. Rank 1 reduces the cast time by 15%, Rank 2 by 30% and Rank 3 by 50%.",
    [6533] = "Allows you to place your target in a state of walking sleep, leaving them confused and unable to fight.",
    [6534] = "Your party falls into a rhythm and each member feels their melee strikes speed up and become more accurate.",
    [6535] = "Increases a Bard's skill with a lockpick.",
    [6536] = "Provides an increase in run speed for the bard and members of the bard's party. /alt activate 3704",
    [6537] = "Bless your companion with an enduring heal that will last for one minute and heal for increasing amounts of health. Each Rank increases the amount your companion is healed for.",
    [6538] = "Decreases the reuse time of the Ability Bestial Alignment. Each Rank reduces the reuse timer by 12 minutes.",
    [6539] = "Reduces the damage your pet takes from damage shields when striking a foe with the off hand as well as provides a small amount of evasion and mitigates the effects of melee and spell damage, up to a point. Each rank further increases the power of some of these effects.",
    [6540] = "Each rank will increase your max skill cap for triple attack by 5 points - this will have no function unless you already have access to the triple attack skill naturally somehow, usually through class levels.",
    [6542] = "Allows a Berserker to throw caution to the wind and enter into a heightened state of combat at the risk of suffering terrible wounds when the burst of fury has run its course.",
    [6543] = "Provides a version of Resurrection.",
    [6545] = "Reduces the reuse time on your ability Call of the Wild. Each rank provides a 120 second reduction.",
    [6546] = "This ability increases your attack power by 4 each rank. You will gain this ability automatically once each level starting at level 55.",
    [6548] = "Provides a reduced chance for your root spells to break when an NPC is struck by a non melee attack as well as increases the maximum duration of your root spells by 1 tick.",
    [6552] = "This ability will decrease the reuse time of your spells Mana Flare and Mana Recursion spells by 1 second per rank.",
    [6557] = "This ability grants you a chance to bash your opponent upon a successful riposte of a melee attack. Additional ranks increase the chance of a riposte with a bash.",
    [6558] = "This ability grants you a chance to kick your opponent upon a successful riposte of a melee attack. Additional ranks increase the chance of a riposte with a kick.",
    [6559] = "This ability reduces the reuse on Ligament slice. Each rank reduces the timer by 15 seconds.",
    [6560] = "This ability grants you a chance to backstab your opponent upon a successful riposte of a melee attack. Additional ranks increase the chance of a riposte with a backstab.",
    [6561] = "This ability will deal damage to your foe directly and will do additional damage if your foe is relatively full health. Additional ranks increase the strength of this effect.",
    [6562] = "This ability will allow you to become invisible for a period of time.",
    [6563] = "This ability will slow your foe, causing them to do less damage with melee attacks. /alt activate 3729",
    [6564] = "This ability will cause you to periodically infuse all your foes with intense hatred towards you.",
    [6565] = "A blow to your opponent's sensitive areas, this will cause your foe to be less accurate and causes physical attacks against them to be more effective while recovering from your blow.  /alt activate 3732",
    [6566] = "This ability grants you a chance to kick your opponent upon a successful riposte of a melee attack. Additional ranks increase the chance of a riposte with a kick.",
    [6601] = "This ability grants you an innate chance to cast a group heal spell each time you stun an opponent. Additional ranks increase your chance to cast the heal through Rank 5. Additional ranks beyond Rank 5 increase the power of the heal only.",
    [6607] = "This ability, when active, will increase the damage you do at the cost of having heals that hit you be less effective. Additional ranks increase your damage dealing capabilities. /alt activate 800",
    [6610] = "You can use this ability to strike your opponent for a small amount of damage.",
    [6611] = "This passive ability will reduce the reuse timer on your Fortitude Discipline by two minutes per rank.",
    [6614] = "This passive ability will reduce the reuse timer on your Furious Discipline by two minutes per rank.",
    [6617] = "This ability, when active, will reduce the amount of damage you take from melee sources for up to 15 attacks. Each additional rank further reduces the incoming damage.",
    [6630] = "Increases the critical hit chance of all pets' melee attacks by 1% per rank.",
    [6635] = "Grants you an alternative version of your Harmshield ability.",
    [6636] = "This ability increases the strength of your critical spell hits, providing a damage increase of roughly 7% per rank to critical spell damage.",
    [6639] = "Grants you an alternative version of your Voice of Thule ability. Additional ranks increase the level of hate given.",
    [6640] = "This ability will fill creatures around you with hatred towards you.",
    [6641] = "This passive ability will grant you a chance that each Terror spell that is level 70 or higher you cast will provide you with a form of melee protection. Additional ranks increase the amount of damage your protection will absorb.",
    [6644] = "A short distance shadow step that will propel you forward.",
    [6645] = "This ability provides a version of the Bite of Chaos spell. Each additional rank increases the damage inflicted slightly. /alt activate 825",
    [6646] = "This ability provides a darkness snare ability that does not do damage to your target. /alt activate 826",
    [6663] = "This ability allows the Rogue to periodically perform a dazzling display of weaponry and dexterity that will reduce the Rogue's opponent's hate towards the Rogue. Additional ranks increase the amount of hate removed.",
    [6666] = "This passive ability will extend the duration of your Thief's Eyes effect by two ticks per rank.",
    [6668] = "This passive ability will extend the duration of your Ligament Slice effect by two ticks per rank.",
    [6671] = "This ability grants you the option of assuming a disguise.",
    [6672] = "This ability grants you the option of assuming a disguise.",
    [6673] = "This ability grants you the option of assuming a disguise.",
    [6674] = "This ability grants you the option of assuming a disguise.",
    [6675] = "This ability grants you the option of assuming a disguise.",
    [6676] = "This ability grants you the option of assuming a disguise.",
    [6691] = "This ability provides a fast reuse version of Tigir's Insects.",
    [6692] = "This ability, when active, will reduce the chance that your spells will be resisted when you cast them. Each rank will work on spells that are equal to or lower than the level that you purchase each rank at.",
    [6697] = "This passive ability will reduce the reuse timer of your Dampen Resistance ability by 30 seconds per rank.",
    [6702] = "This ability provides you with the ability to attune yourself with the spirits and move silently and quickly.",
    [6703] = "This passive ability will reduce the reuse timer of your Virulent Paralysis ability by 10 seconds per rank.",
    [6706] = "This activated ability grants you a chance, when active, for your slow spells to have a secondary damage over time effect accompany them. Additional ranks increase the power of this effect. /alt activate 861",
    [6709] = "This ability will reduce the casting time of your Blood of Nadox spell by 5% per rank.",
    [6712] = "This passive ability will reduce the reuse timer of your Spirit Call ability by 30 seconds per rank.",
    [6750] = "This ability provides you with a magical arrow that will be able to draw a single target from a group of enemies. This ability works on targets that are level 85 or lower. Rank 2 increases the maximum level of effectiveness to 95. Each rank thereafter increases the effective level by 5.",
    [6751] = "This passive ability provides a timer reduction to your Weapon Shield Discipline. Each rank will reduce the timer by four minutes.",
    [6754] = "This activated ability provides you with a short duration boost to your ability to attack your foes. Each rank increases the damage and accuracy of your skill attacks.",
    [6755] = "This ability provides a group version of your Guardian of the Forest ability. Additional ranks increase the power of the effect on your group members.",
    [6758] = "You summon a pack of wolves to hunt at your side for a short period of time! Additional ranks increase the power of the pack you summon.",
    [6761] = "This ability gives you a chance to bypass your opponents special defenses such as dodge, block, parry, and riposte.",
    [6764] = "This activated ability provides you with a short term large boost to your defense.",
    [6765] = "This passive ability will increase the amount of damage you do when you score a critical hit with your archery attacks. Additional ranks increase the critical damage further.",
    [6791] = "When you cast a stun spell this passive ability gives you a chance to bless your group with healing. Additional ranks improve the amount of healing you do.",
    [6794] = "This ability will allow you to use a low resistance snare spell that will only take hold on the undead.",
    [6815] = "This ability summons a small army of the dead that fiercely attack your foes and then fade away. Additional ranks increase the power of the dead you summon.",
    [6818] = "This ability gives you the ability to randomly teleport a short distance forward.",
    [6819] = "This passive ability reduces the time between uses of your ability Blood Magic by 3 minutes per rank.",
    [6822] = "This ability grants you a low resistance mesmerization ability that only works on the undead. Each rank increases the maximum level of effectiveness, and slightly increases the change for the target's memory to be wiped.",
    [6823] = "This passive ability reduces the time between uses of your ability Swarm of Decay by 3 minutes per rank.",
    [6828] = "This ability allows you to turn into a Zombie at will and also grants a small boost to survivability.",
    [6870] = "This passive ability will reduce the reuse time on your Song of Stone ability by three minutes per rank.",
    [6908] = "Each rank of this ability reduces the time required between uses of your Cascading Rage ability by 3 minutes.",
    [6930] = "This ability is similar to your Battle Leap ability but will stun your target as you make contact.",
    [6931] = "This ability will transform you into a living golem and increase your melee damage. As a side effect of the change you will move more slowly. Each additional rank increases the damage inflicted.",
    [6932] = "This ability provides you with a chance to do an attack to your opponent that will leave them confused and less angry with you. Additional ranks increase the power of the effect. /alt activate 962",
    [6935] = "Ranks 1, 2, and 3 will reduce the reuse time of your Savage Spirit ability by three minutes per rank. Each rank thereafter reduces this time by 5 minutes.",
    [6938] = "This passive ability grants you a chance to do a final attack when you die. Additional ranks increase the chance and power of the attack.",
    [6941] = "This ability provides you with a reduction in time between uses of your distraction attack ability by two minutes for each rank purchased.",
    [6970] = "This ability allows you to quickly disappear from sight for a short time.",
    [6971] = "This ability summons a set of rabid defenders to maul your target. Additional ranks increase the power of your summoned warders.",
    [6974] = "This ability will reduce the reuse timer of your animalistic attacks.",
    [6977] = "This ability will reduce the reuse timer of your Focused Paragon ability by six seconds per rank.",
    [6980] = "This ability will reduce the reuse timer of your Paragon ability by forty five seconds per rank.",
    [6983] = "This ability gives you a group version of your Bestial Alignment ability.",
    [6984] = "This ability allows you to imitate the bite of an asp and poison your target with a short but powerful venom. The first rank damage varies and scales with level up to about 95 a tick. The second rank raises it to 150 a tick and the third 300. /alt activate 986",
    [6985] = "This ability allows you to swipe at the eyes of your opponent making it harder for your opponent to see and attack.",
    [6986] = "This ability will pummel your opponent with a blow so powerful that it will leave your opponent stunned for a short period of time.",
    [6987] = "This ability provides you with the ability to have 1 additional Aura active at a time, per rank.",
    [6988] = "This ability extends the duration of your Group Bestial Alignment ability by 1 tick per rank.",
    [7000] = "This ability increases the power of many forms of damage and healing.",
    [7002] = "Stores some health and vitality in a protective shield around yourself. Some of your wounds will be healed when your protection fades or is lost.",
    [7003] = "This ability increases the damage done by your pet in three steps. The first step will increase your pet's minimum damage by 10%, the next by 15% and the final step by 20%.",
    [7004] = "This ability increases the hate you generate by 30%.",
    [7005] = "This ability decreases the amount of time required between uses of Stealthy Getaway by ten percent per rank. You may train in this ability once each level, upon reaching level 73.",
    [7010] = "This passive ability increases your ability to resist silencing effects by 25%. Each additional rank increases your ability to resist silencing effects by 5%.",
    [7016] = "Once activated, Glyph of the Master will absorb a large percentage of incoming damage from spells and melee attacks.  It will last for 3 minutes or until it has absorbed a total of 50,000 damage.",
    [7017] = "Once activated, Glyph of Lost Secrets decreases the mana usage of your spells for 15 minutes.  Glyph of Lost Secrets has no effect on complete healing or percentage-based healing spells.",
    [7018] = "Once activated, Glyph of Genari Might increases your maximum hit points and mana by between 2400 and 3350 for 30 minutes. This glyph does not increase your current hit points or mana.",
    [7019] = "Once activated, Glyph of the Cataclysm increases the damage done by your critical melee hits and damage spells by 60% of the base damage for 2 minutes. This ability does not impact melee special attacks.",
    [7033] = "Each rank of this ability increases the number of attacks Warlord's Bravery can withstand by 5.",
    [7036] = "Each rank of this ability lowers the time between uses of Blast of Anger by 10 seconds.",
    [7062] = "Grants an increase of 50 points to the Forage skill of anyone who purchases it. Will increase the skill cap for those that have the Forage skill and grant the skill and raise the cap to those that do not.",
    [7069] = "An invisibility that will not fade over time.",
    [7100] = "Decreases the wait time before you can next use your Avatar ability by 3 minutes per rank.",
    [7103] = "This ability decreases the amount of time required between uses of Purification by ten percent per rank.",
    [7106] = "This ability grants you a chance to kick your opponent upon a successful riposte of a melee attack. Additional ranks increase the chance of a riposte with a kick.",
    [7407] = "This ability grants you immunity from fear effects. You thrive upon injury to set yourself into furious rage. What could possibly scare you?",
    [7664] = "This ability decreases the amount of time required between uses of Wrath of the Wild by ten seconds per rank.",
    [7669] = "This ability will cause everyone in your group to become smaller for a time. /alt activate 7025",
    [7689] = "This abilty blasts your target with the light of Rodcet Nife, instantly healing their wounds.",
    [7690] = "This ability provides you with the ability to have 1 additional Aura active at a time, per rank.",
    [7695] = "This ability will reduce the casting time of your Blood of Avoling spell by 5% per rank.",
    [7698] = "This ability gives you an alternate version of your Dead Man Floating spell.",
    [7699] = "As you are the embodiement of fear itself, you are unaffected by fear spells.",
    [7703] = "You embrace the spectre of death, trading your life for mana. Exchanges 1000 health for 600 mana.",
    [7712] = "Disruptive Persecution strikes with a damaging blast of holy magic and has a chance to interrupt your target's spells as they are being cast.",
    [7715] = "This passive ability reduces the time required between uses of your Whisperwind ability by 2 seconds per rank.",
    [7732] = "This ability allows you to enchant a bar of dwerium using some of your mana.",
    [7734] = "This ability allows you to enchant ten bars of dwerium using some of your mana.",
    [7735] = "This ability allows you to enchant a bar of palladium using some of your mana.",
    [7736] = "This ability allows you to enchant three bars of palladium using some of your mana.",
    [7737] = "This ability allows you to enchant ten bars of palladium using some of your mana.",
    [7738] = "This ability allows you to enchant twenty bars of palladium using some of your mana.",
    [7739] = "This ability allows you to enchant a bar of Temporite using some of your mana.",
    [7740] = "This ability allows you to enchant ten bars of Temporite using some of your mana.",
    [7741] = "This ability allows you to enchant a bar of Cosgrite using some of your mana.",
    [7742] = "This ability allows you to enchant ten bars of Cosgrite using some of your mana.",
    [7743] = "This passive ability reduces the time required between uses of Guardian of the Forest by 10% per rank.",
    [7746] = "This passive ability reduces the time required between uses of your Flusterbolt ability by 2 seconds per rank.",
    [7747] = "This ability fires an arrow tipped with a vial of oil causing the enemy to take increased damage from fire for up to 18 seconds. Multiple applications will not increase the damage or extend the time.",
    [7748] = "Years spent deep in the wilderness of Norrath allows Rangers to increase their running speed. This increase does not stack with movement rate increasing spell effects.",
    [7751] = "This passive ability reduces the time required between uses of your Cover Tracks ability by 1 minute per rank.",
    [7754] = "This ability provides you with the power to call a levitating nightmare to your side. Requires Unholy Steed to purchase.",
    [7755] = "This ability covers your skin in a sickly ooze causing intense pain to those who strike you for up to 60 seconds.",
    [7756] = "Your intimate knowledge of death and the dead allows you to immitate the appearance of a corpse at will.",
    [7757] = "This passive ability reduces the time required between uses of your Visage of Death ability by 2 minutes per rank.",
    [7760] = "Each rank of this passive abilty reduces the time required between uses of your Hate Step ability by 10%.",
    [7765] = "This passive ability increases the effectiveness of your Burst of Life ability by 1000hp per rank.",
    [7800] = "Grants the Shadow Knight a powerful destructive ability that inflicts terrible pain and damage on their target. /alt activate 6000",
    [7818] = "This ability gives you a chance to throw an additional axe when using your volley attacks. Each additional rank increases the damage inflicted by a successful attack.",
    [7822] = "This ability reduces the reuse timer on your Force of Will ability by 1 second per rank.",
    [7827] = "This ability extends the life of your Rumbling Servant by a short time. Each rank increases the duration.",
    [7828] = "This ability reduces the reuse time of your Rumbling Servant by 2 seconds per rank.",
    [7832] = "This ability reduces the reuse timer of your Frenzied Burnout by 1 minute per rank",
    [7850] = "Grants the Paladin a Divine heal. Additional ranks increase the power of this ability by increasing the amount healed. /alt activate 6001",
    [7869] = "This ability will allow you to teleport a short distance forward by sheer force of will. Additional ranks extend the distance you may travel.",
    [7872] = "This ability will provide you with a boost to various forms of melee damage. Additional ranks increase the potency of this effect.",
    [7875] = "The Five Point Palm Exploding Heart Technique will convert your life force into a destructive blow that will take effect a moment after you strike. Additional ranks increase the potency of this effect.",
    [7884] = "This passive ability will extend the duration of your Speed Focus discipline by 1 tick.",
    [7885] = "This passive ability will extend the duration of your Crystalpalm discipline by 1 tick.",
    [7900] = "This ability gives you a chance to steal power from a summoned creature and give it to your pet whenever you use a bane spell on a summoned creature. Additional ranks increase the power given to your pet.",
    [7903] = "This ability gives you a version of your Malo line of spells that is slightly more reliable than other versions. The first rank lowers Cold, Magic, Poison, and Fire resist by 75 and the second by 100. /alt activate 1041",
    [7940] = "This passive ability will reduce the reuse timer on your Turn Undead ability by 15 seconds per rank.",
    [7943] = "This ability allows you to cast a Divine Aura spell on a player target, temporarily rendering the target invulnerable and granting a short duration heal on your target.",
    [7944] = "This ability allows you to cast a spell that cures most ailments that may be afflicting your group.",
    [7945] = "This passive ability will reduce the reuse timer on your Frantic Renewal, Frenetic Renewal and Desperate Renewal spells by 2 seconds per rank.",
    [7948] = "This passive ability grants you a chance to deliver a heal to your target each time you attempt to cure any friendly player. Additional ranks increase the power of your heal. This ability will work on heal spells starting at level 60 and up to an equal level to the level required to purchase each rank of the Ability.",
    [7951] = "This ability gives you the ability to cast a large heal over time spell at no mana cost on a single target.",
    [7980] = "This passive ability will make it less likely that your animal based charm spells will break before they have run their course completely.",
    [7983] = "This passive ability will reduce the reuse timer of your Nature's Guardian ability by two minutes per rank.",
    [7986] = "Through this ability you are able to assume the form of a black spirit wolf. While in this form, your direct damage spells will have a higher chance to score a critical hit and you will be resistant to fire based attacks. Additionally your detrimental spell casting will consume less mana for the duration of this effect. Additional ranks increases your resistance to fire, reduces the amount of mana for this effect, and increases the critical chance for direct damage attacks. /alt activate 1092",
    [7989] = "This passive ability will reduce the reuse timer of your Spirit of the White Wolf and Spirit of the Black Wolf abilities by thirty seconds per rank.",
    [8000] = "This ability decreases the cast time of your healing spells by 50% for 24 seconds. Spells which have already been reduced by other effects may not receive the same level of benefit.  Additional ranks extend the duration by 1 tick per rank.",
    [8005] = "This activated ability will allow you to focus on your mystical arts for a short time, granting you a greater chance that your detrimental spells will strike your target.",
    [8030] = "This Ability, when activated, will temporarily remove you from all combat and leave you immobile for a short time.",
    [8031] = "This passive ability will reduce the time between uses of your Veil of Mindshadow ability by 30 seconds per rank.",
    [8034] = "This ability, when activated, calls forth a Doppelganger of your current target that will attack your target.",
    [8035] = "This passive ability will reduce the time between uses of your Edict of Command ability by three minutes per rank.",
    [8038] = "This Ability, when activated, has a chance to make your target forget everything and everyone for a short time.",
    [8039] = "This ability, when activated, has a chance to make any enemy hit by this ability less resistant to magical attacks until the effect fades. This spell is a point-blank area-of-effect spell and will hit all targtes in a small radius around the caster. /alt activate 1125",
    [8040] = "This passive ability will allow item effects to last longer for you when you use them. Additional ranks further increase the duration increase.",
    [8060] = "This ability, when active, will add additional damage to all Magic based spells that you cast. Additional ranks increase the amount of damage added to each cast.",
    [8063] = "This ability, when active, will add additional damage to all Ice based spells that you cast. Additional ranks increase the amount of damage added to each cast.",
    [8066] = "This ability, when active, will add additional damage to all Fire based spells that you cast. Additional ranks increase the amount of damage added to each cast.",
    [8069] = "This passive ability will reduce the chance that your root spells will break when a direct damage spell strikes your target. Additional ranks further reduce the chance that your root will break.",
    [8072] = "This ability grants you a direct damage capability using the power of your will as a weapon. Additional ranks increase the power of your strike.",
    [8075] = "This ability grants you a form of your Atol's Shackles spell.",
    [8076] = "This passive ability will reduce the reuse timer on your Manaburn ability by 6 minutes per rank.",
    [8082] = "This passive ability will reduce the reuse timer on your Call of Xuzl ability by 1 minute per rank.",
    [8190] = "This passive ability will increase the chance that your companions have to execute a flurry of attacks when in combat. Each rank adds a 3% chance.",
    [8193] = "Test",
    [8194] = "This ability grants you a perfected ability to Levitate on demand.",
    [8195] = "This passive ability will decrease the amount of time you must wait between uses of your Fortify Companion. Ranks 1, 2, and 3 reduce the reuse time by two minutes per rank. Ranks 4, 5, and 6 further reduce this time by 3 minutes per rank.",
    [8198] = "This passive ability will allow the critical strikes that you do with weapons to deal additional damage in the form of stronger critical hits. Additional ranks increase the power of your critical hits with items.",
    [8201] = "This passive ability will grant a chance for your companions to score a critical hit when attacking via melee. Each rank adds a 1% chance.",
    [8204] = "This passive ability will decrease the cast time of your Radiant Cure ability by ten percent per rank.",
    [8207] = "This passive ability will decrease the cast time of your Radiant Cure ability by ten percent per rank.",
    [8210] = "This passive ability will add fifty mana per rank to your mana total. Beginning with rank 16, this ability adds 100 mana.",
    [8215] = "This passive ability will add fifty endurance per rank to your endurance total.",
    [8220] = "An invisibility that will not fade over time than you can share with your group.",
    [8221] = "This activated ability will allow you to focus on your mystical arts for a short time, granting you a greater chance that your detrimental spells will strike your target. /alt activate 1211",
    [8222] = "This ability grants your group a perfected ability to be invisible to the undead.",
    [8224] = "Whenever you cast a level direct healing spell, there is a chance that your target will be blessed with an additional amount of healing.  Additional ranks increase the amount of healing done.",
    [8227] = "This ability grants you a faster casting version of your Summon Companion spell. /alt activate 1215",
    [8228] = "This passive ability grants you an innate resistance to charm spells. Additional ranks increase your resistance further.",
    [8231] = "This ability grants you an additional version of your Gate spell.",
    [8232] = "This passive ability will allow item effects to last longer for you when you use them. Additional ranks further increase the duration increase.",
    [8235] = "This passive ability reflects your vast experience and grants you an additional amount of innate protection in the form of boosted armor class. Additional ranks further boost your armor class.",
    [8240] = "This passive ability reflects your vast experience and grants you an additional amount of innate protection in the form of boosted armor class. Additional ranks further boost your armor class.",
    [8245] = "This passive ability reflects your vast experience and grants you an additional amount of innate protection in the form of boosted armor class. Additional ranks further boost your armor class.",
    [8250] = "This passive ability reflects your vast experience and grants you an additional amount of innate protection in the form of boosted armor class. Additional ranks further boost your armor class.",
    [8255] = "This passive ability reflects your vast experience and grants you an additional amount of innate protection in the form of boosted armor class. Additional ranks further boost your armor class.",
    [8263] = "Raises the maximum that your strength can be increased to with items and spells by 5 points per rank.",
    [8268] = "Raises the maximum that your stamina can be increased to with items and spells by 5 points per rank.",
    [8273] = "Raises the maximum that your agility can be increased to with items and spells by 5 points per rank.",
    [8278] = "Raises the maximum that your dexterity can be increased to with items and spells by 5 points per rank.",
    [8283] = "Raises the maximum that your wisdom can be increased to with items and spells by 5 points per rank.",
    [8288] = "Raises the maximum that your intelligence can be increased to with items and spells by 5 points per rank.",
    [8293] = "Raises the maximum that your charisma can be increased to with items and spells by 5 points per rank.",
    [8300] = "This ability increases incoming healing by 3% per rank for 1 minute.",
    [8303] = "This ability allows you to proc every swing for 6 seconds. This ability will only work on procs attached to your equipped weapon(s), prioritizing native procs on the weapon first and, if none, will work on proc augments added to the weapon instead. /alt activate 131",
    [8312] = "This ability enhances the original Area Taunt with additional hate generation for up to 30 seconds.",
    [8314] = "This passive ability grants you an improved innate chance to resist attacks that would slow your feet and impeed your movement rate. Additional ranks increase your chance to resist.",
    [8317] = "This passive ability reduces the time required between uses of your Selo's Kick ability by 1 second per rank.",
    [8319] = "This passive ability reduces the time required between uses of your Boastful Bellow ability by 2 seconds per rank.",
    [8322] = "This passive ability gives you a 15 percent chance to resist mesmerizing spell effects. Further ranks increase this resistance by 5% per rank.",
    [8325] = "This passive ability reduces the amount of hate generated from your attacks. Each rank reduces the amount of hate generated by 3%.",
    [8331] = "This passive ability increases the effectiveness of your Thief's Eyes ability by 10%.",
    [8332] = "This passive ability extends the duration of your Languid Bite ability by 1 tick per rank.",
    [8335] = "This passive ability reduces the cast time of your AA version Malosinete spell by .2 seconds per rank.",
    [8341] = "This ability allows your pet a chance to fade from the enemy's sight.",
    [8342] = "This ability creates a shield of runes around your pet. It absorbs 25 percent of incoming melee damage up to a total of 30000 damage absorbed. /alt activate 8342",
    [8347] = "This passive ability reduces the time required between uses of your Mana Draw ability. Each rank reduces this time by 10 minutes.",
    [8350] = "This passive ability reduces the time required between uses of your mezmerization spells by 10%. This will only affect abilities with a level of 80 or greater.",
    [9000] = "Make use of the new Norrathian Resupply Initiative and summon a helpful mechanical merchant to your side! Fully stocked with a variety of useful and interesting items, our vendor is ready to take your order. You look like you could use a Fish Scale!",
    [9031] = "Make use of the new Norrathian Banking Consortium's latest initiative and summon a helpful mechanical banker to your side! Your account is safe with us!",
    [9032] = "Make use of the new Norrathian Expediency Initiative and summon a augmentation distiller vendor to your side.",
    [9033] = "This passive ability reduces the time required between uses of your veteran's rewards by 25 percent.",
    [9100] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Intellect you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Intellect you will be able to train in the First Spire of Arcanum. After you master the First Spire and the next three ranks of Fundament of Intellect you can then train the Second Spire of Arcanum. After completing your training with the Second Spire and completing the final three ranks of Fundament of Intellect you will be able to train the Third Spire of Arcanum and complete your mastery.<br><br>Fundament of Intellect itself will grant you 10 mana per rank and increase the cap on your Intelligence skill by 1 point per rank.",
    [9101] = "Each rank will increase your max skill cap for research by 10 points.",
    [9109] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Intellect you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Intellect you will be able to train in the First Spire of Necromancy. After you master the First Spire and the next three ranks of Fundament of Intellect you can then train the Second Spire of Necromancy. After completing your training with the Second Spire and completing the final three ranks of Fundament of Intellect you will be able to train the Third Spire of Necromancy and complete your mastery.<br><br>Fundament of Intellect itself will grant you 10 hit points per rank and increase the cap on your Stamina by 1 point per rank.",
    [9111] = "Each rank will increase your max skill cap for research by 10 points.",
    [9118] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Intellect you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Intellect you will be able to train in the First Spire of Elements. After you master the First Spire and the next three ranks of Fundament of Intellect you can then train the Second Spire of Elements. After completing your training with the Second Spire and completing the final three ranks of Fundament of Intellect you will be able to train the Third Spire of Elements and complete your mastery.<br><br>Fundament of Intellect itself will grant you 10 mana per rank and increase the cap on your Intelligence skill by 1 point per rank.",
    [9121] = "Each rank will increase your max skill cap for research by 10 points.",
    [9127] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Intellect you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Intellect you will be able to train in the First Spire of Enchantment. After you master the First Spire and the next three ranks of Fundament of Intellect you can then train the Second Spire of Enchantment. After completing your training with the Second Spire and completing the final three ranks of Fundament of Intellect you will be able to train the Third Spire of Enchantment and complete your mastery.<br><br>Fundament of Intellect itself will grant you 10 hit points per rank and increase the cap on your Intelligence skill by 1 point per rank.",
    [9136] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Wisdom you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Wisdom you will be able to train in the First Spire of Divinity. After you master the First Spire and the next three ranks of Fundament of Wisdom you can then train the Second Spire of Divinity. After completing your training with the Second Spire and completing the final three ranks of Fundament of Wisdom you will be able to train the Third Spire of Divinity and complete your mastery.<br><br>Fundament of Wisdom itself will grant you 10 mana per rank and increase the cap on your Wisdom skill by 1 point per rank.",
    [9145] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Wisdom you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Wisdom you will be able to train in the First Spire of Nature. After you master the First Spire and the next three ranks of Fundament of Wisdom you can then train the Second Spire of Nature. After completing your training with the Second Spire and completing the final three ranks of Fundament of Wisdom you will be able to train the Third Spire of Nature and complete your mastery.<br><br>Fundament of Wisdom itself will grant you 10 mana per rank and increase the cap on your Wisdom skill by 1 point per rank.",
    [9154] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Wisdom you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Wisdom you will be able to train in the First Spire of Ancestors. After you master the First Spire and the next three ranks of Fundament of Wisdom you can then train the Second Spire of Ancestors. After completing your training with the Second Spire and completing the final three ranks of Fundament of Wisdom you will be able to train the Third Spire of Ancestors and complete your mastery.<br><br>Fundament of Wisdom itself will grant you 10 hit points per rank and increase the cap on your Stamina by 1 point per rank.",
    [9163] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Power you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Power you will be able to train in the First Spire of the Pathfinders. After you master the First Spire and the next three ranks of Fundament of Power you can then train the Second Spire of the Pathfinders. After completing your training with the Second Spire and completing the final three ranks of Fundament of Power you will be able to train the Third Spire of the Pathfinders and complete your mastery.<br><br>Fundament of Power itself will grant you 10 hit points per rank and increase the cap on your Dexterity by 1 point per rank.",
    [9172] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Power you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Power you will be able to train in the First Spire of the Reavers. After you master the First Spire and the next three ranks of Fundament of Power you can then train the Second Spire of the Reavers. After completing your training with the Second Spire and completing the final three ranks of Fundament of Power you will be able to train the Third Spire of the Reavers and complete your mastery.<br><br>Fundament of Power itself will grant you 10 hit points per rank and increase the cap on your Strength by 1 point per rank.",
    [9181] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Power you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Power you will be able to train in the First Spire of Holiness. After you master the First Spire and the next three ranks of Fundament of Power you can then train the Second Spire of Holiness. After completing your training with the Second Spire and completing the final three ranks of Fundament of Power you will be able to train the Third Spire of Holiness and complete your mastery.<br><br>Fundament of Power itself will grant you 10 hit points per rank and increase the cap on your Strength by 1 point per rank.",
    [9190] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Power you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Power you will be able to train in the First Spire of the Minstrels. After you master the First Spire and the next three ranks of Fundament of Power you can then train the Second Spire of the Minstrels. After completing your training with the Second Spire and completing the final three ranks of Fundament of Power you will be able to train the Third Spire of the Minstrels and complete your mastery.<br><br>Fundament of Power itself will grant you 10 hit points per rank and increase the cap on your Strength by 1 point per rank.",
    [9199] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Power you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Power you will be able to train in the First Spire of Savagery. After you master the First Spire and the next three ranks of Fundament of Power you can then train the Second Spire of Savagery. After completing your training with the Second Spire and completing the final three ranks of Fundament of Power you will be able to train the Third Spire of Savagery and complete your mastery.<br><br>Fundament of Power itself will grant you 10 mana per rank and increase the cap on your Strength by 1 point per rank.",
    [9208] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Combat you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Combat you will be able to train in the First Spire of the Warlord. After you master the First Spire and the next three ranks of Fundament of Combat you can then train the Second Spire of the Warlord. After completing your training with the Second Spire and completing the final three ranks of Fundament of Combat you will be able to train the Third Spire of the Warlord and complete your mastery.<br><br>Fundament of Combat itself will grant you 10 hit points per rank and increase the cap on your Strength by 1 point per rank.",
    [9217] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Combat you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Combat you will be able to train in the First Spire of the Sensei. After you master the First Spire and the next three ranks of Fundament of Combat you can then train the Second Spire of the Sensei. After completing your training with the Second Spire and completing the final three ranks of Fundament of Combat you will be able to train the Third Spire of the Sensei and complete your mastery.<br><br>Fundament of Combat itself will grant you 10 endurance per rank and increase the cap on your Strength by 1 point per rank.",
    [9226] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Combat you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Combat you will be able to train in the First Spire of the Savage Lord. After you master the First Spire and the next three ranks of Fundament of Combat you can then train the Second Spire of the Savage Lord. After completing your training with the Second Spire and completing the final three ranks of Fundament of Combat you will be able to train the Third Spire of the Savage Lord and complete your mastery.<br><br>Fundament of Combat itself will grant you 10 hit points per rank and increase the cap on your Strength by 1 point per rank.",
    [9235] = "After endless experiences and training, some individuals are able to forge their experiences into new understandings of the world around them. Lessons layered on top of other lessons form a tapestry of knowledge. As you master the Fundament of Combat you will unlock other new abilities and secrets. After training the first three ranks of Fundament of Combat you will be able to train in the First Spire of the Rake. After you master the First Spire and the next three ranks of Fundament of Combat you can then train the Second Spire of the Rake. After completing your training with the Second Spire and completing the final three ranks of Fundament of Combat you will be able to train the Third Spire of the Rake and complete your mastery.<br><br>Fundament of Combat itself will grant you 10 endurance per rank and increase the cap on your Strength by 1 point per rank.",
    [9300] = "This ability, when activated, will increase the chance that you will perform a critical strike with your spells. Additional ranks increase the chance that you will perform a critical strike.",
    [9303] = "This ability, when activated, will increase the damage done by your critical spell strikes. Additional ranks will increase the damage done by your critical strikes.",
    [9306] = "This ability, when activated, will decrease the mana cost of your detrimental spell casting. Additional ranks further reduce the mana cost of your detrimental spells.",
    [9309] = "You gather your strength and focus your mind which grants you the dexterity you need to use your weapon's magical effects with greater skill. Your focus also provides you with a chance for a small amount of protection from harm. Additional ranks increase the rate that your weapon procs will fire as well as the strength of the guard placed on you.",
    [9312] = "You gather your strength and focus your mind which grants you additional damage with all of your attacks. Additional ranks increase your damage bonus.",
    [9315] = "You summon an innate chance to respond to violence against you by increasing your evasion and powers of attack. As you continue to be attacked you will attain higher levels of evasion and attack until you reach an apex of power and then slowly return to normal.",
    [9318] = "This ability, when activated, will increase the chance that you will perform a critical strike with your spells. Additional ranks increase the chance that you will perform a critical strike.",
    [9321] = "This ability, when activated, will provide your pet with a proc that has an excellent chance of damaging your pet's foe.",
    [9324] = "This ability, when active, will place a powerful damage shield on your entire group and increase your group's resistance to fire. Additional ranks increase the power of the damage shield and resistance.",
    [9327] = "This ability, when activated, will give you a defensive proc that will call your Doppelganger into existance. For a short time your Doppelganger will attempt to protect you from your attacker. Additional ranks make it more likely that you will be protected.",
    [9330] = "This ability, when activated, will provide a boost to your group's overall mana pool as well as provide additional mana regeneration. Additional ranks increase the amount of mana added to your group's pool.",
    [9333] = "This ability, when activated, will increase the chance that you will perform a critical strike with your spells. Additional ranks increase the chance that you will perform a critical strike.",
    [9336] = "This ability, when active, will increase your chance to peform a critical strike with your damage over time spells. Additional ranks increase your chance.",
    [9339] = "This ability, when activated, will provide your pet with a proc that has an excellent chance of damaging your pet's foe.",
    [9342] = "This ability, when active, will increase the power of your critical damage over time spell's strikes. Additional ranks increase the power of this effect.",
    [9345] = "You gather your strength and focus your mind which grants you a chance to temporarily reduce your opponent's ability to perform melee attacks. Additional ranks increase the effectiveness of your debuff.",
    [9348] = "You gather your strength and focus your mind which grants you additional damage with all of your attacks. Additional ranks increase your damage bonus.",
    [9351] = "You gather your strength and focus your mind which grants you heightened levels of defense, allowing you to better survive in melee combat. Additional ranks increase the effectiveness of your mitigation and avoidance.",
    [9354] = "You gather your strength and focus your mind which grants you a chance to temporarily reduce your opponent's ability to perform melee attacks. Additional ranks increase the effectiveness of your debuff.",
    [9357] = "You gather your strength and focus your mind which grants you additional damage with all of your attacks. Additional ranks increase your damage bonus.",
    [9360] = "You gather your strength and focus your mind which grants you a bonus to your chance to score a critical strike and the damage you deal with a critical strike.",
    [9363] = "This ability, when active, will provide everyone in your group with a reduction in the amount of damage that they take from melee damage. Additional ranks further improve this protection.",
    [9366] = "This ability, when active, will grant additional damage done by everyone in your group when they cast damaging spells. Additional ranks will increase the damage added to each cast.",
    [9369] = "This ability, when active, will grant additional damage done by everyone in your group when they attack with melee combat. Additional ranks will increase the damage added to each hit.",
    [9372] = "You gather your strength and focus your mind which grants you additional damage with all of your attacks. Additional ranks increase your damage bonus.",
    [9375] = "This ability, when activated, will provide your pet with a proc that has an excellent chance of damaging your pet's foe.",
    [9378] = "This ability, when activated, will enhance the melee combat capabilities of you and your group. Additional ranks increase the power of this effect.",
    [9381] = "This ability, when activated, will cause all heal spells that land on you and your group to increase the amount of healing they do with the exception of Complete Heal. Additional ranks will further boost the healing improvement.",
    [9384] = "You gather your strength and focus your mind which grants you additional damage with all of your melee attacks. Additional ranks increase your damage bonus.",
    [9387] = "You gather your strength and focus your mind which grants you heightened levels of defense, allowing you to better survive in melee combat. Additional ranks increase the effectiveness of your mitigation and avoidance.",
    [9390] = "This ability, when active, provides you with additional chances to perform a critical strike with your spells. Additionally your critical strikes with spells will be increased in damage when this ability is active. Additional ranks further increase this effect.",
    [9393] = "You gather your strength and focus your mind which grants you additional damage with all of your attacks. Additional ranks increase your damage bonus.",
    [9396] = "You gather your strength and focus your mind which grants you heightened levels of defense, allowing you to better survive in melee combat. Additional ranks increase the effectiveness of your mitigation and avoidance.",
    [9399] = "This ability, when active, will boost the damage of your direct-damage procs. It will also make you more likely to proc while lowering the amount of hate that all of your actions generate.",
    [9402] = "You gather your strength and focus your mind which grants you additional damage with all of your attacks. Additional ranks increase your damage bonus.",
    [9405] = "This ability, when active, will slightly increase your groups durability as well as increase the amount of damage done by any critical melee or spell strikes.",
    [9408] = "This ability, when active, will increase your personal survivability as well as increase various forms of damage dealing that you may do. Additional ranks increase the mitigation and damage dealing increases.",
    [9411] = "This ability, when active, will add additional power to all heal spells that you cast that are at least level 75. Additional ranks further improve the power of your heals.",
    [9414] = "This ability, when active, will increase the survivability of everyone in your group. Additional ranks increase the durability of your group even more.",
    [9417] = "This ability, when activated, will increase the chance that you will perform a critical strike with your spells. Additional ranks increase the chance that you will perform a critical strike.",
    [9420] = "This ability, when active, will add additional power to all heal spells that you cast that are at least level 75. Additional ranks further improve the power of your heals.",
    [9423] = "This ability, when active, will provide your group with a boost to their hitpoint pool. Additional ranks improve the hitpoint gains.",
    [9426] = "This ability, when active, will increase your chance to peform a critical strike with your damage over time spells. Additional ranks increase your chance.",
    [9429] = "This ability, when active, will add additional power to all heal spells that you cast that are at least level 75. Additional ranks further improve the power of your heals.",
    [9432] = "This ability, when active, will increase your weapon's chance to proc as well as raise your accuracy and other statistics. Additional ranks increase these bonuses.",
    [9435] = "You gather your strength and focus your mind which grants you a chance to temporarily reduce your opponent's ability to perform melee attacks. Additional ranks increase the effectiveness of your debuff.",
    [9438] = "You gather your strength and focus your mind which grants additional accuracy and damage with thrown axes. Additional ranks increase the effectiveness with these weapons.",
    [9441] = "You gather your strength and focus your mind which grants you additional damage with all of your attacks. Additional ranks increase your damage bonus.",
    [9500] = "This ability will summon all of the corpses of the player you target. To summon a player's corpses you must be grouped with that player.",
    [9501] = "This ability will summon all of the corpses of the player you target. To summon a player's corpses you must be grouped with that player.",
    [9502] = "By activating this ability you will feel refreshed and many of your spell casting timers will be reset, allowing you to instantly use the refreshed abilities.",
    [9503] = "This passive ability will make all of your pets more resistant to attack. Each rank will add additional mitigation to your pets.",
    [9506] = "This passive ability will extend the duration of your swarm pets by 1 second per rank.",
    [9509] = "This passive ability will give you the innate chance to perform a twincast each time you cast a direct damage spell. Each rank will give you a 1% chance to perform a twincast.",
    [9512] = "This ability will grant you an innate bonus to your defenses when using a Two Hand Blunt weapon. Each rank will improve the protection afforded by your weapon.",
    [10329] = "This passive ability reduces the time required between uses of your Dirge of the Sleepwalker ability. Each rank reduces this time by 1 minute.",
    [10330] = "With pride in your voice you shout, stunning several of your foes at once, while inflicting slight damage, and reducing their ability to resist spells. Additional ranks increase the damage inflicted and the debuffs applied to the target.",
    [10331] = "With a shout, you leap forward!",
    [10332] = "This ability extends the duration of your charm spells by one tick per rank.",
    [10333] = "When activated this ability will cause your consciousness to shatter and each shard will attack your foe. Additional ranks increase the power of the shards of your consciousness. Ranks 4 through 6 add an additional shard per rank.",
    [10336] = "This ability, when activated, will allow you to execute a very suprising attack with your foot. Additional ranks increase the power of your strike.",
    [10339] = "When activated, this ability extends your songs by one tick.",
    [10340] = "Your feet are hardened from years of combat and intense training. Each rank of this ability increases the amount of damage done by your flying kicks.",
    [10343] = "Ranks 1, 2, and 3 lower the reuse time by 5 seconds each. Ranks 4, 5, and 6 then lowers the reuse time on your Stunning Kick by 2 seconds each.",
    [10346] = "This ability grants the monk a chance to inflict extra damage any time he makes a melee attack. Additional ranks increase the damage inflicted.",
    [10348] = "Provides a reduced chance for your root spells to break when an NPC is struck by an attack.",
    [10351] = "This ability projects an image of yourself which generates intense hatred in its target for a short time. When the image fades, this hatred is transfered to you.",
    [10352] = "This ability summons a companion which generates intense hatred in its target for a short time. When the image fades, this hatred is transfered to you.",
    [10353] = "This ability summons a companion which generates intense hatred in its target for a short time. When the image fades, this hatred is transfered to you.",
    [10354] = "Grants the Paladin a Divine heal upon whatever target your current enemy is fighting. Additional ranks increase the amount of healing delivered.",
    [10355] = "This ability gives you increased damage off of the imbued weapon procs that result from your self buffs, increasing their damage by 50 per rank.",
    [10358] = "This ability reduces the time required between uses of your Divine Intervention and Divine Intercession spells. Each rank reduces the reuse time by 10 seconds.",
    [10364] = "This ability improves the chance for your Atone spell to succeed. Each rank improves your chances by 5%.",
    [10367] = "This ability focuses your hatred to a single enemy with unresistable effect. Each rank increases the hate generated.",
    [10368] = "This ability uses your power over magic and nature to cover your tracks and conceal you from pursuit. Each rank decreases the chance you will be seen by 5%.",
    [10370] = "After training in this ability, NPCs will notice your magical activities 5, 10, and 20% less. Additional ranks will further reduce the attention given to you.",
    [10373] = "This ability allows your target to quickly disappear from sight for a short time.",
    [10374] = "This ability, when active, provides you with protection from melee attacks. Additional ranks increase the total amount of damage absorption per hit that you are afforded.",
    [10377] = "This ability, when active, cures detrimental effects from your body. Additional ranks increase the potency of the cure.",
    [10380] = "This ability increases the chance that your poison and disease spells will land on your target. Additional ranks increase your chance of success with these spells.",
    [10387] = "This ability when activated causes all melee swings to proc for 12 seconds while lowering the amount of hate generated for your actions.",
    [10388] = "When below 20% life, you receive a 30% chance for nature to bestow its blessings upon you, healing you and boosting your avoidance slightly. Rank 2 increases this chance to 50%. Rank 3 increases the instant healing as well as healing over time.",
    [10389] = "Each rank of this ability extends the use of your Sleight of Hand ability by 30 seconds.",
    [10392] = "This ability focuses your hatred to a single enemy with unresistable effect. Each rank increases the hate generated.",
    [10393] = "This ability gives you an alternate version of your Shackles of Tunare spell.",
    [10394] = "This ability bathes you in beacon of pure light, causing hatred and jealousy in all enemies around you. Additional ranks improve the amount of hate generated. /alt activate 10394",
    [10395] = "This ability gives you an alternate version of your Bobbing Corpse spell.",
    [10396] = "Through this ability your group is able to assume the form of a white spirit wolf. While in this form, beneficial spells will require less mana and you will be resistant to cold based attacks. Additionally you will have an increased chance to perform critical heals while this effect is active. Additional ranks further reduce the mana used for beneficial spells, increases the resistance to cold based attacks, as well as the critical chance for beneficial spells.",
    [10397] = "Through this ability your group is able to assume the form of a black spirit wolf. While in this form, your direct damage spells will have a higher chance to score a critical hit and you will be resistant to fire based attacks. Reduces mana cost of spells by 20%, grants 80 resist fire, 40 mana per tick, 10% critical chance for spells, a bonus to spell critical hit damage, a 20% less chance for enemies to resist spells, and a 9 bonus to casting level (which mostly affects target resist chance).",
    [10400] = "You can, through force of will, remove yourself from combat. The effort required to do so will stun you momentarily.  Additional ranks decrease the duration of the stun.",
    [10401] = "This ability will reduce the time required between uses of your Frenzy disciplines.",
    [10404] = "This ability will add one tick per rank to the Cry Havoc ability.",
    [10405] = "This ability reduces the time between uses of your Deflection Discipline by 2 minutes per rank.",
    [10410] = "Rogue Triple Attack Skillup Test",
    [10413] = "This ability reduces the reuse timer of your Host of the Elements ability by 1 minute per rank.",
    [10424] = "This ability provides an alternate version of your Hand of Ro spell.",
    [10425] = "This ability provides an alternate version of your Fixation of Ro spell.",
    [10426] = "For a brief time, you are able to commune with the woodland spirits who provide your party with exceptional regenerative abilities and a protective shield of armor.",
    [10427] = "This ability gives you an alternate, yet peaceful form of Convergence of Spirits.  The concentrated energy provides an exceptionally fast heal and leaves the target with a brief period of regeneration.",
    [10434] = "This passive ability reduces the cast time of your Army of the Dead ability by .5 seconds per rank.",
    [10450] = "This ability will cause you to score a critical heal for each heal you cast for a short time but at the cost of additional mana. As you gain ranks your mana penalty will shrink.",
    [10453] = "This passive ability increases your chances of landing a stun. Each rank adds one percent to your chance to land a stun.",
    [10456] = "This passive ability reduces the cast time of your Blessing of Resurrection ability by .5 seconds per rank.",
    [10459] = "This passive ability reduces the recast timer on your Atone spell by 3, 6 and 10 seconds in three ranks.",
    [10462] = "This is a faster casting version of your Sanctuary ability.",
    [10463] = "While your target is under the effects of this ability, creatures will choose to attack someone else before your target. Your target may cast spells upon themselves, but the sanctuary effect immediately ends if your target takes any hostile action or casts upon another player.",
    [10464] = "This passive ability will reduce the reuse time of your Celestial Hammer ability by two minutes per rank.",
    [10470] = "This passive ability reduces the time required to cast Turn Undead by 10% per rank.",
    [10500] = "This ability gives you an activated version of your Spirit of Eagle spell.",
    [10501] = "This ability gives you an activated version of your Flight of Eagles spell.",
    [10502] = "This ability gives you an activated version of your Egress spell.",
    [10503] = "This ability, when activated, summons the spirits of nature to your side to aid in your battle. Additional ranks increase the power of the spirits you call.",
    [10506] = "This ability will summon a wall of wind that hurtles outward from your location. Any enemies struck by this wall of wind will be knocked backwards and hobbled for a time. Additional ranks increase the power of your wall of wind.",
    [10511] = "This passive ability reduces the reuse time on your Spirit of the Wood ability by one minute per rank.",
    [10514] = "This passive ability reduces the reuse time on your Convergence of Spirit ability by one minute per rank.",
    [10519] = "This passive ability reduces the time required between uses of your Projection of Fury ability. Each rank reduces the timer by 1 minute.",
    [10522] = "Each rank of this passive ability reduces the time required between uses of your Gut Punch ability by 2 seconds.",
    [10527] = "This passive ability reduces the time required between uses of your First Spire of the Warlord. Each rank reduces the time required by 30 seconds.",
    [10532] = "This passive ability reduces the time required between uses of your Second Spire of the Warlord. Each rank reduces the time required by 30 seconds.",
    [10537] = "This passive ability reduces the time required between uses of your Third Spire of the Warlord. Each rank reduces the time required by 30 seconds.",
    [10545] = "This ability summons regenerative energies to flow through your body which provides a 300 point heal as well as a300 hp per tick heal over time for up to two minutes. /alt activate 911",
    [10546] = "This ability greatly increases the damage of all physical attacks for up to 12 seconds.",
    [10548] = "The Paladin's shield is imbued with holy light, increasing the strength of their auto attacks, chance to proc all effects, and allows the Paladin to cloak themselves in a runic shield while fighting. Requires maximum rank in Shield Specialist.",
    [10550] = "This ability flings a beam of slumber out from you and will mezmerise up to eight enemies. Rank 2 will mezmerise targets up to level 93. Rank 3 will mezmerise targets up to level 98. /alt activate 8700",
    [10551] = "This passive ability grants you a chance to cover yourself with a protective rune when you cast a mesmerization spell on a target. Additional ranks increase the protective power of the rune.",
    [10558] = "This passive ability reduces the reuse timer on your Self Stasis ability by one minute per rank.",
    [10561] = "This passive ability improves your chance of banishing your enemies when you use your Beguiler's Banishment abilities. Additional ranks further improve your success rates.",
    [10579] = "This passive ability reduces the time required between uses of your Blast of Anger ability by 10 seconds per rank.",
    [10588] = "This passive ability reduces the time required between uses of your Grappling Strike ability by 2 seconds per rank.",
    [10600] = "This ability grants you a direct damage capability using the power of the elements as a weapon. Additional ranks increase the power of your strike.",
    [10601] = "This ability gives you an alternate version of your Aspect of Zomm spell.",
    [10610] = "This passive ability increases the range of your Shared Health ability by 25% per rank.",
    [10627] = "This ability gives you the chance to automatically perform a bonus attack when you riposte.",
    [10650] = "This passive ability grants you an improved innate chance to resist attacks that would slow your feet and impeed your movement rate. Additional ranks increase your chance to resist.",
    [10653] = "This passive ability reduces the reuse timer on your Whirlwind Discipline and Voiddance Discipline by two minute per rank.",
    [10656] = "Each rank of this passive ability increases the duration of your Impenetrable Discipline by one tick.",
    [10657] = "This passive ability reduces the reuse timer on your Destructive Force ability by 5 minutes per rank.",
    [10700] = "This ability provides an alternate version of your Levant spell.",
    [10701] = "A Necromancer may, at times, find it necessary to share the life stolen from a victim with members of the Necromancer's party, but this act of benevolance is only ever done with reluctance. Additional ranks increase the power of the heal that might be triggered by your lifetap skills. This ability only works on spells level 75 and above.",
    [10711] = "When activated, this ability grants you increased critical damage at the expense of severely crippling your ability to heal. Each rank increases the critical damage.",
    [10714] = "This passive ability reduces the time required between uses of Group Guardian of the Forest by 10% per rank.",
    [10719] = "This passive ability reduces the time required between uses of Outrider's Attack by 10% per rank.",
    [10722] = "This passive ability reduces the time required between uses of Protection of the Spirit Wolf by 2 minutes per rank.",
    [10727] = "This passive ability reduces the time required between uses of Imbued Ferocity by 2 minutes per rank.",
    [10730] = "This passive ability reduces the time required between uses of Harmonious Arrow by 10 seconds per rank.",
    [10733] = "This passive ability reduces the time required between uses of Entrap by 1 second per rank.",
    [10736] = "While activated, this ability consumes your mana to imbue your arrows with poison that cause debilitating pain upon your opponent for a short time.",
    [10752] = "This ability allows you to surround your target in a Divine Aura.",
    [10753] = "A paladin is pure not just in mind, but in body as well.  This ability allows paladins to remove harmful maladies from their targets.",
    [10754] = "This ability gives you an alternate version of your Sense the Dead spell.",
    [10789] = "This ability combines the effects of Hand of Ro and Fixation of Ro into a single new ability.",
    [10792] = "This passive ability extends the duration of Wild Growth by 1 tick per rank.",
    [10800] = "This passive ability reduces the reuse timer of your Auspice of the Hunter ability by one minute per rank.",
    [10803] = "This ability grants a chance to endure what would otherwise be a stunning blow, from any angle, without being stunned.",
    [10806] = "This ability, when active, provides you with increased power to your fire and magic based spells. Additional ranks increase the power gained per spell that lands on your target.",
    [10809] = "This ability, when active, provides you with increased power to your ice and magic based spells. Additional ranks increase the power gained per spell that lands on your target.",
    [10815] = "This ability provides you with increased power to slashing attacks with your weapons. Additional ranks increase the power gained per hit that lands on your target.",
    [10818] = "This ability provides you with increased power to piercing attacks with your weapons. Additional ranks increase the power gained per hit that lands on your target.",
    [10821] = "This ability provides you with increased power to blunt attacks with your weapons. Additional ranks increase the power gained per hit that lands on your target.",
    [10850] = "This passive ability grants you a small chance to score a massive second backstab after you backstab an opponent. Additional ranks increase the power of this strike.",
    [10853] = "This ability gives you a 50% chance to bypass your opponents special defenses such as dodge, block, parry, and riposte.",
    [10900] = "This ability, when activated, will grip your target and hurl them towards you. Additional ranks increase the amount of hate that this ability generates.",
    [10903] = "This ability allows you to instruct your pet to feign death via the '/pet feign' command.  Three ranks of this skill are available, causing your pet to succeed 25%, 50%, and 75% of the time, respectively.",
    [10909] = "This passive ability reduces the reuse time of your Summon Remains ability by one minute per rank.",
    [10912] = "This activated ability will cause you to assume the form of an undead creature. Your melee attacks will be augmented for a short time. Additional ranks boost the power of your attacks further.",
    [10915] = "This passive ability will grant you a chance that each Life Tap spell that is level 70 or higher you cast will provide you with a heal that will be shared with your entire group. Additional ranks increase the amount of healing that you generate from your Life Tap spells.",
    [10950] = "This passive ability adds one tick per rank to your slow spells.",
    [10951] = "This passive ability reduces the reuse time of your Ancestral Aid ability by one minute per rank.",
    [10954] = "This passive ability reduces the reuse time of your Union of Spirits ability by one minute per rank.",
    [10957] = "This ability will cause nearby members of your group to shrink in stature. /alt activate 7025",
    [10958] = "This ability, when activated, will turn you into a stationary totem and remove you from combat.",
    [10959] = "This ability, when activated, will add one tick to all the damage over time spells you cast for each rank of this ability that you purchase.",
    [11000] = "This passive ability reduces the reuse timer of your taunt skill by one second per rank.",
    [11003] = "This passive ability extends the duration of your Shield Reflect ability by one tick per rank.",
    [11004] = "This passive ability extends the duration of your Commanding Voice ability by one tick per rank.",
    [11007] = "This passive ability reduces the reuse timer of your Leaping abilities by ten seconds per rank.",
    [11050] = "This passive ability reduces the reuse timer of your Prolonged Destruction and Sustained Destruction abilities by six minutes per rank.",
    [11055] = "This ability grants you an alternate version of your Netherstep spell.",
    [11056] = "This ability allows you to knock up to eight enemies away from you. This ability calls on a spell that directs a force of energy, in a beam, directly away from you. There is a small percentage chance the beam may reflect back upon you causing short term blindness and damage.",
    [11057] = "This ability allows you to teleport your target to their bind point",
    [11058] = "This ability sends all players in close proximity to the caster to their respective bind points.",
    [11073] = "Your attunement to the animal world allows you to play dead fooling many predators. Be warned, this will not always fool the most determined aggressor. Each new rank increases your chances of success.",
    [11074] = "This passive ability improves your ability to land safely from higher than normal falls.",
    [11077] = "This passive ability reduces the time required between uses of your Bite of the Asp ability by 10 seconds.",
    [11078] = "This passive ability reduces the time required between uses of your Gorilla Smash ability by 10 seconds.",
    [11079] = "This passive ability reduces the time required between uses of your Raven's Claw ability by 10 seconds.",
    [11080] = "This ability strikes your opponent and then allows you to blend into the surroundings, reducing the anger generated by your attacks slightly. /alt activate 11080",
    [11085] = "This passive ability grants you a slight increase in capability when using a 2-handed weapon. Additional ranks increase this benefit.",
    [11088] = "This passive ability reduces the time required between uses of your Cry of Battle ability by 3 minutes per rank.",
    [12208] = "Grants your target the power of the dead, including levitation, increased poison resistance, water breathing, and the ability to see invisible creatures.",
    [12395] = "This Ability, when activated, will temporarily remove your target from all combat and leave your target immobile for a short time.",
    [12416] = "This passive ability will give you the innate chance to perform a twinproc each time you proc a detrimental weapon based spell. Each rank will add a 3% increased chance to perform a twinproc.",
    [12419] = "Studying one's opponent for weaknesses provides the knowledge and ability to pierce through advanced defenses.  Each rank of this ability grants an increasing chance of bypassing an opponent's special defenses, such as dodge, block, parry, and riposte.",
    [12422] = "This ability grants your group a perfected ability to Levitate on demand.",
    [12430] = "This ability reduces the amount of time required between uses of Forceful Rejuvenation by 3 minutes for ranks 1, 2 and 3. Ranks 4, 5, 6, and 7 reduce this time by 6 minutes per rank.",
    [12478] = "This ability decreases the amount of time required between uses of Companion's Blessing by 60 seconds per rank.",
    [12500] = "This passive ability reduces the time between uses of Jolting Kick. Each rank reduces the timer by 1 second.",
    [12582] = "This passive ability reduces the time required between uses of Hate's Attraction by 10 seconds per rank.",
    [12600] = "Each rank of this ability reduces the time required between uses of your Frenzied Stabbing ability by 1 minute.",
    [12603] = "Each rank of this ability extends the use of your Frenzied Stabbing Discipline ability by 1 tick.",
    [12606] = "Increases a Rogue's base run speed.",
    [12607] = "Each rank of this ability shortens the reuse time of your Pinpoint abilities by 10%.",
    [12615] = "Each rank of this ability shortens the reuse time of your Twisted Chance Discipline ability by 2 minutes.",
    [12635] = "This ability gives you an instant cast version of Death Peace. Requires Death Peace 2 to purchase.",
    [12636] = "This passive ability increases the capacity of your extended target window by one slot per rank.",
    [12638] = "This ability provides a group version of Spirit of Cheetah.",
    [12645] = "This passive ability extends the duration of Convergence of Spirit by 1 tick.",
    [12646] = "This passive ability extends the duration of Spirit of the Wood by 1 tick.",
    [12651] = "This ability, when activated, imbues your friendly target with the spirit of the bear, increasing their health, armor, and avoidance for a short time. /alt activate 384",
    [12652] = "This passive ability will give you a small innate chance to perform a twincast each time you cast a healing spell. Each rank gives you a 1% chance to twincast. This will not affect healing over time spells. /alt activate 385",
    [12655] = "This ability, when activated, allows all of your healing spells to land for critical effect for the next 60 seconds at a cost of greatly increased mana usage. Each rank slightly reduces the amount of mana used. /alt activate 393",
    [12661] = "This ability, when activated, increases the damage done by your spells when they land for critical damage for a short period of time at the cost of greatly increased mana usage. Each rank reduces the mana penalty by 10%.",
    [12664] = "This passive abilty reduces the time required between uses of Storm Strike by 2 seconds per rank.",
    [12688] = "This passive ability extends the duration of your Heel of Kanji Discipline by 1 tick per rank.",
    [12691] = "This passive ability extends the duration of your Scaledfist Discipline by 1 tick per rank.",
    [12706] = "This passive ability increases the damage done by a monk's strike and kick attacks by 100 per rank and allows those attacks to trigger a secondary, short-duration buff. The buff lasts for 24 seconds, can be refreshed, and applies a Hundred Hands effect that works with all weapons, reducing their native delay for the duration.",
    [12709] = "This passive ability extends the duration of the Deftdance Discipline by 1 tick per rank.",
    [12710] = "This passive ability reduces the time required between uses of Deftdance by 6 minutes per rank.",
    [12713] = "This passive ability reduces the time required between uses of Lyre Leap by 2 seconds per rank.",
    [12716] = "This passive ability reduces the time required between uses of Quick Time by 30 seconds per rank.",
    [12719] = "Each rank of this passive ability extends the duration of Quick Time by 10%.",
    [12720] = "Each rank of this passive ability extends the duration of Fierce Eye by 1 tick.",
    [12721] = "This passive ability reduces the time required between uses of Fierce Eye by 60 seconds per rank.",
    [12737] = "This passive ability increases the effective distance of Dirge of the Sleepwalker by 5% per rank.",
    [12766] = "This ability grants you reduced time for casting any detrimental spell by fifteen percent, while rank 2 improves this reduction to 25 percent. Note that some spells may not be affected if they're already under other time reducing effects.",
    [12770] = "This ability causes your target to succumb to a sudden, violent attack, after which they are frequently unable to move for a time.  Each rank of this ability increases the amount of time that the victim remains immobile.",
    [12773] = "This passive ability reduces the time required between uses of Divine Companion Aura by 1 minute per rank.",
    [12778] = "This ability causes your skin to stiffen making you impervious to damage but unable to move. As your mind is not affected, your spellcasting is unaffected. The after effects of this state will inflict lasting pain. If not cured, these after effects CAN kill you.",
    [12779] = "This passive ability reduces the time required between uses of Encroaching Darkness by .5 second per rank.",
    [12782] = "This passive ability extends the casting range of Encroaching Darkness by ten percent per rank.",
    [12785] = "This ability provides an alternate version of Aegis of Kildrukaun.",
    [12804] = "This ability, when activated, sends your warder into a blood-fueled rage greatly increasing damage at the cost of health. As the rage fades, there is a chance the warder could become severely fatigued from exhaustion. Each rank increases damage delivered by your warder.",
    [12807] = "This ability, when activated, commands your companion to shield you from incoming damage for up to 12 seconds.",
    [12810] = "This ability grants you a faster casting version of your Summon Companion spell. Starting with rank 2, each rank has an increasing chance to cause your pet to fade when summoned.",
    [12816] = "This passive ability extends the duration of Haergen and Tuzil's Feralgia by 1 tick per rank.",
    [12819] = "This passive ability reduces the time required between uses of Protective Spirit Discipline by 10% per rank.",
    [12822] = "This passive ability reduces the time required between uses of Empathic Fury by 10% per rank.",
    [12828] = "This ability allows the Beastlord to share some of his natural attunement with his party in the form of health and mana.  Additional ranks increase the amount of health and mana that is shared with party. Starting with rank 17, Paragon of Spirit begins to restore endurance with the party.",
    [12831] = "This passive ability reduces the time required to cast Paragon of Spirit by .5 seconds per rank.",
    [12837] = "This ability, when activated, allows your warder to transfer some of its life to you, healing your wounds. Each rank increases the healing you receive, while reducing the pain inflicted upon your warder.",
    [12846] = "This passive ability imbues your attacks with the chance to slash your enemy with the Gelid Claw, dealing 350 base damage and applying a 60s duration ATK debuff on the enemy. ",
    [12849] = "This passive ability reduces the time required to cast Nature's Salve by .5 second per rank.",
    [12863] = "This ability reduces the casting time on your damage spells that have a casting time greater than three seconds by 2, 5, 10, 15, and 20%.",
    [12864] = "This ability provides an alternate version of your Abscond spell with reduced cast time and zero mana cost.",
    [12865] = "This ability grants you an unresistable form of your Atol's Shackles spell. Enemies immune to run speed changes will not be affected.",
    [12866] = "The Dimensional Shield creates a localized field of unstable reality, allowing the Wizard to become immune to spellcasting interruption for a period of time.",
    [12867] = "This ability grants you an improved version of Sustained Destruction that slightly increases critical damage while reducing manage usage. Requires Sustained Destruction 6.",
    [12881] = "This passive ability reduces the time required between uses of Harvest of Druzzil by 45 seconds per rank.",
    [12885] = "This ability, when activated, blasts your enemy with mental energy causing it to lose concentration slightly and reducing its anger towards you.",
    [12886] = "This passive ability bestow's E'ci's blessing upon you, opening the path to Kerafyrm's Prismatic Familiar.",
    [12887] = "This passive ability bestow's Solusek Ro's blessing upon you, opening the path to Kerafyrm's Prismatic Familiar.",
    [12888] = "This passive ability bestow's Druzzil Ro's blessing upon you, opening the path to Kerafyrm's Prismatic Familiar.",
    [12889] = "This passive ability gains favor with Kerafyrm, opening the path to Kerafyrm's Prismatic Familiar.",
    [12892] = "This ability provides you with a familiar that strengthens the effects of all instant-cast damage spells. Each additional rank increases the max level of focused spells, increases the damage bonus applied, and grants greater mana.",
    [12893] = "This ability, when activated, provides you with an improved version of your Twincast spell with greater duration, but limited uses. Each additional rank also increases the amount of times your spells can be twincast. /alt activate 515",
    [12894] = "This passive ability reduces the time required between uses of Phantasmal Opponent by 30 seconds per rank.",
    [12902] = "This passive ability decreases the time required between uses of the First Spire of Enchantment by 30 seconds per rank.",
    [12907] = "This passive ability decreases the time required between uses of the Second Spire of Enchantment by 30 seconds per rank.",
    [12912] = "This passive ability decreases the time required between uses of the Third Spire of Enchantment by 30 seconds per rank.",
    [12920] = "This passive ability increases the effectiveness of Horrifying Visage and Glamorous Visage by ten percent per rank.",
    [12923] = "Has a chance to forcibly move some enemies around you away from you and cause them to forget that you exist. Each rank increases the number of targets affected.",
    [12931] = "This ability, when activated, increases the chance your detrimental spells will strike for critical damage, at cost of greatly increased mana usage.",
    [12937] = "This ability, when activated, showers the area around you with bursts of crippling sparkling lights, causing any affected enemies to become less dangerous for a short time. Addtional ranks increase the power of the debuff effects by a small amount.",
    [12938] = "This ability, when activated, causes your target's mind to twist inflicting intense pain and damage, while reducing their ability to do damage to you. It deals 350 damage per tick, reduces accuracy by 15 percent, and reduces damage by 10%. /alt activate 602",
    [12939] = "This ability, when activated, places a barrier around everyone within range protecting against spell damage.",
    [12941] = "This ability, when activated, shrinks your companion to a more manageable size.",
    [12963] = "This ability creates a crystallized shard, converting your health into stored mana.",
    [12964] = "This ability creates a crystallized shard, converting your health into stored mana.",
    [12965] = "This ability creates a large crystallized shard, converting your health into stored mana.",
    [12968] = "This passive ability reduces the time required between uses of Malosinete by three seconds per rank.",
    [12971] = "This ability, when activated, provides you with increased mitigation against both cold and fire based spells for up to thirty seconds. Each rank increases the amount of damage mitigated.",
    [12977] = "This passive ability increases the duration of Malosinete by 2 ticks per rank.",
    [12988] = "This ability, when activated, will add one tick to all the damage over time spells you cast for each rank of this ability that you purchase. At rank four, this benefit converts to passive and no longer needs to be activated.",
    [12989] = "This ability, when activated, grants you a blessing from the ancients, increasing your armor for a short period of time. Each rank increases the armor granted to you.",
    [12992] = "Through this ability you and your group members are able to assume the form of a black werewolf. While in this form, you will benefit from improved vision and quicker reflexes. Additional ranks of this ability will add more health and mana to you.",
    [13001] = "This passive ability reduces the time required between uses of Inconspicuous Totem by one minute per rank.",
    [13004] = "This ability may remove negative effects from your body.",
    [13008] = "This ability provides you with the ability to attune you and your group members with the spirits and move silently and quickly.",
    [13009] = "This ability will allow you and your group members to become invisible for a period of time.",
    [13010] = "This passive ability reduces the time required between uses of Cannibalization by 10 seconds per rank.",
    [13013] = "This passive ability reduces the time required between uses of Spiritual Channeling by two minutes per rank.",
    [13017] = "This ability increases the power of any critical hits your damage over time spells will do to your enemy. Each rank increases the power of your critical damage. Requires Destructive Cascade rank 10.",
    [13020] = "This ability, when activated, showers the area around you with bursts of crippling sparkling lights, causing any affected enemies to become less dangerous for a short time.",
    [13055] = "This passive ability reduces the time required between uses of Self Preservation by 30 seconds per rank.",
    [13065] = "This ability, when activated, strikes your target for moderate damage, but more importantly rooting them to their current location for a short time.",
    [13066] = "This ability, when activated, purges the body through intense pain.",
    [13067] = "This passive ability reduces the time required between uses of Agony of Absolution by 2 minutes per rank.",
    [13096] = "This ability will add one tick to all the damage over time of spells you cast for each rank of this ability that you purchase. This only works on spells with durations of at least 3 ticks or greater.",
    [13100] = "Invokes the soothing voice of Mithaniel Marr to calm those around you.",
    [13101] = "When landing a killing blow upon your enemy, your faith grants a chance to increase AC and skill damage for a short time. Additional ranks further increase AC and skill damage. Ranks beyond 3 increase the chance for Blessing of the Faithful to proc on a kill.",
    [13108] = "This ability allows you to pressure your opponent, causing him to stumble away from you.",
    [13130] = "Your ability to focus your chi into a single target allows you to draw them to you by mystical force.",
    [13134] = "This ability will cause you to score a critical damage nuke for each nuke you cast for a short time at the cost of additional mana. As you gain ranks, your mana penalty is reduced. /alt activate 735",
    [13143] = "This passive ability reduces the cast time of Silent Casting. Each rank improves the cast time by .3 seconds.",
    [13146] = "This passive ability reduces the cast time of Silent Casting. Each rank improves the cast time by .3 seconds.",
    [13164] = "With a burst of righteous fire from above, the holy paladin is able to slip into the shadows and escape enemy attention.",
    [13165] = "This ability will fill creatures closely around you with hatred towards you. /alt activate 749",
    [13166] = "This passive ability reduces the time required to cast Explosion of Hatred or Explosion of Spite by 5 seconds per rank.",
    [13169] = "With a primal roar, all enemies shy away in terror, allowing the accomplished warrior to slip into the shadows and escape.",
    [13202] = "A short distance leap that will propel you forward. Additional ranks increase the distance that you will leap.",
    [13204] = "This passive ability reduces the time required between uses of A Tune Stuck In Your Head by 3 minutes per rank.",
    [13224] = "This ability, when activated, instantly fuels your descent into rage at a cost of health.  Additional ranks increase the health lost.",
    [13225] = "This ability provides an alternate version of Scent of Terris. Each rank increases the effectiveness of the debuffs.",
    [13252] = "This ability provides an alternate version of Dreary Deeds.",
    [13260] = "This ability allows you to enchant a bar of Feymetal using some of your mana.",
    [13261] = "This ability allows you to enchant 10 bars of Feymetal using some of your mana.",
    [13271] = "This ability allows you to enchant a bar of Alaran metal using some of your mana.",
    [13272] = "This ability allows you to enchant 10 bars of Alaran metal using some of your mana.",
    [13385] = "This ability places a buff on your target. When the target's life reaches a specific level, this buff triggers a large heal on the target. This is a Guardian Spirit. Only one guardian may be active at any time on each player.",
    [13388] = "This ability causes your enemies to lose their hatred of you.",
    [13389] = "This ability provides you with an alternate version of your Yaulp spell.",
    [13416] = "This passive ability reduces the reuse time of your Purified Spirits ability by 20 seconds per rank.",
    [13419] = "This ability summons a swarm of fireflies around your target. When your target's health drops below 40%, the fireflies bathe your target in a burst of healing light that fades to a healing glow for up to 18 seconds.",
    [13444] = "This ability, when activated places a buff upon yourself for 5 minutes. When your health drops below 40%, this buff increases your ability to parry incoming attacks, increases proc chance, and adds lifesteal for up to 18 seconds. Each rank increases the parry chance. This is a guardian spirit. Only 1 guardian spirit may be active on you at any time. /alt activate 967",
    [13449] = "This passive ability reduces the time required between uses of Playing Possum by 2 seconds per rank.",
    [13463] = "This passive ability reduces the time required between uses of Warder's Gift by 90 seconds per rank.",
    [13474] = "This passive ability reduces the time required between uses of Companion's Sacrifice by 2 minutes per rank.",
    [13483] = "A short distance leap that will propel you forward.",
    [13484] = "This ability, when activated, allows your weapons to proc with every swing for up to 12 seconds. This ability will only work on procs attached to your equipped weapon(s), prioritizing native procs on the weapon first and, if none, will work on proc augments added to the weapon instead. /alt activate 241",
    [13485] = "This passive ability grants you the ability to flurry when attacking. Each rank increases your flurry skill slightly.",
    [13527] = "This ability grants you an alternate version of Shauri's Sonorious Clouding",
    [13528] = "This ability when activated causes your target to be thrust away from you from a barrage of sound waves.",
    [13529] = "This ability when activated causes all targets within a short range to be drawn to you.",
    [13549] = "This ability fires an arrow tipped with a vial of liquid frost causing the enemy to take increased damage from cold for up to 18 seconds. Multiple applications will not increase the damage or extend the time.",
    [13556] = "This ability channels the energy of the woodland spirits on to a single target.  The concentrated energy provides an exceptionally fast heal and leaves the target with a brief period of regeneration and protective thorns. Additional ranks increase the damage reflected, as well as the level of healing granted.",
    [13565] = "This passive ability reduces the time required between uses of Outrider's Accuracy by 60 seconds per rank.",
    [13568] = "This passive ability reduces the time required between uses of Outrider's Evasion by 60 seconds per rank.",
    [13571] = "This ability grants you a strong root that is difficult for enemies to resist.",
    [13616] = "This passive ability increases the damage inflicted by 2-handed weapons. Each rank increases the damage over the previous rank.",
    [13646] = "This activated ability will allow you to focus on your mystical arts for a short time, granting you a greater chance that your detrimental spells will strike your target.",
    [13667] = "This passive ability increases the duration of Silent Casting by one tick per rank.",
    [13670] = "This ability, when active, will add additional damage to all types of spells you cast. Each rank increases the amount of damage added.",
    [13673] = "This ability provides you with the power to call a valiant pegasus to your side.",
    [13674] = "This ability provides you with the power to call a nightmare pegasus to your side.",
    [13678] = "This ability causes your skin to stiffen making you impervious to damage for a short time. Additionally, your critical damage from your damage over time spells will be slightly enhanced by increased focus.",
    [13684] = "This passive ability will give you the innate chance to perform a second cast each time you cast a damage over time spell. The first rank will give you a 2% chance, with each rank thereafter giving an additional 1% increase. Note, this will not work on short duration spells.",
    [13687] = "This ability, when activated, attempts to purge your body of detrimental disease or poison effects.",
    [13689] = "This passive ability reduces the time required to cast Scent of Terris by 10% for each rank.",
    [13693] = "This ability allows you to cast a buff on your pet that will cause it to go berserk, doing increased damage.",
    [13695] = "This ability allows you to assume the form of mystical force.  While in this form, your detrimental spells will benefit from enhanced damage. Additional ranks increase damage while also increasing the level of spells that can benefit from this ability.",
    [13753] = "This passive ability reduces the time required between uses of Calculated Insanity by 6 minutes per rank.",
    [13758] = "This passive ability reduces the time required between uses of Mental Contortion by 6 minutes per rank.",
    [13764] = "This passive ability reduces the time required between uses of Crippling Aurora by 60 seconds per rank.",
    [13788] = "Nobody is really sure what this does... (Just so there is no confusion, it doesn't actually do anything at all)",
    [13792] = "When activated this ability will increase all forms of melee damage and speed your attacks as well as increase your overall accuracy. Starting with rank 7, the duration is increased by 1 tick per rank.",
    [13844] = "You throw a shuriken from great range, causing little damage but annoying your enemy greatly. /alt activate 376",
    [13872] = "This ability when activated causes up to 8 enemies around you to take more damage in battle for a short period of time. Some enemies may become so stricken with fear they will flee in terror.",
    [13873] = "This passive ability reduces the time required between uses of Juggernaut Surge by 30 seconds per rank.",
    [13878] = "This passive ability reduces the time required between uses of Uncanny Resilience by 1 minute per rank.",
    [13881] = "This passive ability reduces the time required between uses of Blood Pact by 1 minute per rank.",
    [13889] = "This passive ability reduces the time required between uses of Five Point Palm by 1 minute per rank.",
    [13905] = "This passive ability reduces the time required between uses of Flash of Anger by 10% per rank.",
    [13908] = "This passive ability reduces the time required between uses of Bazu Roar by 10% per rank.",
    [13911] = "This passive ability reduces the time required between uses of Scowl by 3 seconds per rank.",
    [13917] = "This passive ability reduces the time required between uses of Mark of the Mage Hunter by 2 minutes per rank.",
    [14010] = "This ability when activated calls the life force of a fallen ally back to their body with minimal loss of essence. This ability may not be used in combat.",
    [14011] = "This passive ability reduces the time required between uses of Beacon of the Righteous by 30 seconds per rank.",
    [14017] = "Having spent some time with the Alarans, you begin to learn about their ways and customs. You will need to further your education, including learning their language to moderate fluency in order to further take advantage of the skills and abilities locked away in their lands.",
    [14018] = "By opening your mind to the Alaran way of life, you have gained access to the wealth of knowledge they have amassed over the aeons. New power and abilities beyond those learned in Norrathian lands are now yours for the taking. This ability is required to purchase Veil of Alaris AA.",
    [14019] = "This ability places a defensive buff on yourself which can proc a short duration bonus to incoming damage mitigation. Each rank increases the mitigation, total damage absorbed, and limit use count of the proc.",
    [14026] = "This passive ability grants you increased damage when wielding a 2-handed sword or blunt weapon. Each rank adds additional damage.",
    [14029] = "This passive ability grants you the capacity to receive exceptional promised heals. Each rank increases the chance of an exceptional heal by 5%.",
    [14032] = "This passive ability grants you immunity from most fear-based spells.",
    [14037] = "This passive ability reduces the time required between uses of your Warlord's Bravery. Each rank reduces the time required by 3 minutes.",
    [14040] = "This passive ability reduces the time required between uses of your Warlord's Tenacity. Each rank reduces the time required by 3 minutes.",
    [14046] = "This passive ability reduces the time required between uses of Leech Touch by 90 seconds per rank",
    [14051] = "Your command of things dead and dying allows you to restrict movement of any undead creature not flagged as run speed immune.",
    [14052] = "Grants the Shadow Knight a powerful ability which returns mana to the caster while inflicting terrible pain and damage on their target. Each rank increases the amount of mana returned to the caster.",
    [14056] = "This passive ability reduces the time required between uses of Leechcurse Discipline by 6 minutes per rank",
    [14059] = "This passive ability reduces the time required between uses of Unholy Aura Discipline by 3 minutes per rank",
    [14062] = "This passive ability reduces the time required between uses of Harmshield by 60 seconds per rank",
    [14065] = "This passive ability reduces the time required between uses of Projection of Doom by 60 seconds per rank",
    [14068] = "This passive ability reduces the time required between uses of Projection of Piety by 60 seconds per rank.",
    [14071] = "This ability, when activated grants a chance to reflect incoming spells for up to 12 seconds. Each rank increases the chance to reflect the incoming spell. Ranks 6 through 10 increase the amount of damage reflected back upon the caster.",
    [14076] = "This passive ability reduces the time required between uses of Sanctification by 8 minutes per rank.",
    [14080] = "This ability, when activated gives you a short duration increase to your run speed.",
    [14081] = "This ability, when activated, lures your target closer with the voice of the divine.",
    [14085] = "This passive ability reduces the time required between uses of Leap of Faith by 2 seconds per rank.",
    [14088] = "This passive ability reduces the time required between uses of Marr's Salvation by 30 seconds per rank.",
    [14091] = "This passive ability reduces the time required between uses of Armor of the Inquisitor by 2 minutes per rank.",
    [14100] = "This passive ability shortens the cast time of all stun spells by 50%. This will not affect any specific stun abilities which have already had their cast time decreased by other means.",
    [14115] = "This passive ability increases the duration of your Outrider's Attack by 1 tick per rank.",
    [14129] = "This passive ability increases the damage done with piercing weapons and has a small chance to proc Blade Fury. Each rank increases the damage added.",
    [14135] = "This passive ability reduces the time required between uses of assassination disciplines by 10% per rank.",
    [14139] = "This ability grants you the option of assuming a disguise.",
    [14141] = "This ability provides you with increased power to piercing attacks with your weapons. Additional ranks increase the power gained per hit that lands on your target.",
    [14144] = "This passive ability extends the duration of Envenomed Blades by 1 tick per rank.",
    [14148] = "Each rank in this ability lower the reuse time on your Speed Focus Discipline by 90 seconds.",
    [14151] = "Each rank in the passive ability increases the damage on your Flying Kick ability.",
    [14157] = "Each rank in the passive ability increases the accuracy of your flying kicks.",
    [14160] = "This passive ability reduces the time required between uses of Zan Fi's Whistle by 1 minutes per rank.",
    [14163] = "This passive ability increases the duration of Zan Fi's Whistle by 1 tick per rank.",
    [14166] = "This passive ability reduces the time required between uses of Infusion of Thunder by 1 minutes per rank.",
    [14169] = "This passive ability reduces the time required between uses of Thousand Blades by 10% for each rank.",
    [14179] = "This passive ability extends of the duration of Dance of Blades by 1 tick per rank.",
    [14180] = "This passive ability extends of the duration of Thousand Blades by 1 tick per rank.",
    [14181] = "This passive ability increases your maximum amount of double attack by 25 points per rank.",
    [14186] = "This passive ability increases your maximum amount of triple attack by 25 points per rank.",
    [14192] = "This ability gives you the ability to transform yourself into the image of a fearsome drake. Rank 2 adds the ability to levitate while in drake form.",
    [14200] = "Modifies your Frenzy attacks to inflicting significantly more damage whenever they critically hit. Additionally, you become increasingly likely to land critical hits when using Frenzy.",
    [14203] = "This passive ability will reduce the time required between uses of Berserking disciplines and upgrades by 10% per rank.",
    [14206] = "This ability channels a burst of health and mana to your target without drawing attention to yourself.",
    [14207] = "This ability channels a burst of divine power to knock your undead enemy senseless and throws them backwards.",
    [14208] = "This ability blasts your nearby allies with the light of Rodcet Nife, instantly healing their wounds.",
    [14209] = "This ability fixes your enemies feet to the ground with bands of divine energy.",
    [14213] = "This passive ability decreases the time required between uses of Focused Celestial Regeneration by 2 minutes per rank.",
    [14224] = "This ability shrinks your target, allowing them greater mobility in tight quarters.",
    [14225] = "This passive ability reduces the time required to cast Spirit Call by 1/2 second per rank.",
    [14229] = "This ability draws a burst of health and mana to yourself without drawing attention.",
    [14231] = "This ability calls powerful spirits to shove your enemy backwards with great force. This wild magic has a chance to feedback upon the caster.",
    [14232] = "This ability reduces your enemy's ability to withstand disease-based spells. Additional ranks further reduce your enemy's resistance.",
    [14233] = "This ability allows you the chance to be saved from an attack which would otherwise kill you. Rank 2 greatly increases your chances to be saved.",
    [14234] = "This ability, when activated, allows all of your healing spells to land as critical heals for the next 12 seconds at a cost of greatly increased mana usage. Each rank slightly reduces the amount of mana used. /alt activate 151",
    [14241] = "This passive ability reduces the time required between uses of Nature's Fury by 3 minutes per rank.",
    [14244] = "This passive ability slightly increases the damage inflicted by all detrimental direct damage spells. Addition ranks will increase the damage.",
    [14249] = "This passive ability slightly increases the healing bestowed by all beneficial spells. Each rank increases the benefit.",
    [14254] = "This passive ability extends the duration of Vinelash Cascade by 1 tick per rank.",
    [14259] = "This passive ability extends the duration of Spirit of the Bear by 1 tick per rank.",
    [14262] = "This ability, when activated, causes you to fade from sight of your enemies.",
    [14264] = "This ability causes your target to succumb to a sudden, violent attack, after which they are frequently unable to move for a time. Additonal ranks increase the duration of the ability. /alt activate 403",
    [14265] = "This ability provides a group based version of Spirit of the Cheetah as well as camoflaging you from your enemies.",
    [14272] = "Allows you to transform yourself into a Werewolf and grants additional mana, hitpoints, and accuracy. Additional ranks increase the mana, hitpoints and mana regeneration from this effect. Rank 3 no longer has the runspeed improvements of previous ranks.",
    [14275] = "Each rank in this ability gives beastlords an increasing chance for their playing possum to not be revealed by spells cast upon them.",
    [14278] = "This passive ability extends the duration of Group Bestial Alignment by 1 tick per rank.",
    [14281] = "An invisibility to undead creatures that will not fade over time than you can share with your group.",
    [14282] = "An invisibility to undead creatures that will not fade over time.",
    [14283] = "Each rank of this passive ability shortens the cast time of Stasis and Nightmare Stasis by .25 seconds. This does not affect Friendly Stasis or Self Stasis.",
    [14286] = "This passive ability extends the duration of Dreary Deeds by 1 tick per rank.",
    [14289] = "This passive ability reduces the cast time of your Frenzied Burnout abilities by 10% per rank.",
    [14292] = "This passive ability shortens the cast time of Host of the Elements by 10% per rank.",
    [14295] = "This ability reduces the time required between uses of Companion's Relocation by 1 second per rank.",
    [14301] = "This passive ability gives you a chance to block incoming melee attacks when wielding a 2hb weapon. Each rank increases the block chance by a small amount.",
    [14304] = "This passive ability reduces the time required to use Drape of Shadows by 45 seconds per rank.",
    [14307] = "This ability, when activated, applies a buff to your pet which procs a poison-based attack upon successful melee attacks. This effect is limited to 30 attacks. Additional ranks strengthen the poison attack.",
    [14308] = "This passive ability reduces the time required between uses of Pestilent Paralysis by 20 seconds per rank.",
    [14311] = "This passive ability reduces the time required between uses of Mercurial Torment by 6 minutes per rank.",
    [14318] = "This passive ability reduces the casting time of Death Bloom by 10% per rank.",
    [14321] = "This ability, when activated, reduces the melee speed of your undead enemies. Additional ranks further decrease the melee speed of your enemies slightly.",
    [14322] = "This ability, when activated, casts a last ditch lifetap in hopes of averting certain death. Additional ranks increase the amount of damage inflicted and healing applied.",
    [14323] = "This ability, when activated, opens a hole in space allowing you to slip away from your enemy's attention.",
    [14331] = "This passive ability reduces the time required between uses of Improved Twincast by 2 minutes per rank.",
    [14341] = "This passive ability reduces the time required between uses of Nightmare Stasis by 6 minutes per rank.",
    [14346] = "This ability, when activated, fires a beam of scintillating colors enthralling up to 5 targets caught in the brilliant light. When they recover, it will take some time to recover their full run speed and fighting accuracy. Each rank increases the duration of all effects slightly.",
    [14358] = "This ability calls a fallen ally back to their body. Requires an Essence Emerald as an element of energy focus.",
    [14359] = "This ability, when activated, allows any direct damage spell over level 91 to allow your next damage over time spell greater than level 91 to be twincast.",
    [14360] = "This ability, when activated, shortens the duration of all damage over time spells by 50%, while increasing their damage and mana cost by 35 percent for up to 2 minutes. NOTE: Once activated, this burn cannot be quenched until it has run its full duration.",
    [14364] = "This passive ability reduces the time required between uses of Eldritch Rune by 90 seconds per rank.",
    [14367] = "This passive ability grants you the ability to conscript one additional mercenary per rank.",
    [14371] = "Summons a magical tome that will guide you on your quests.",
    [14373] = "This ability allows you to enchant a bar of Planar Alloy using some of your mana.",
    [14374] = "This ability allows you to enchant 10 bars of Planar Alloy using some of your mana.",
    [14690] = "This activated ability will allow you to focus on your mystical arts for a short time, granting you a greater chance that your detrimental spells will strike your target.",
    [15073] = "This ability when activated allows you to channel the spirits of your slain foes and strike out against beasts that you have mastered slaying.",
    [15074] = "This passive ability decreases the time required between uses of Banestrike by 5 seconds per rank.",
    [15096] = "This ability grants your taunt skill a chance to proc a significant increase in hate above and beyond the standard effects of the skill.",
    [15099] = "This ability, when activated, draws your enemy closer to you and instills within it an intense hatred of you for a short period of time.",
    [15100] = "This passive ability reduces the time required between uses of Press the Attack by 2 seconds per rank.",
    [15105] = "This passive ability reduces the time required between uses of Rage of Rallos Zek by 2 minutes per rank.",
    [15108] = "This passive ability reduces the time required between uses of Unbroken Attention by 1 minute per rank.",
    [15113] = "This passive ability entends the duration of Resplendant Glory by 3 ticks per rank.",
    [15119] = "This ability, when activated, strikes your enemy with a brutal attack, and leaves you in a frenzied state increasing your chance to hit for critical damage, as well as increases the damage done by critical attacks for up to 1 minute.",
    [15120] = "This passive ability reduces the time required between uses of Vehement Rage by 1 minute per rank.",
    [15123] = "This passive ability reduces the time required between uses of Barbed Tongue by 2 minute per rank.",
    [15126] = "This passive ability reduces the time required between uses of Shield Topple by 1 second per rank.",
    [15129] = "This ability, when activated, bolsters your party with increased maximum HP, Armor, and mana regeneration. /alt activate 2011",
    [15130] = "This ability, when activated, causes your party to attack with increased fervor. Melee speed and spell casting time are accelerated.",
    [15131] = "This ability, when activated, points out a serious vulnerability in your enemy's defenses, allowing you to strike with greater effect. Note: This ability will not affect raid level targets.",
    [15132] = "This passive ability reduces the amount of time between uses of Divine Call by 10 seconds per rank.",
    [15135] = "This passive ability extends the duration of Divine Call by 1 tick per rank.",
    [15136] = "This ability, when activated, causes you to leap to your targeted enemy if in range.",
    [15146] = "This ability, when activated upon an undead enemy, causes the target to suffer greatly reduced combat ability from reduced strength, armor, dexterity, and agility, melee speed, and the ability to dual wield.",
    [15147] = "Armor of the Inquisitor grants the paladin's group an improvement to their armor class and increases the benefit they gain from healing spells that land on them.  Additional ranks of the ability increase the effects and the duration of the ethereal armor.",
    [15150] = "This passive ability, reduces the cast time of Demand For Honor by 10% per rank.",
    [15153] = "This passive ability extends the duration of Sanctification by 1 tick per rank.",
    [15154] = "This passive ability extends the duration of Speed of the Savior by 1 tick per rank.",
    [15155] = "This passive ability extends the duration of Preservation of Marr by 1 tick per rank.",
    [15158] = "This passive ability extends the duration of Shield of Brilliance by 1 tick per rank.",
    [15159] = "This passive ability extends the duration of Blessing of the Faithful by 1 tick per rank",
    [15162] = "This passive ability reduces the amount of time between uses of Speed of the Savior by 2 minutes per rank.",
    [15168] = "This passive ability reduces the amount of time between uses of Shield of Brilliance by 1 minute per rank.",
    [15177] = "This ability, when activated, attempts to purge your body of detrimental disease or poison effects.",
    [15179] = "This passive ability reduces the cast time of Scourge Skin. Rank 1 reduces the cast time by 10%, rank 2 by 25 percent, and rank 3 by 50%.",
    [15193] = "This ability, when activated, allows any direct damage spell to allow your next Spear line spell level 85 or greater to be twincast, while reducing the reuse timer for your spears to 8 seconds. NOTE: The Spear line will not cause this ability to proc.",
    [15194] = "This passive ability extends the duration of Provocation for Power line of abilities by 1 tick per rank. NOTE: This will NOT affect the recourse abilities.",
    [15200] = "When activated, this ability will summon protective elements to surround the magician which will absorb damage and heal. Additional ranks increase the amount of damage the ward will absorb.",
    [15203] = "The ability allows you a chance to fade from the enemy's sight.",
    [15204] = "This passive ability reduces the time requires between uses of Elemental Union by 1 minute per rank. ",
    [15207] = "This passive ability reduces the time requires between uses of Virulent Talon by 1 minute per rank. ",
    [15210] = "This ability gives you an AOE version of your Malo line of spells that will affect up to 5 targets within a small radius. Additional ranks strengthen the debuff while increase the chance that it will land.",
    [15213] = "A reserve of mana that can be released when the Magician drops below 20% mana.",
    [15214] = "When your pet is low on health, this spell will invigorate your pet, providing a small heal while absorbing some damage for a short period of time. Additional ranks increase the effects of the spell. /alt activate 2066",
    [15217] = "This passive ability gives you a chance to proc extra damage when using your direct damage line of magic Steel spells. Additional ranks improve the strength of the spell and the chance that it will proc. This effect will only trigger on spells 72 and above.",
    [15220] = "This passive ability increases the duration of your Vapor Core spells by 1 tick per rank.",
    [15223] = "This passive ability increases the duration of your Stone Core spells by 1 tick per rank.",
    [15226] = "This passive ability increases the duration of your Fire Core spells by 1 tick per rank.",
    [15229] = "This passive ability increases the duration of your Ice Core spells by 1 tick per rank.",
    [15232] = "This passive ability increases the chance that your Fickle Magma spell will trigger Flames of Power. Additional ranks increase the chance the spell will proc. ",
    [15253] = "This passive ability reduces the time required to cast Auspice of the Hunter. Each rank reduces the cast time by 10%.",
    [15283] = "This passive ability reduces the time required between uses of your Crescent and Heel kick lines by 1 second per rank.",
    [15288] = "This passive ability adds a small amount of damage to all melee weapons. Each rank increases the amount of damage added.",
    [15295] = "This passive ability reduces the casting time of Cover Tracks. Rank 1 gives a 10% reduction. Rank 2 gives a 25 percent reduction. Rank 3 gives a 50% reduction.",
    [15304] = "This ability, when activated, places a buff on your target that grants them a single-use defensive proc ability. This proc ability causes the targeted ally to generate significantly less hate for a short period of time when the target's health drops below 50%.",
    [15317] = "This passive ability decreases the amount of time required between uses of Mass Group Buff by 10% per rank.",
    [15338] = "This ability, when activated grants a chance to reflect incoming spells for up to 12 seconds. Each rank increases the chance to reflect the incoming spell.",
    [15341] = "This passive ability will extend the duration of Healing Frenzy by 1 tick per rank.",
    [15343] = "This ability allows you to call a fallen comrade's spirit back to their corpse.  This does not restore any lost experience, but the player can still get an experience resurrection after being affected by this ability.",
    [15356] = "This ability grants an innate chance to return to life from an attack which would otherwise kill you.",
    [15357] = "This ability gives you an alternate version of your Talisman of Celerity.",
    [15358] = "This passive ability extends the duration of Spiritual Blessing by 1 tick per rank.",
    [15362] = "This ability when activated calls a fallen ally back to their body while restoring a significant portion of experience lost upon death. NOTE: You must be in a resting state to use this ability.",
    [15371] = "This passive ability reduces the time required between uses of the Turgur's Swarm AA by 1 second per rank.",
    [15374] = "This passive ability grants you a small chance to resist attacks which would otherwise stun you. Each rank increases the chance to avoid being stunned.",
    [15377] = "This ability, when activated, cripples the fighting spirit of your enemy, causing it to become less dangerous for a short time.",
    [15383] = "This passive ability reduces the time required between uses of your lunar-based heals by 1 second per rank.",
    [15389] = "This passive ability reduces the casting time of Blessing of Ro by .25 seconds per ranks.",
    [15403] = "This passive ability reduces the time required between uses of Wall of Wind by 10 seconds per rank.",
    [15406] = "This passive ability reduces the cast time of Focused Paragon of Spirit by 10% per rank.",
    [15414] = "This passive ability extends the duration of Bloodlust by 1 tick per rank.",
    [15423] = "This ability will give the caster the ability to consume their own health in trade for replenishing their mana.",
    [15424] = "This ability reduces the reuse timer on Feral Swipe to 3 seconds for a short period of time. Lasts 30 seconds. /alt activate 1240",
    [15425] = "This ability slows the combat speed of your targeted enemy for a short time.",
    [15429] = "By following the teachings of Tenshin Katori, this passive ability allows the focused monk to increase damage inflicted by 2-handed blunt weapons. Each rank increases the damage slightly.",
    [15432] = "Your inner focus and peaceful meditation has granted you increased accuracy when forced to engage in combat. Each rank increases your accuracy slightly.",
    [15438] = "This passive ability reduces the time required between uses of your Ironfist discipline by 3 minutes per rank.",
    [15444] = "This passive ability grants you a small chance to score a massive second flying kick after you use flying kick upon an opponent. Additional ranks increase the power and proc chance of this strike.",
    [15447] = "This ability strikes your enemy in a vulnerable spot crippling their defense against your Tiger Claw attacks for a short period of time. Each rank allows your Tiger Claw attacks to hit for greater damage.",
    [15450] = "This passive ability reduces the time required between uses of your Synergy abilities by 3 seconds per rank.",
    [15453] = "This passive ability reduces the time required between uses of your Crane Stance by 60 seconds per rank.",
    [15456] = "This passive ability reduces the time required between uses of your Eye Gouge ability by 5 seconds per rank.",
    [15475] = "While this rune is active anything that attacks the enchanter will have a chance to be forced away and rooted. Additional ranks increase the chance that the effect will proc while also increasing the amount of damage the rune absorbs.",
    [15478] = "This passive ability will reduce the time between uses of your Glyph Spray ability by two minutes per rank.",
    [15481] = "When activated, this ability increases your group's chance to land critical hits with direct damage and DoT spells, while also increasing the damage they do. /alt activate 2202",
    [15482] = "Allows the Enchanter to summon a mirror of themselves that will generate a large amount of hate for a short period of time. Additional ranks will increase the stats of the summoned ally.",
    [15485] = "When casting a level 96 or higher hostile spell, this passive ability provides a chance to clear your group's mind, making their next spell cost zero mana.",
    [15486] = "When activated, this ability will cloak your group in chromatic magic, allowing their next instant detrimental spell to crit for greater damage. Additional ranks increase the critical damage.",
    [15489] = "This ability grants you an additional version of your Blanket of Forgetfulness spell.",
    [15490] = "This ability increases a target's vulnerability to Wizard's Ethereal direct damage spells with a casting level of 90 or greater. Additional ranks increase that vulnerability.",
    [15493] = "This passive ability decreases the cast time of your mesmerize spells by 10% per rank.",
    [15496] = "Places protective runes around the Enchanter's group which will trigger a damage absorption rune when the target takes a significant amount of spell or melee damage.",
    [15502] = "Each rank of this ability shortens the reuse time of your Counterattack Discipline ability by 4 minutes.",
    [15509] = "Each rank of this passive ability reduces the reuse time on the Onslaught line of abilities by 10%.",
    [15512] = "This passive ability adds a weapon proc on backstab which increases all weapon damage for a short time. Each rank increases the chance to proc and the damage added.",
    [15515] = "This ability sprays your target with an absorbing agent, increasing incoming damage slightly for a short period of time.",
    [15516] = "This passive ability increases the chances that Requiem of Time will land on your enemy.",
    [15517] = "This passive ability reduces the cast time of Requiem of Time by .5 seconds per rank.",
    [15521] = "This ability when activated causes your target to be thrust away from you from a barrage of sound waves without inflicting any damage.",
    [15540] = "This passive ability increases your damage with slashing weapons. Each rank slightly increases the amount of damage from slashing weapons.",
    [15543] = "This passive ability increases your damage with melee weapons. Each rank slightly increases this bonus.",
    [15546] = "This passive ability increases your damage with piercing weapons. Each rank slightly increases the amount of damage from piercing weapons.",
    [15549] = "This passive ability reduces the reuse time of Lure of the Siren's Song by 15 seconds per rank.",
    [15555] = "This ability gives you a small chance to launch an additional throwing attack when using your Axe of Rallos attacks.  Additional ranks increase the likelihood of launching the attack.",
    [15564] = "This passive ability adds a small amount of damage to each throwing attack. Each additional rank increases this damage slightly.",
    [15567] = "This ability, when activated, causes all your melee attacks to strike enemies around you for a short period of time. Each rank increases the duration for this effect.",
    [15569] = "Battle Stomp enables you to enter the battle with increased combat prowess for a short period of time.",
    [15570] = "This ability, when activated, replenishes some of your endurance at the cost of health. Be warned, this ability can kill you if not used carefully.",
    [15571] = "This passive ability decreases the amount of time required between uses of Dying Grasp by 3 minutes per rank.",
    [15574] = "Numbs the awareness of the undead, making them less likely to attack.  Rank 1 works on enemies up to level 80. Each rank thereafter increases the effective level by 5.",
    [15579] = "This passive ability extends the duration of Encroaching Darkness by 2 ticks per rank.",
    [15582] = "This ability places a ward upon yourself which triggers Death's Grip should your health drop below 80%. Each rank increases the minimum damage bonus applied to your damage over time spells.",
    [15591] = "This passive ability reduces the cast time of Levant by .5 seconds per rank. Note, this will only affect the AA version of Levant.",
    [15594] = "This passive ability grants you a chance to have your damage over time spells hit for additional damage. Each level increases both the chance and amount of damage.",
    [15598] = "This passive ability reduces the reuse time of your Fury abilities by 3 minutes per rank.",
    [15601] = "This AA grants you an alternate version of the Lower Element II spell.",
    [15602] = "This passive ability increases the damage of your direct damage spells. Each rank increases the damage slightly.",
    [15609] = "This passive ability will sometimes allow your direct damage spells to create an unplanned burst of arcane energy striking your target for incredible damage. Note: Spells below level 88 or with a casting time shorter than 3 seconds cannot generate enough energy to trigger the fusion reaction.",
    [15611] = "This ability, when activated, allows a limited number of your direct damage spells a greater chance to strike for critical effect, while arcane runes protect you from incoming spell and melee damage for a short while.",
    [15612] = "This ability grants you a direct damage capability using the power of flame as a weapon. Additional ranks increase the power of your strike.",
    [15615] = "This ability grants you a direct damage capability using the power of ice as a weapon. Additional ranks increase the power of your strike.",
    [15619] = "This ability channels a burst of health and mana to yourself without drawing attention.",
    [15622] = "This ability reduces the casting time on your direct damage spells. Each rank reduces the cast time slightly. Damage Over Time spells will not be affected.",
    [15625] = "This passive ability increases the critical damage from your backstab attacks. Each rank increases the critical damage slightly.",
    [15634] = "Each rank of this ability shortens the reuse time of your Swiftblade abilities by 5%.",
    [15639] = "This ability will instantly fill creatures closely around you with hatred towards you.",
    [15640] = "This ability will instantly fill creatures around your targeted enemy with hatred towards you.",
    [15642] = "Grants the Shadow Knight a powerful destructive ability that inflicts terrible pain and damage on their target while returning some endurance.",
    [15643] = "This ability, when activated, allows your lifetap spells greater than level 91 to strip mana from your enemy and give it to other members of your group. Each rank increases the chance to proc and amount of mana returned.",
    [15646] = "This ability when activated strikes at your enemy with unholy magic and returns to you a portion of their magical essence.",
    [15648] = "This passive ability enhances your Frenzy based attacks, increasing their damage. Each rank increases the damage slightly.",
    [17785] = "Focus your will upon the item held on your cursor. If it is the same item (base or enchanted versions) as what is currently equipped in your power source slot, you will receive a large portion of progress toward that item's next rank while destroying the item on your cursor.",
    [17789] = "When activated, this ability will consume any available unspent Alternate Advancement points in order to improve the progress of the item in your power source slot.",
    [17790] = "This ability calls the shades of fallen enemies back to life to serve the Necromancer. The soulless abomination will fight the target, until called back to the afterlife some time later. The slave summoned by the first rank of this ability serves for 60 seconds. This ability is passive, and will automatically create minions as you cull your foes.",
    [18973] = "Increases the range in which you can see nearby enemies. This does NOT increase your tracking skill.",
    [18994] = "This ability summons an Alternately Advanced Firework... you can literally light your AA on fire to share your brilliance with others even in the darkest dungeon.",
    [18997] = "Your damage over time spells have a chance to call forth more... BEEEEES! This damage over time effect can jump to nearby enemies increasing the magic damage they take.",
    [18998] = "This ability grants you a chance to automatically raise your slain target from the grave to fight for you.",
    [18999] = "Your damage over time spells have a chance to add an additional, unresistible slow effect.",
    [38407] = "The ability, when activated, has a chance to make all enemies within a small radius less resistant to magical attacks for a short time.",
    [50000] = "Summons a magical ring which allows to an extradimensional space. Your summoned minions also have access to this space, and will equip any items placed within in order to enhance their combat abilities.",
    [54006] = "When active this ability will stun and fill your foe with a large amount of hate for you. Additional ranks increase the potency of this effect. /alt activate 3646",
    [54009] = "Has a chance to forcibly move some enemies around you away from you and cause them to forget that you exist.",
    [54010] = "Has a chance to forcibly move your target away from you and cause them to forget that you exist.",
  },
  descriptionSIDsByID = {
    [0] = {  },
    [1] = { 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 },
    [2] = { 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7 },
    [3] = { 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12 },
    [4] = { 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17 },
    [5] = { 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22 },
    [6] = { 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27, 27 },
    [7] = { 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32 },
    [8] = { 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37, 37 },
    [9] = { 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42, 42 },
    [10] = { 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47 },
    [11] = { 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52 },
    [12] = { 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57 },
    [13] = { 62, 62, 62, 62, 62 },
    [15] = { 68, 68, 68 },
    [16] = { 71, 71, 71, 71, 71, 71 },
    [17] = { 74, 74, 74 },
    [18] = { 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77, 77 },
    [19] = { 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80, 80 },
    [20] = { 83, 83, 83, 83 },
    [21] = { 86, 86, 86, 86, 86 },
    [23] = { 92, 92, 92 },
    [25] = { 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98, 98 },
    [26] = { 101, 101, 101 },
    [27] = { 104, 104, 104 },
    [28] = { 107, 107, 107, 107, 107, 107 },
    [29] = { 110, 110, 110 },
    [30] = { 113, 113, 113, 113, 113, 113 },
    [31] = { 116, 116, 116 },
    [32] = { 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119, 119 },
    [33] = { 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122, 122 },
    [34] = { 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125, 125 },
    [35] = { 128 },
    [36] = { 129 },
    [37] = { 130 },
    [38] = { 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131, 131 },
    [39] = { 132 },
    [41] = { 136, 136 },
    [42] = { 137, 137, 137 },
    [43] = { 140 },
    [44] = { 12863, 12863, 12863, 12863, 12863 },
    [45] = { 144 },
    [46] = { 145 },
    [47] = { 146, 146, 146, 146, 146, 146, 146, 146, 146 },
    [48] = { 147, 147, 147 },
    [49] = { 150, 150, 150 },
    [50] = { 153, 153, 153, 153, 153, 153, 153, 153, 153 },
    [52] = { 155, 155, 155, 155, 155, 155, 155 },
    [53] = { 156 },
    [55] = { 158 },
    [56] = { 159, 159, 159 },
    [57] = { 162 },
    [58] = { 163 },
    [60] = { 167, 167, 167, 167, 167, 167 },
    [61] = { 168, 168, 168, 168 },
    [62] = { 171, 171, 171, 171 },
    [63] = { 174, 174, 174, 174 },
    [64] = { 177, 177, 177, 177 },
    [67] = { 182 },
    [68] = { 183 },
    [69] = { 184, 184, 184 },
    [70] = { 185 },
    [71] = { 186 },
    [72] = { 187 },
    [73] = { 188, 188, 188, 188, 188, 188, 188 },
    [75] = { 190, 190, 190, 190, 190, 190, 190, 190, 190, 190 },
    [76] = { 193 },
    [77] = { 194 },
    [78] = { 195 },
    [79] = { 196 },
    [80] = { 197 },
    [81] = { 198 },
    [82] = { 199, 199, 199, 199 },
    [84] = { 205 },
    [85] = { 206 },
    [87] = { 208 },
    [89] = { 210, 210, 210, 210, 210, 210, 210, 210, 210, 210, 210, 210, 210 },
    [90] = { 213, 213, 213, 213 },
    [94] = { 225, 225, 225 },
    [97] = { 230, 230, 230, 230, 230, 230, 230, 230 },
    [98] = { 233 },
    [100] = { 237, 237, 237 },
    [101] = { 240, 240, 240 },
    [102] = { 243 },
    [103] = { 244, 244, 244, 244 },
    [104] = { 247, 247, 247, 247, 247, 247 },
    [107] = { 254 },
    [108] = { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
    [109] = { 258, 258 },
    [110] = { 259 },
    [111] = { 260, 260, 260, 260, 260, 260 },
    [112] = { 263, 263, 263 },
    [114] = { 267, 267, 267, 267, 267, 267, 267, 267, 267, 267, 267, 267, 267, 267, 267 },
    [116] = { 273 },
    [117] = { 274 },
    [118] = { 275, 275, 275, 275 },
    [119] = { 278 },
    [120] = { 279, 279 },
    [121] = { 280, 280, 280 },
    [122] = { 283, 283, 283 },
    [123] = { 286 },
    [124] = { 287 },
    [125] = { 288 },
    [126] = { 289, 289, 289, 289 },
    [127] = { 290, 290 },
    [128] = { 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 291, 12828 },
    [129] = { 10348, 10348, 10348, 10348 },
    [130] = { 8300, 8300, 8300, 8300 },
    [131] = { 8303 },
    [132] = { 8312 },
    [133] = { 14200 },
    [134] = { 14203 },
    [135] = { 14206 },
    [136] = { 14207 },
    [137] = { 14208 },
    [138] = { 14209 },
    [139] = { 14213 },
    [140] = { 14225 },
    [141] = { 412, 412, 412, 412, 412, 412 },
    [142] = { 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418, 418 },
    [143] = { 423, 423, 423 },
    [144] = { 426, 426, 426, 426, 426 },
    [146] = { 8001 },
    [147] = { 14231 },
    [148] = { 14232 },
    [149] = { 14233 },
    [150] = { 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735 },
    [151] = { 14234 },
    [152] = { 12638 },
    [153] = { 459, 459, 459, 459, 459, 459, 459, 459, 459 },
    [154] = { 462, 462, 462, 462, 462 },
    [156] = { 468, 468, 468, 468, 468, 468, 468, 17288 },
    [157] = { 471, 471, 471, 471, 471 },
    [158] = { 474, 474, 474, 474 },
    [159] = { 477, 477, 477, 477, 477, 477, 477 },
    [160] = { 480, 480, 480, 480, 480, 480 },
    [161] = { 483, 483, 483 },
    [163] = { 489, 489, 489, 489, 489, 489 },
    [164] = { 492, 492, 492, 492, 492, 492, 492 },
    [165] = { 495, 495, 495, 495, 495, 495, 495, 495, 495, 495 },
    [166] = { 498, 498, 498, 498, 498, 498, 498, 498, 498 },
    [167] = { 501, 501, 501, 501, 501, 501, 501 },
    [168] = { 14241 },
    [169] = { 507, 507, 507 },
    [170] = { 510, 510, 510, 510, 510, 510, 510, 510, 510, 510 },
    [171] = { 513, 513, 513, 513, 513, 513, 513, 513, 513 },
    [172] = { 516, 516, 516, 516, 516 },
    [173] = { 517, 517, 517, 517, 517, 517, 517, 517, 517, 517, 517, 517, 517, 517, 517, 517 },
    [174] = { 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520, 520 },
    [175] = { 523, 523, 523 },
    [176] = { 526, 526 },
    [177] = { 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528, 528 },
    [178] = { 14244 },
    [179] = { 14249 },
    [180] = { 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534, 534 },
    [181] = { 537, 537 },
    [182] = { 5006 },
    [183] = { 14254 },
    [184] = { 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545, 545 },
    [185] = { 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548, 548 },
    [186] = { 551, 551, 551, 551, 551, 551, 551, 551, 551, 551, 551, 551, 551, 551 },
    [187] = { 556, 556, 556, 556, 556, 556, 556, 556, 556, 556, 556 },
    [188] = { 561, 561, 561, 561, 561, 561 },
    [189] = { 564, 564, 564, 564, 564, 564 },
    [190] = { 567, 567, 567 },
    [193] = { 574, 574, 574, 574 },
    [194] = { 577, 577, 577 },
    [195] = { 580, 580, 580 },
    [196] = { 583, 583, 583 },
    [197] = { 586, 586, 586, 586, 586, 586 },
    [198] = { 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589, 589 },
    [199] = { 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592, 592 },
    [200] = { 593, 593, 593, 593 },
    [201] = { 596, 596, 596, 596 },
    [202] = { 599, 599, 599, 599, 599, 599, 599, 599, 599, 599, 599, 599, 599, 599, 599, 599 },
    [203] = { 602, 602, 602, 602, 602, 602, 602, 602, 602, 602, 602, 602, 602, 602, 602, 602 },
    [204] = { 605 },
    [205] = { 606, 606, 606, 606, 606 },
    [206] = { 611, 611, 611, 611, 611, 611, 611, 611, 611, 611, 611, 611, 611, 611, 611 },
    [207] = { 616, 616, 616, 616, 616, 616, 616, 616, 616, 616, 616, 616, 616, 616, 616, 616 },
    [208] = { 619, 619, 619, 619, 619, 619, 619, 619, 619, 619, 619, 619, 619, 619 },
    [209] = { 622, 622, 622, 622 },
    [210] = { 625, 625, 625, 625, 625, 625, 625, 625, 625 },
    [211] = { 628, 628 },
    [212] = { 630 },
    [213] = { 631, 631, 631, 631, 631, 631, 631, 631, 631 },
    [214] = { 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634, 634 },
    [215] = { 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637, 637 },
    [216] = { 14259 },
    [217] = { 643 },
    [218] = { 644, 644, 644, 644, 644, 644, 644, 644, 644, 644, 644, 644, 644, 644, 644, 644 },
    [219] = { 645, 645, 645, 645 },
    [220] = { 13528 },
    [221] = { 649, 649, 649, 649, 649, 649 },
    [222] = { 652, 652, 652 },
    [223] = { 655, 655, 655 },
    [224] = { 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658, 658 },
    [225] = { 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661, 661 },
    [227] = { 665, 665, 665, 665, 665, 665, 665, 665, 665 },
    [228] = { 13463 },
    [229] = { 671 },
    [230] = { 13449 },
    [231] = { 13527 },
    [232] = { 14262 },
    [233] = { 678, 678, 678, 678, 678, 678, 678, 678, 678, 678, 678 },
    [234] = { 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683, 683 },
    [235] = { 686, 686, 686, 686, 686, 686, 686 },
    [236] = { 691 },
    [237] = { 692, 692, 692, 692, 692, 692, 692, 692, 692, 692, 692, 692, 692 },
    [238] = { 695, 695, 695, 695, 695, 695 },
    [239] = { 13474 },
    [240] = { 13483 },
    [241] = { 13484 },
    [242] = { 13485 },
    [244] = { 13529 },
    [245] = { 718, 718, 718, 718, 718 },
    [246] = { 14265 },
    [247] = { 723, 723, 723, 723, 723, 723 },
    [248] = { 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724, 724 },
    [249] = { 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729, 729 },
    [250] = { 734 },
    [251] = { 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735, 735 },
    [252] = { 738, 738, 738, 738, 738, 738, 738, 738, 738, 738, 738, 738, 738 },
    [254] = { 746, 746, 746, 746, 746, 746, 746, 746, 746, 746, 746, 746, 746, 746, 746, 746 },
    [255] = { 749, 749, 749, 749, 749, 749, 749, 749, 749 },
    [256] = { 754, 754, 754, 754, 754, 754 },
    [257] = { 757, 757, 757, 757, 757, 1222, 1222, 1222, 757, 757, 757, 757, 757, 757, 757, 757, 757, 757 },
    [258] = { 762, 762, 762, 762, 762 },
    [259] = { 767, 767, 767, 767, 767, 767, 767, 767, 767 },
    [260] = { 13549 },
    [261] = { 773, 773, 773, 773, 773, 773, 773, 773, 773, 773, 773, 773, 773 },
    [262] = { 776, 776, 776, 776, 776 },
    [263] = { 781, 781, 781, 781 },
    [264] = { 782, 782, 782 },
    [265] = { 785, 785, 785, 785, 785, 785 },
    [266] = { 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790, 790 },
    [267] = { 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795, 795 },
    [268] = { 800, 800, 800 },
    [269] = { 803, 803, 803 },
    [270] = { 806 },
    [271] = { 807, 807, 807, 807, 807, 807, 807, 807, 807, 807, 807, 807, 807, 807, 807 },
    [272] = { 810, 810, 810, 810, 810, 810, 810, 810, 810, 810, 810 },
    [273] = { 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815, 815 },
    [274] = { 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820, 820 },
    [275] = { 823, 823, 823, 823, 823 },
    [276] = { 828, 828, 828, 828 },
    [278] = { 834, 834, 834, 834, 834 },
    [279] = { 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839, 839 },
    [280] = { 14281 },
    [281] = { 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846, 846 },
    [282] = { 849, 849, 849, 849, 849, 849 },
    [283] = { 852, 852, 852, 852, 852, 852, 852, 852, 852, 852, 852, 852, 852 },
    [284] = { 855, 855, 855, 855, 855, 855, 855, 855, 855, 855, 855, 855, 855, 855, 855, 855 },
    [285] = { 860, 860, 860, 860, 860, 860 },
    [286] = { 863 },
    [287] = { 864, 864, 864, 864, 864, 864, 864, 864, 864, 864, 864, 864, 864, 864, 864 },
    [288] = { 867, 867, 867, 867, 867, 867, 867, 867, 867, 867, 867, 867, 867 },
    [289] = { 872, 872, 872, 872, 872, 872, 872, 872, 872 },
    [290] = { 875, 875, 875, 875, 875, 875, 875, 875, 875 },
    [291] = { 14282 },
    [292] = { 881, 881, 881, 881, 881 },
    [293] = { 14283 },
    [294] = { 888, 888, 888, 888, 888, 888 },
    [295] = { 14286 },
    [296] = { 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895, 895 },
    [297] = { 14289 },
    [299] = { 907, 907, 907, 907, 907, 907, 907, 907, 907, 907 },
    [300] = { 912, 912, 912, 912, 912, 912, 912, 912, 912, 912, 912, 912, 912 },
    [301] = { 915, 915, 915 },
    [302] = { 918, 918, 918 },
    [303] = { 921, 921, 921, 921, 921 },
    [304] = { 922, 922, 922, 922, 922 },
    [305] = { 923, 923, 923, 923, 923 },
    [306] = { 15819 },
    [307] = { 926, 926, 926, 926, 926, 926, 926 },
    [308] = { 931, 931, 931 },
    [309] = { 934, 934, 934, 934, 934, 934 },
    [310] = { 937, 937, 937, 937, 937, 937 },
    [311] = { 940, 940, 940, 940, 940, 940 },
    [312] = { 14292 },
    [313] = { 14295 },
    [314] = { 1047, 1047, 1047, 1047, 1047, 1047, 1047, 1047, 1047, 1047, 1047, 1047, 1047, 1047 },
    [315] = { 952, 952, 952 },
    [316] = { 955, 955, 955, 955, 955 },
    [317] = { 960 },
    [318] = { 961 },
    [319] = { 962, 962, 962, 962, 962, 962, 962, 962, 962, 962, 962, 962, 962, 962 },
    [320] = { 967, 967, 967, 967, 967, 967, 967, 967, 967, 967, 967, 967, 967, 967, 967, 967 },
    [321] = { 970, 970, 970, 970, 970, 970, 970, 970, 970 },
    [322] = { 1388 },
    [323] = { 14307 },
    [324] = { 979, 979, 979 },
    [325] = { 982, 982, 982 },
    [326] = { 985, 985, 985 },
    [327] = { 988, 988, 988 },
    [328] = { 991, 991, 991 },
    [329] = { 994, 994, 994 },
    [330] = { 997, 997, 997, 997, 997, 997 },
    [331] = { 1000 },
    [333] = { 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006, 1006 },
    [334] = { 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021, 1021 },
    [335] = { 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026, 1026 },
    [336] = { 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263, 8263 },
    [337] = { 15798 },
    [338] = { 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041, 1041 },
    [339] = { 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044, 1044 },
    [340] = { 15833 },
    [341] = { 1050, 1050, 1050, 1050, 1050, 1050, 1050, 1050, 1050, 1050, 1050, 1050, 1050 },
    [342] = { 14301 },
    [343] = { 14308 },
    [344] = { 14311 },
    [345] = { 15768 },
    [346] = { 15771 },
    [347] = { 1071, 1071, 1071, 1071 },
    [348] = { 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072, 1072 },
    [350] = { 14321 },
    [351] = { 14322 },
    [352] = { 1089, 1089, 1089 },
    [353] = { 1092 },
    [354] = { 1093, 1093, 1093, 1093, 1093 },
    [355] = { 15836 },
    [357] = { 16176 },
    [359] = { 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110, 1110 },
    [360] = { 13616, 13616, 13616 },
    [361] = { 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116, 1116 },
    [362] = { 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119, 1119 },
    [363] = { 16179 },
    [364] = { 1122 },
    [365] = { 14323 },
    [366] = { 1129, 1129 },
    [367] = { 1131, 1131, 1131, 1131, 1131, 1131, 1131, 1131 },
    [368] = { 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134, 1134 },
    [369] = { 1137, 1137, 1137 },
    [370] = { 1140, 1140, 1140 },
    [371] = { 1143, 1143, 1143, 1143, 1143, 1143 },
    [372] = { 1146, 1146, 1146 },
    [373] = { 1149 },
    [374] = { 1150, 1150, 1150 },
    [375] = { 1155, 1155, 1155 },
    [376] = { 13844 },
    [377] = { 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268, 8268 },
    [378] = { 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273, 8273 },
    [379] = { 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278, 8278 },
    [380] = { 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283, 8283 },
    [381] = { 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288, 8288 },
    [382] = { 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293, 8293 },
    [383] = { 12646 },
    [384] = { 12651 },
    [385] = { 12652, 12652, 12652, 12652 },
    [386] = { 12661 },
    [387] = { 1178, 1178, 1178, 1178, 1178, 1178, 1178, 1178, 1178, 1178, 1178, 1178, 1178 },
    [388] = { 1181, 1181, 1181, 1181, 1181 },
    [389] = { 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186, 1186 },
    [390] = { 13695 },
    [391] = { 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192, 1192 },
    [392] = { 1195, 1195, 1195, 1195, 1195, 1195 },
    [393] = { 12655 },
    [394] = { 12645 },
    [395] = { 12664 },
    [396] = { 1209 },
    [397] = { 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210, 1210 },
    [398] = { 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213, 1213 },
    [399] = { 16180 },
    [400] = { 14331 },
    [401] = { 12688 },
    [402] = { 12691 },
    [403] = { 14264 },
    [404] = { 1228 },
    [405] = { 1229 },
    [406] = { 1230, 1230, 1230, 1230, 1230, 1230 },
    [407] = { 7884, 7884 },
    [408] = { 7885, 7885 },
    [409] = { 1233, 1233, 1233 },
    [410] = { 12706, 12706, 12706, 12706 },
    [411] = { 12709 },
    [412] = { 1239, 1239, 1239, 1239 },
    [413] = { 1242, 1242, 1242, 1242, 1242, 1242, 1242, 1242, 1242, 1242, 1242, 1242, 1242 },
    [414] = { 1245, 1245, 1245, 1245 },
    [415] = { 12710, 12710, 12710, 12710 },
    [416] = { 12713, 12713, 12713 },
    [417] = { 12716, 12716, 12716, 12716 },
    [418] = { 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126, 1126 },
    [419] = { 12719 },
    [420] = { 1255 },
    [424] = { 12720 },
    [425] = { 12721, 12721, 12721, 12721 },
    [426] = { 15904 },
    [427] = { 12737, 12737, 12737, 12737 },
    [428] = { 1272, 1272 },
    [429] = { 15908, 15908, 15908 },
    [430] = { 12766, 12766 },
    [431] = { 12770, 12770, 12770 },
    [432] = { 12773, 12773, 12773, 12773, 12773 },
    [433] = { 12778, 13678 },
    [434] = { 1284, 1284, 1284, 1284, 1284, 1284, 1284, 1284 },
    [435] = { 1287, 1287, 1287, 1287, 1287, 1287, 1287, 1287, 1287, 1287, 1287, 1287, 1287 },
    [436] = { 12779, 12779, 12779 },
    [437] = { 1296, 1296, 1296, 1296, 1296 },
    [438] = { 12782, 12782, 12782 },
    [439] = { 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304, 1304 },
    [440] = { 1307, 1307, 1307, 1307, 1307, 1307, 1307, 1307, 1307, 1307, 1307 },
    [441] = { 12785, 12785 },
    [442] = { 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313, 1313 },
    [443] = { 12804 },
    [444] = { 12807 },
    [446] = { 1323 },
    [447] = { 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327, 1327 },
    [448] = { 12816 },
    [450] = { 12819, 12819 },
    [451] = { 1334, 1334, 1334, 1334, 1334, 1334, 1334, 1334, 1334, 1334, 1334, 1334, 1334 },
    [452] = { 1337, 1337, 1337, 1337, 1337, 1337, 1337 },
    [453] = { 9032 },
    [454] = { 12822 },
    [455] = { 13556 },
    [456] = { 1343 },
    [457] = { 12831 },
    [458] = { 12837 },
    [459] = { 12846 },
    [460] = { 12849 },
    [462] = { 1345, 1345, 1345, 1345, 1345, 1345, 1345, 1345, 1345, 1345, 1345, 1345, 1345, 1345 },
    [463] = { 13385 },
    [464] = { 13388 },
    [465] = { 1348, 1348, 1348, 1348, 1348, 1348, 1348 },
    [466] = { 1011, 1011, 1011, 1011, 1011, 1011 },
    [467] = { 1351, 1351, 1351, 1351 },
    [468] = { 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352, 1352 },
    [469] = { 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355, 1355 },
    [470] = { 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358, 1358 },
    [471] = { 1361 },
    [472] = { 1362 },
    [473] = { 1363 },
    [474] = { 1364 },
    [475] = { 1365 },
    [476] = { 1366 },
    [477] = { 1367 },
    [478] = { 1368 },
    [479] = { 1369 },
    [480] = { 1370 },
    [481] = { 1371 },
    [482] = { 1372 },
    [483] = { 1373 },
    [484] = { 1374 },
    [485] = { 1375 },
    [486] = { 1376 },
    [487] = { 1377 },
    [488] = { 1378, 1379, 1380 },
    [489] = { 13389 },
    [490] = { 12864, 12864 },
    [491] = { 12865 },
    [492] = { 12866, 12866 },
    [493] = { 12867 },
    [494] = { 1409, 1409, 1409, 1409, 1409 },
    [495] = { 1435, 1435, 1435, 4773, 4773, 4773, 4773, 4773 },
    [496] = { 1417, 1417, 1417, 1417, 1417 },
    [497] = { 1420, 1420, 1420, 1420, 1420 },
    [498] = { 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592, 1592 },
    [499] = { 1425, 1425, 1425, 1425, 1425, 1425, 1425, 1425, 1425, 1425 },
    [500] = { 1404, 1404, 1404, 1404, 1404, 1404 },
    [501] = { 12886 },
    [503] = { 1471, 1471, 1471, 1471, 1471, 1471, 1471 },
    [504] = { 1453, 1453, 1453, 1453, 1453 },
    [505] = { 1458 },
    [506] = { 1459, 1459, 1459, 1459, 1459, 1459, 1459, 1459, 1459, 1459, 1459, 1459 },
    [507] = { 12887 },
    [508] = { 12888 },
    [509] = { 12889, 12889 },
    [510] = { 12892 },
    [511] = { 4665 },
    [512] = { 1474, 1474, 1474 },
    [513] = { 12894 },
    [514] = { 1478, 1478, 1478, 1478, 1478, 1478, 1478, 1478, 1478, 1478, 1478, 1478, 1478 },
    [515] = { 12893, 12893 },
    [516] = { 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486, 1486 },
    [517] = { 12902, 12902 },
    [518] = { 1494 },
    [519] = { 1495, 1495, 1495, 1495, 1495, 1495, 1495, 1495, 1495, 1495, 1495, 1495, 1495 },
    [520] = { 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498, 1498 },
    [521] = { 1501, 1501, 1501, 1501, 1501, 1501, 1501 },
    [522] = { 1504, 1504, 1504, 1504, 1504, 1504, 1504, 1504, 1504 },
    [523] = { 12907, 12907 },
    [524] = { 1510, 1510, 1510 },
    [525] = { 1511, 1511, 1511, 1511, 1511, 1511 },
    [526] = { 1514, 1514, 1514, 1514 },
    [527] = { 12912, 12912 },
    [528] = { 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520, 1520 },
    [529] = { 1523 },
    [530] = { 12920 },
    [531] = { 1527 },
    [532] = { 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819, 4819 },
    [533] = { 16016 },
    [534] = { 12931 },
    [535] = { 12937 },
    [536] = { 1542 },
    [537] = { 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543, 1543 },
    [538] = { 1546, 1546, 1546, 1546, 1546, 1546, 1546, 1546 },
    [539] = { 1549, 1549, 1549 },
    [540] = { 1552, 1552, 1552 },
    [541] = { 1555, 1555, 1555, 1555, 1555, 1555 },
    [542] = { 16071 },
    [543] = { 12941 },
    [544] = { 1569, 1569, 1569, 1569, 1569, 1569, 1569, 1569, 1569, 1569, 1569, 1569, 1569 },
    [545] = { 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572, 1572 },
    [546] = { 1577, 1577, 1577, 1577, 1577, 1577, 1577, 1577, 1577, 1577, 1577, 1577, 1577 },
    [547] = { 16081 },
    [548] = { 1583, 1583, 1583, 1583, 1583 },
    [549] = { 1586 },
    [550] = { 14275 },
    [551] = { 1414, 1414, 1414, 1414, 1414, 1414 },
    [552] = { 1597, 1597, 1597 },
    [553] = { 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598, 1598 },
    [554] = { 14341 },
    [555] = { 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604, 1604 },
    [556] = { 14346 },
    [557] = { 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608, 1608 },
    [558] = { 1383, 1383, 1383, 1383, 1383, 1383, 1383, 1383, 1383, 1383, 1383 },
    [559] = { 1462, 1462, 1462, 1462, 1462, 1462, 1462, 1462, 1462 },
    [560] = { 1627, 1627, 1627 },
    [561] = { 12881 },
    [562] = { 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616, 1616 },
    [563] = { 1587, 1587, 1587 },
    [565] = { 1638 },
    [567] = { 16146 },
    [568] = { 1641 },
    [569] = { 1642 },
    [570] = { 1645 },
    [571] = { 1646 },
    [572] = { 1643 },
    [573] = { 1644 },
    [574] = { 1647 },
    [575] = { 4672, 4672, 4672 },
    [576] = { 4675, 4675, 4675 },
    [577] = { 12885 },
    [578] = { 12939 },
    [579] = { 4688, 4688, 4688, 4688, 4688 },
    [580] = { 13565 },
    [581] = { 4698, 4698 },
    [582] = { 4699, 4699, 4699, 4699 },
    [583] = { 13568 },
    [584] = { 13571 },
    [585] = { 4702 },
    [586] = { 13788 },
    [587] = { 4704 },
    [588] = { 4705 },
    [589] = { 4706 },
    [590] = { 5150 },
    [591] = { 5165 },
    [592] = { 5180 },
    [593] = { 5195 },
    [594] = { 5210 },
    [595] = { 5225 },
    [596] = { 12963 },
    [597] = { 12964 },
    [598] = { 12965 },
    [599] = { 12968, 12968, 12968, 12968 },
    [600] = { 9033 },
    [601] = { 4836 },
    [602] = { 12938 },
    [603] = { 12971, 12971, 12971, 12971, 12971 },
    [604] = { 12977, 12977, 12977, 12977, 12977, 12977 },
    [605] = { 4844, 4844, 4844, 4844, 4844, 4844, 4844, 4844, 4844, 4844, 4844, 4844, 4844 },
    [606] = { 4849, 4849, 4849, 4849 },
    [609] = { 4854, 4854, 4854, 4854, 4854, 4854, 4854, 4854, 4854, 4854, 4854, 4854, 4854 },
    [610] = { 4857, 4857, 4857, 4857, 4857, 4857, 4857 },
    [611] = { 4860, 4860, 4860 },
    [612] = { 4861, 4861, 4861, 4861, 4861, 4861, 4861, 4861, 4861, 4861, 4861, 4861 },
    [613] = { 13096, 13096, 13096, 13096 },
    [614] = { 5001 },
    [615] = { 4887, 4887, 4887 },
    [616] = { 4890, 4890, 4890, 4890, 4890 },
    [617] = { 5127, 5127, 5127 },
    [618] = { 12989, 12989, 12989, 12989 },
    [619] = { 12992, 12992, 12992, 12992 },
    [620] = { 13001, 13001, 13001, 13001 },
    [621] = { 4903, 4903, 4903, 4903, 4903, 4903 },
    [622] = { 4906, 4906, 4906, 4906, 4906, 4906 },
    [623] = { 4909, 4909, 4909, 4909, 4909, 4909 },
    [624] = { 4912, 4912, 4912, 4912, 4912, 4912 },
    [625] = { 4915, 4915, 4915, 4915, 4915, 4915, 4915, 4915, 4915 },
    [626] = { 13004, 13004 },
    [627] = { 13008 },
    [628] = { 4924, 4924, 4924, 4924, 4924, 4924 },
    [629] = { 4927, 4927, 4927 },
    [630] = { 13009 },
    [631] = { 5002 },
    [632] = { 4934, 4934, 4934, 4934 },
    [633] = { 4935, 4935, 4935, 4935 },
    [634] = { 13010, 13010, 13010, 13010 },
    [635] = { 13013, 13013, 13013 },
    [636] = { 4938, 4938, 4938, 4938, 4938 },
    [637] = { 13017, 13017, 13017, 13017 },
    [638] = { 13020 },
    [639] = { 4943 },
    [640] = { 4944, 4944, 4944, 4944, 4944, 4944, 4944, 4944, 4944, 4944, 4944, 4944, 4944 },
    [641] = { 13055 },
    [642] = { 13065 },
    [643] = { 13066 },
    [644] = { 13067 },
    [645] = { 13753 },
    [646] = { 13758 },
    [647] = { 13764 },
    [649] = { 14046 },
    [650] = { 14051 },
    [651] = { 14052 },
    [652] = { 14056 },
    [653] = { 14059 },
    [654] = { 14062 },
    [655] = { 14065 },
    [656] = { 14068 },
    [657] = { 14071 },
    [658] = { 14076 },
    [659] = { 14080 },
    [660] = { 14081 },
    [661] = { 5248, 5248, 5248, 5248, 5248, 5248, 5248, 5248, 5248, 5248 },
    [662] = { 5251, 5251, 5251, 5251, 5251, 5251, 5251, 5251, 5251, 5251, 5251, 5251, 5251 },
    [663] = { 14100 },
    [664] = { 14115 },
    [665] = { 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264, 5264 },
    [666] = { 5015, 5015, 5015, 5015, 5015 },
    [667] = { 5269 },
    [668] = { 5017, 5017, 5017, 5017, 5017, 5017, 5017, 5017, 5017, 5017 },
    [669] = { 5020, 5020, 5020, 5020, 5020 },
    [670] = { 5021, 5021, 5021, 5021, 5021, 5021, 5021, 5021, 5021 },
    [671] = { 5022, 5022, 5022, 5022, 5022, 5022, 5022 },
    [672] = { 5025, 5025, 5025 },
    [673] = { 5028, 5028 },
    [674] = { 16149 },
    [675] = { 14224 },
    [676] = { 14358 },
    [677] = { 14359 },
    [678] = { 16082 },
    [679] = { 16083 },
    [680] = { 16084 },
    [681] = { 16087 },
    [682] = { 16096 },
    [683] = { 16097 },
    [684] = { 16104 },
    [685] = { 16105 },
    [686] = { 16106 },
    [687] = { 16107 },
    [688] = { 16108 },
    [689] = { 4688, 4688, 4688, 4688, 4688 },
    [690] = { 16109 },
    [691] = { 16113 },
    [692] = { 16114 },
    [693] = { 16117 },
    [694] = { 16120 },
    [695] = { 16152 },
    [696] = { 16156 },
    [697] = { 5085, 5085, 5085, 5085, 5085, 5085, 5085, 5085, 5085, 5085, 5085, 5085 },
    [698] = { 13416 },
    [699] = { 13419 },
    [700] = { 16159 },
    [701] = { 5095, 5095, 5095, 5095, 5095, 5095, 5095, 5095, 5095, 5095, 5095, 5095, 5095 },
    [702] = { 5098 },
    [703] = { 14318 },
    [704] = { 14367 },
    [705] = { 5105, 5105, 5105, 5105, 5105 },
    [706] = { 16160 },
    [707] = { 5109, 5109, 5109, 5109, 5109 },
    [708] = { 13271 },
    [709] = { 13272 },
    [710] = { 14360 },
    [711] = { 16162 },
    [712] = { 5083, 5083, 5083, 5083, 5083, 5083 },
    [713] = { 14129, 14129 },
    [714] = { 14135 },
    [715] = { 14139 },
    [716] = { 14141 },
    [717] = { 14144 },
    [718] = { 14151 },
    [719] = { 14163 },
    [720] = { 14088 },
    [721] = { 14091 },
    [722] = { 14304 },
    [723] = { 16185 },
    [724] = { 14364 },
    [725] = { 16124 },
    [726] = { 16128 },
    [727] = { 16131 },
    [728] = { 16137 },
    [729] = { 16140 },
    [730] = { 16186 },
    [731] = { 16188 },
    [732] = { 16195 },
    [733] = { 4739, 4739, 4739, 4739, 4739, 4739, 4739, 4739, 4739 },
    [734] = { 4742, 4742 },
    [735] = { 13134, 13134, 13134 },
    [737] = { 13143, 13143, 13143 },
    [738] = { 13146, 13146, 13146 },
    [739] = { 13164 },
    [740] = { 4761, 4761, 4761, 4761, 4761, 4761 },
    [741] = { 13202, 13202 },
    [742] = { 16196 },
    [743] = { 13166, 13166, 13166 },
    [744] = { 13169 },
    [745] = { 13204, 13204, 13204, 13204 },
    [746] = { 16197 },
    [747] = { 16200 },
    [748] = { 4894, 4894, 4894, 4894, 4894, 4894, 4894, 4894, 4894, 4894 },
    [749] = { 13165 },
    [751] = { 13225, 13225 },
    [752] = { 13224 },
    [753] = { 13252 },
    [754] = { 13260 },
    [755] = { 13261 },
    [756] = { 13646 },
    [757] = { 5276, 5276, 5276, 5276 },
    [758] = { 13667 },
    [759] = { 13670 },
    [760] = { 16203 },
    [761] = { 16208 },
    [762] = { 5263, 5263, 5263, 5263, 5263, 5263, 5263, 5263, 5263, 5263 },
    [763] = { 13684, 13684, 13684 },
    [764] = { 13687 },
    [765] = { 13689 },
    [766] = { 13693 },
    [767] = { 16211 },
    [768] = { 16215 },
    [769] = { 13100, 13100 },
    [770] = { 13101, 13101, 13101, 13101 },
    [771] = { 13108 },
    [772] = { 14192 },
    [773] = { 7756 },
    [774] = { 14690 },
    [775] = { 16342 },
    [776] = { 5295, 5295, 5295, 5295, 5295, 5295, 5295, 5295, 5295, 5295, 5295, 5295, 5295 },
    [777] = { 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298, 5298 },
    [778] = { 5007, 5007, 5007, 5007, 5007, 5007, 5007, 5007, 5007, 5007, 5007, 5007, 5007, 5007 },
    [779] = { 13873 },
    [780] = { 13878 },
    [781] = { 13881 },
    [782] = { 16317 },
    [783] = { 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056, 1056 },
    [784] = { 1251 },
    [785] = { 1252 },
    [786] = { 1253 },
    [787] = { 1254 },
    [789] = { 1477 },
    [790] = { 878, 878, 878, 878, 878, 878, 878, 878, 878, 878, 878, 878, 878, 878, 878 },
    [791] = { 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931, 4931 },
    [792] = { 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274, 1274 },
    [793] = { 1639 },
    [794] = { 1640 },
    [795] = { 1662, 1662, 1662, 1662, 1662 },
    [796] = { 13889 },
    [797] = { 13130 },
    [798] = { 14229 },
    [799] = { 16644 },
    [800] = { 6607, 6607, 6607, 16324 },
    [801] = { 6610, 6610, 6610 },
    [802] = { 6611, 6611, 6611, 6611, 6611, 6611, 6611 },
    [803] = { 6614, 6614, 6614, 6614, 6614, 6614 },
    [804] = { 6617, 6617 },
    [805] = { 14148 },
    [806] = { 14160 },
    [807] = { 14157 },
    [808] = { 14166 },
    [809] = { 14181 },
    [810] = { 14186 },
    [811] = { 16218 },
    [812] = { 16221 },
    [813] = { 16222 },
    [814] = { 16225 },
    [815] = { 16230 },
    [816] = { 16235 },
    [817] = { 16238 },
    [818] = { 16257 },
    [819] = { 16666 },
    [820] = { 6630, 6630, 6630, 6630, 6630, 6630, 6630, 6630, 6630, 6630, 6630 },
    [821] = { 6635 },
    [822] = { 6640, 6640 },
    [823] = { 6641, 6641, 6641, 6641, 6641, 6641, 6641 },
    [824] = { 6644, 6644 },
    [825] = { 6645, 6645, 6645 },
    [826] = { 6646 },
    [827] = { 16745 },
    [828] = { 16260 },
    [829] = { 16263 },
    [830] = { 16272 },
    [831] = { 16276 },
    [832] = { 16287 },
    [833] = { 17252 },
    [834] = { 16296 },
    [835] = { 16300 },
    [836] = { 16310 },
    [837] = { 16330 },
    [838] = { 16163 },
    [839] = { 16360 },
    [840] = { 16363 },
    [841] = { 6663, 6663, 6663, 6663, 6663, 6663 },
    [842] = { 6666, 6666 },
    [843] = { 6668, 6668, 6668 },
    [844] = { 6671 },
    [845] = { 6672 },
    [846] = { 6673 },
    [847] = { 6674 },
    [848] = { 6675 },
    [849] = { 6676 },
    [850] = { 16366 },
    [851] = { 16369 },
    [852] = { 16370 },
    [853] = { 16371 },
    [854] = { 17256 },
    [856] = { 6691 },
    [857] = { 6692, 6692, 6692, 6692, 6692, 6692 },
    [858] = { 6697, 6697, 6697, 6697, 6697 },
    [859] = { 6702 },
    [860] = { 6703, 6703, 6703, 6703, 6703, 6703, 6703, 6703, 6703 },
    [861] = { 6706, 6706, 6706, 6706, 6706, 6706, 6706 },
    [862] = { 6709, 6709, 6709 },
    [863] = { 6712, 6712, 6712, 6712, 6712, 6712, 6712, 6712, 6712, 6712 },
    [864] = { 14169 },
    [865] = { 17257 },
    [866] = { 14179 },
    [867] = { 14180 },
    [868] = { 16380 },
    [869] = { 16386 },
    [870] = { 6750, 6750 },
    [871] = { 6751, 6751, 6751, 6751, 6751, 6751, 6751 },
    [872] = { 6754, 6754, 6754 },
    [873] = { 6755, 6755, 6755, 6755 },
    [874] = { 6758, 6758, 6758, 6758, 6758, 6758, 6758 },
    [875] = { 6761, 6761, 6761, 6761, 6761, 6761, 6761, 6761 },
    [876] = { 6764, 6764, 6764 },
    [877] = { 6765, 6765, 6765, 6765, 6765, 6765, 6765, 6765, 6765 },
    [878] = { 1196, 1196, 1196, 1196, 1196, 1196, 1196, 1196 },
    [879] = { 17258 },
    [880] = { 16392 },
    [881] = { 16395 },
    [882] = { 16396 },
    [883] = { 16536 },
    [884] = { 17209 },
    [885] = { 17212 },
    [886] = { 17218 },
    [888] = { 17555 },
    [889] = { 17229 },
    [890] = { 17235 },
    [891] = { 6791, 6791, 6791, 6791, 6791, 6791, 6791, 6791, 6791, 6791 },
    [892] = { 6794 },
    [894] = { 17242 },
    [895] = { 17245 },
    [896] = { 17249 },
    [897] = { 17199 },
    [898] = { 17267 },
    [899] = { 17273 },
    [900] = { 6815, 6815, 6815, 6815, 6815, 6815, 6815, 6815, 6815, 6815 },
    [901] = { 6818 },
    [902] = { 6819, 6819, 6819, 6819, 6819, 6819 },
    [903] = { 6822, 6822 },
    [904] = { 6823, 6823, 6823, 6823, 6823, 6823, 6823 },
    [905] = { 6828, 6828, 6828 },
    [906] = { 10522 },
    [907] = { 10527 },
    [908] = { 10532 },
    [909] = { 10537 },
    [910] = { 17280 },
    [911] = { 10545 },
    [912] = { 10546 },
    [914] = { 10548 },
    [915] = { 17281 },
    [917] = { 10588, 10588, 10588, 10588, 10588, 10588 },
    [918] = { 10627, 10627, 10627 },
    [919] = { 17554 },
    [920] = { 10711, 10711, 10711, 10711 },
    [921] = { 10714, 10714 },
    [922] = { 10719, 10719, 10719, 10719 },
    [923] = { 10722, 10722, 10722, 10722, 10722, 10722 },
    [924] = { 10727, 10727 },
    [925] = { 10730, 10730 },
    [926] = { 10733, 10733, 10733 },
    [927] = { 10736, 10736 },
    [928] = { 14026 },
    [929] = { 14029 },
    [930] = { 14032 },
    [931] = { 12582, 12582, 12582, 12582 },
    [932] = { 17289 },
    [933] = { 12635 },
    [934] = { 17307 },
    [935] = { 10789 },
    [936] = { 10792, 10792, 10792, 10792, 10792, 10792 },
    [937] = { 17317 },
    [938] = { 12636, 12636, 12636, 12636, 12636, 12636, 12636, 12636 },
    [939] = { 12638 },
    [940] = { 6870, 6870, 6870, 6870, 6870, 6870 },
    [941] = { 255, 255, 255, 255, 255, 255, 255, 255, 255, 255 },
    [942] = { 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375 },
    [943] = { 649, 649, 649 },
    [944] = { 776, 776, 776 },
    [945] = { 10346, 10346, 10346 },
    [946] = { 14037 },
    [947] = { 14040 },
    [948] = { 17328 },
    [949] = { 17329 },
    [950] = { 17336 },
    [951] = { 17339 },
    [952] = { 17342 },
    [953] = { 17344 },
    [954] = { 17347 },
    [955] = { 17357 },
    [956] = { 17361 },
    [957] = { 17364 },
    [958] = { 17370 },
    [959] = { 17372 },
    [960] = { 6930 },
    [961] = { 6931, 6931, 6931 },
    [962] = { 6932, 6932, 6932, 6932, 6932, 6932, 6932 },
    [963] = { 6935, 6935, 6935, 6935, 6935, 6935, 6935, 6935, 6935 },
    [964] = { 6938, 6938, 6938 },
    [965] = { 10519 },
    [966] = { 17373 },
    [967] = { 13444 },
    [968] = { 17375 },
    [969] = { 17378 },
    [970] = { 17378 },
    [971] = { 17378 },
    [972] = { 17384 },
    [974] = { 17409 },
    [975] = { 17414 },
    [976] = { 17418 },
    [977] = { 17558 },
    [978] = { 17428 },
    [979] = { 17436 },
    [980] = { 6970 },
    [981] = { 6971, 6971, 6971, 6971, 6971, 6971, 6971 },
    [982] = { 6974, 6974, 6974, 6974, 6974, 6974 },
    [983] = { 6977, 6977, 6977, 6977, 6977 },
    [984] = { 6980, 6980, 6980, 6980, 6980 },
    [985] = { 6983, 6983 },
    [986] = { 6984, 6984, 6984, 6984 },
    [987] = { 6985, 6985, 6985, 6985 },
    [988] = { 6986, 6986, 6986, 6986 },
    [989] = { 10340, 10340, 10340, 10340, 10340, 10340, 10340 },
    [990] = { 10343, 10343, 10343, 10343 },
    [991] = { 10470, 10470, 10470 },
    [992] = { 3676 },
    [993] = { 6084, 6084, 6084 },
    [994] = { 6088, 6088, 6088 },
    [995] = { 6112, 6112, 6112, 6112 },
    [996] = { 6113, 6113, 6113 },
    [997] = { 8000 },
    [998] = { 2400, 2400, 2400, 2400 },
    [999] = { 7765, 7765, 7765, 7765 },
    [1000] = { 17439 },
    [1001] = { 17445 },
    [1002] = { 17448 },
    [1003] = { 10478 },
    [1004] = { 17492 },
    [1005] = { 17495 },
    [1006] = { 17515 },
    [1007] = { 17517 },
    [1008] = { 17522 },
    [1009] = { 17533 },
    [1011] = { 7869, 7869, 7869 },
    [1012] = { 7875, 7875, 7875, 7875, 7875, 7875, 7875 },
    [1013] = { 13872 },
    [1014] = { 17538 },
    [1015] = { 17547 },
    [1016] = { 17549 },
    [1017] = { 17238 },
    [1018] = { 17553 },
    [1019] = { 17248 },
    [1020] = { 12478, 12478, 12478 },
    [1021] = { 17215 },
    [1022] = { 6636, 6636, 6636, 6636, 6636, 6636, 6636, 6636, 6636, 6636 },
    [1023] = { 14010 },
    [1024] = { 14085 },
    [1025] = { 14011 },
    [1026] = { 17561 },
    [1027] = { 17564 },
    [1028] = { 17567 },
    [1029] = { 17570 },
    [1030] = { 17573 },
    [1031] = { 17576 },
    [1032] = { 17579 },
    [1033] = { 17582 },
    [1034] = { 17585 },
    [1035] = { 17588 },
    [1036] = { 17591 },
    [1037] = { 17594 },
    [1038] = { 17597 },
    [1039] = { 17600 },
    [1040] = { 7900, 7900, 7900, 7900, 7900, 7900 },
    [1041] = { 7903, 7903, 7903 },
    [1042] = { 17603 },
    [1043] = { 17606 },
    [1044] = { 17609 },
    [1045] = { 17612 },
    [1046] = { 17615 },
    [1047] = { 17618 },
    [1048] = { 17621 },
    [1049] = { 17624 },
    [1050] = { 17627 },
    [1051] = { 17630 },
    [1052] = { 17633 },
    [1053] = { 10481 },
    [1054] = { 17639 },
    [1060] = { 7940, 7940, 7940, 7940, 7940, 7940, 7940, 7940, 7940, 7940 },
    [1061] = { 7943, 7943 },
    [1062] = { 7944 },
    [1063] = { 7945, 7945, 7945, 7945, 7945, 7945, 7945 },
    [1064] = { 7948, 7948, 7948, 7948, 7948, 7948, 7948 },
    [1065] = { 7951, 7951, 7951, 7951, 7951, 7951, 7951, 7951, 7951 },
    [1090] = { 7980, 7980, 7980 },
    [1091] = { 7983, 7983, 7983, 7983, 7983, 7983 },
    [1092] = { 7986, 7986, 7986, 7986, 7986 },
    [1093] = { 7989, 7989, 7989, 7989, 7989 },
    [1113] = { 1007, 1007, 1007, 15317 },
    [1115] = { 1057 },
    [1120] = { 8030 },
    [1121] = { 8031, 8031, 8031, 8031, 8031, 8031, 8031, 8031, 8031 },
    [1122] = { 8034 },
    [1123] = { 8035, 8035, 8035, 8035, 8035, 8035, 8035 },
    [1124] = { 8038, 8038 },
    [1125] = { 8039, 38407 },
    [1150] = { 8060, 8060, 8060, 8060, 8060, 8060, 8060 },
    [1151] = { 8063, 8063, 8063, 8063, 8063, 8063, 8063 },
    [1152] = { 8066, 8066, 8066, 8066, 8066, 8066, 8066 },
    [1153] = { 8069, 8069, 8069, 8069 },
    [1154] = { 8072, 8072, 8072, 8072, 8072, 8072, 8072 },
    [1155] = { 8075 },
    [1156] = { 8076, 8076, 8076, 8076, 8076, 8076 },
    [1157] = { 8082, 8082, 8082, 8082, 8082, 8082 },
    [1158] = { 1667 },
    [1159] = { 11007, 11007, 11007, 11007 },
    [1169] = { 16336 },
    [1170] = { 16339 },
    [1171] = { 15502 },
    [1173] = { 15509 },
    [1174] = { 15512 },
    [1175] = { 15515 },
    [1176] = { 15516 },
    [1177] = { 15517 },
    [1178] = { 15521 },
    [1200] = { 8190, 8190, 8190 },
    [1201] = { 8193 },
    [1202] = { 8194 },
    [1203] = { 8195, 8195, 8195, 8195, 8195, 8195 },
    [1204] = { 8198, 8198, 8198 },
    [1205] = { 8201, 8201, 8201, 8201 },
    [1206] = { 8204, 8204, 8204, 8204, 8204 },
    [1207] = { 8207, 8207, 8207, 8207, 8207 },
    [1208] = { 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210, 8210 },
    [1209] = { 8215, 8215, 8215, 8215, 8215, 8215, 8215, 8215, 8215, 8215, 8215 },
    [1210] = { 8220 },
    [1211] = { 8221 },
    [1212] = { 8222 },
    [1214] = { 8224, 8224, 8224, 8224 },
    [1215] = { 8227, 12810, 12810, 12810 },
    [1216] = { 8228, 8228, 8228 },
    [1217] = { 8231 },
    [1218] = { 8040, 8040, 8040, 8040, 8040, 8040 },
    [1219] = { 8235, 8235, 8235, 8235, 8235, 8235, 8235, 8235, 8235, 8235, 8235 },
    [1220] = { 8240, 8240, 8240, 8240, 8240, 8240, 8240, 8240, 8240, 8240, 8240 },
    [1221] = { 8245, 8245, 8245, 8245, 8245, 8245, 8245, 8245, 8245, 8245, 8245 },
    [1222] = { 8250, 8250, 8250, 8250, 8250, 8250, 8250, 8250, 8250, 8250, 8250 },
    [1223] = { 8255, 8255, 8255, 8255, 8255, 8255, 8255, 8255, 8255, 8255, 8255 },
    [1232] = { 15429 },
    [1233] = { 15432 },
    [1234] = { 15438 },
    [1235] = { 15447 },
    [1236] = { 15444 },
    [1237] = { 15414 },
    [1239] = { 15423 },
    [1240] = { 15424 },
    [1242] = { 15450 },
    [1243] = { 15453 },
    [1244] = { 15456 },
    [1245] = { 15540 },
    [1246] = { 15543 },
    [1247] = { 15546 },
    [1248] = { 15549 },
    [1249] = { 15555 },
    [1250] = { 15564 },
    [1251] = { 15567 },
    [1252] = { 15569 },
    [1253] = { 15570 },
    [1254] = { 15571 },
    [1255] = { 15574, 15574, 15574, 15574 },
    [1256] = { 15579 },
    [1257] = { 15582 },
    [1258] = { 15591 },
    [1259] = { 15594 },
    [1261] = { 15598 },
    [1262] = { 15601 },
    [1263] = { 15602 },
    [1264] = { 15609 },
    [1265] = { 15611 },
    [1266] = { 15612 },
    [1267] = { 15615 },
    [1269] = { 15425 },
    [1270] = { 15377 },
    [1271] = { 15622 },
    [1272] = { 15625 },
    [1273] = { 15634, 15634 },
    [1274] = { 15639 },
    [1275] = { 15640 },
    [1277] = { 15642 },
    [1278] = { 15643 },
    [1279] = { 15646 },
    [1281] = { 15648 },
    [1282] = { 15619 },
    [1300] = { 9100, 9100, 9100, 9100, 9100, 9100, 9100, 9100, 9100 },
    [1301] = { 9109, 9109, 9109, 9109, 9109, 9109, 9109, 9109, 9109 },
    [1302] = { 9118, 9118, 9118, 9118, 9118, 9118, 9118, 9118, 9118 },
    [1303] = { 9127, 9127, 9127, 9127, 9127, 9127, 9127, 9127, 9127 },
    [1304] = { 9136, 9136, 9136, 9136, 9136, 9136, 9136, 9136, 9136 },
    [1305] = { 9145, 9145, 9145, 9145, 9145, 9145, 9145, 9145, 9145 },
    [1306] = { 9154, 9154, 9154, 9154, 9154, 9154, 9154, 9154, 9154 },
    [1307] = { 9163, 9163, 9163, 9163, 9163, 9163, 9163, 9163, 9163 },
    [1308] = { 9172, 9172, 9172, 9172, 9172, 9172, 9172, 9172, 9172 },
    [1309] = { 9181, 9181, 9181, 9181, 9181, 9181, 9181, 9181, 9181 },
    [1310] = { 9190, 9190, 9190, 9190, 9190, 9190, 9190, 9190, 9190 },
    [1311] = { 9199, 9199, 9199, 9199, 9199, 9199, 9199, 9199, 9199 },
    [1312] = { 9208, 9208, 9208, 9208, 9208, 9208, 9208, 9208, 9208 },
    [1313] = { 9217, 9217, 9217, 9217, 9217, 9217, 9217, 9217, 9217 },
    [1314] = { 9226, 9226, 9226, 9226, 9226, 9226, 9226, 9226, 9226 },
    [1315] = { 9235, 9235, 9235, 9235, 9235, 9235, 9235, 9235, 9235 },
    [1350] = { 9300, 9300, 9300 },
    [1351] = { 9303, 9303, 9303 },
    [1352] = { 9306, 9306, 9306 },
    [1360] = { 9309, 9309, 9309 },
    [1361] = { 9312, 9312, 9312 },
    [1362] = { 9315, 9315, 9315 },
    [1370] = { 9318, 9318, 9318 },
    [1371] = { 9321, 9321, 9321 },
    [1372] = { 9324, 9324, 9324 },
    [1380] = { 9327, 9327, 9327 },
    [1381] = { 9330, 9330, 9330 },
    [1382] = { 9333, 9333, 9333 },
    [1390] = { 9336, 9336, 9336 },
    [1391] = { 9339, 9339, 9339 },
    [1392] = { 9342, 9342, 9342 },
    [1400] = { 9345, 9345, 9345 },
    [1401] = { 9348, 9348, 9348 },
    [1402] = { 9351, 9351, 9351 },
    [1403] = { 9503, 9503, 9503, 9503, 9503, 9503, 9503, 9503, 9503, 9503 },
    [1404] = { 9506, 9506, 9506, 9506 },
    [1405] = { 9509, 9509, 9509, 9509, 9509 },
    [1406] = { 9512, 9512, 9512, 9512, 9512, 9512, 9512, 9512, 9512, 9512, 9512, 9512, 9512 },
    [1410] = { 9354, 9354, 9354, 9354 },
    [1411] = { 9357, 9357, 9357, 9357 },
    [1412] = { 9360, 9360, 9360, 9360 },
    [1420] = { 9363, 9363, 9363 },
    [1421] = { 9366, 9366, 9366 },
    [1422] = { 9369, 9369, 9369 },
    [1430] = { 9372, 9372, 9372 },
    [1431] = { 9375, 9375, 9375 },
    [1432] = { 9378, 9378, 9378 },
    [1433] = { 8232, 8232, 8232, 8232, 8232, 8232 },
    [1440] = { 9381, 9381, 9381 },
    [1441] = { 9384, 9384, 9384 },
    [1442] = { 9387, 9387, 9387 },
    [1450] = { 9390, 9390, 9390 },
    [1451] = { 9393, 9393, 9393 },
    [1452] = { 9396, 9396, 9396 },
    [1460] = { 9399, 9399, 9399 },
    [1461] = { 9402, 9402, 9402 },
    [1462] = { 9405, 9405, 9405 },
    [1470] = { 9408, 9408, 9408 },
    [1471] = { 9411, 9411, 9411 },
    [1472] = { 9414, 9414, 9414 },
    [1480] = { 9417, 9417, 9417 },
    [1481] = { 9420, 9420, 9420 },
    [1482] = { 9423, 9423, 9423 },
    [1490] = { 9426, 9426, 9426 },
    [1491] = { 9429, 9429, 9429 },
    [1492] = { 9432, 9432, 9432 },
    [1500] = { 9435, 9435, 9435 },
    [1501] = { 9438, 9438, 9438 },
    [1502] = { 9441, 9441, 9441 },
    [1503] = { 13673 },
    [1504] = { 13674 },
    [1505] = { 16103 },
    [1580] = { 5833 },
    [1662] = { 83, 83, 83, 83 },
    [1663] = { 1435, 1435, 1435, 4773, 4773, 4773, 4773, 4773 },
    [1664] = { 12416, 12416, 12416, 12416 },
    [1665] = { 12419, 12419, 12419, 12419, 12419 },
    [1666] = { 12422 },
    [1667] = { 1004, 1004, 1004 },
    [1668] = { 8005 },
    [1669] = { 255, 255, 255, 255, 255, 255, 255, 255 },
    [1680] = { 13905 },
    [1681] = { 13908 },
    [1682] = { 13911 },
    [1683] = { 13917 },
    [1684] = { 14017 },
    [1685] = { 14018 },
    [1686] = { 14019 },
    [1687] = { 14371 },
    [1800] = { 14373 },
    [1801] = { 14374 },
    [2000] = { 1037 },
    [2001] = { 15096 },
    [2002] = { 15099 },
    [2003] = { 15100 },
    [2004] = { 15105 },
    [2005] = { 15108 },
    [2006] = { 15113 },
    [2007] = { 15119 },
    [2008] = { 15120 },
    [2009] = { 15123 },
    [2010] = { 15126 },
    [2011] = { 15129 },
    [2012] = { 15130 },
    [2013] = { 15131 },
    [2014] = { 15132 },
    [2015] = { 15135 },
    [2016] = { 15136 },
    [2018] = { 15146 },
    [2019] = { 15147 },
    [2020] = { 15150 },
    [2021] = { 15153 },
    [2022] = { 15154 },
    [2023] = { 15155 },
    [2024] = { 15158 },
    [2025] = { 15159 },
    [2026] = { 15162 },
    [2028] = { 15168 },
    [2031] = { 15177 },
    [2032] = { 15179 },
    [2034] = { 15193 },
    [2035] = { 15194 },
    [2036] = { 15253 },
    [2037] = { 15304 },
    [2040] = { 15283 },
    [2041] = { 15288 },
    [2042] = { 15295 },
    [2045] = { 15338 },
    [2046] = { 15341 },
    [2047] = { 15343 },
    [2048] = { 15356 },
    [2049] = { 15357 },
    [2050] = { 15358 },
    [2051] = { 15362 },
    [2053] = { 15371 },
    [2054] = { 15374 },
    [2055] = { 15383 },
    [2056] = { 15389 },
    [2057] = { 15403 },
    [2059] = { 15406 },
    [2060] = { 15200 },
    [2061] = { 15203 },
    [2062] = { 15204 },
    [2063] = { 15207 },
    [2064] = { 15210 },
    [2065] = { 15213 },
    [2066] = { 15214 },
    [2076] = { 15217 },
    [2077] = { 15220 },
    [2078] = { 15223 },
    [2079] = { 15226 },
    [2080] = { 15229 },
    [2081] = { 15232 },
    [2200] = { 15475 },
    [2201] = { 15478 },
    [2202] = { 15481 },
    [2203] = { 15482 },
    [2204] = { 15485 },
    [2205] = { 15486 },
    [2206] = { 15489 },
    [2207] = { 15490 },
    [2208] = { 15493 },
    [2209] = { 15496 },
    [2234] = { 10368, 10368, 10368 },
    [2235] = { 10387 },
    [2709] = { 12208 },
    [2899] = { 10700 },
    [3000] = { 6987 },
    [3202] = { 288 },
    [3203] = { 7736 },
    [3204] = { 7737 },
    [3205] = { 7738 },
    [3206] = { 7732 },
    [3207] = { 7734 },
    [3208] = { 7735 },
    [3209] = { 7739 },
    [3210] = { 7740 },
    [3211] = { 10388, 10388 },
    [3212] = { 10358, 10358, 10358, 10358 },
    [3213] = { 10351, 10351 },
    [3214] = { 10364, 10364, 10364, 10364, 10364 },
    [3215] = { 10352, 10352 },
    [3216] = { 10353, 10353 },
    [3217] = { 12500, 12500, 12500, 12500, 12500 },
    [3218] = { 7741 },
    [3219] = { 7742 },
    [3500] = { 10355, 10355, 10355, 10355, 10355, 10355, 10355 },
    [3506] = { 5717 },
    [3511] = { 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020, 6020 },
    [3512] = { 6051, 6051, 6051, 6051, 6051, 6051, 6051, 6051, 6051, 6051, 6051, 6051, 6051 },
    [3513] = { 6322, 6322, 6322 },
    [3514] = { 6325, 6325, 6325, 6325, 6325, 13792 },
    [3515] = { 6328, 6328, 6328, 6328, 6328, 6328, 6328, 6328, 6328, 6328, 6328 },
    [3516] = { 6333, 6333, 6333 },
    [3517] = { 6334, 6334, 6334 },
    [3518] = { 6337, 6337, 6337, 6337, 6337, 6337, 6337, 6337, 6337, 6337 },
    [3519] = { 6340, 6340, 6340, 6340, 6340, 6340, 6340 },
    [3520] = { 6343, 6343, 6343, 6343, 6343, 6343 },
    [3521] = { 6346, 6346, 6346, 6346, 6346, 6346, 6346 },
    [3522] = { 6349, 6349, 6349, 6349, 6349, 6349, 6349, 6349 },
    [3525] = { 5776, 5776, 5776, 5776, 5776, 5776, 5776 },
    [3550] = { 54009, 12923, 12923 },
    [3551] = { 54010 },
    [3600] = { 6136 },
    [3646] = { 54006, 54006, 54006, 54006 },
    [3676] = { 10354, 10354 },
    [3701] = { 6533, 6533, 6533, 6533, 6533, 6533, 6533 },
    [3702] = { 6534, 6534, 6534 },
    [3703] = { 6535, 6535, 6535 },
    [3704] = { 6536 },
    [3705] = { 6537, 6537, 6537, 6537, 6537, 6537, 6537, 6537, 6537, 6537, 6537, 6537, 6537 },
    [3706] = { 6538, 6538, 6538, 6538, 6538 },
    [3707] = { 6539, 6539, 6539, 6539, 6539, 6539, 6539, 6539, 6539, 6539 },
    [3708] = { 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540 },
    [3709] = { 6218, 6218, 14272 },
    [3710] = { 6542, 6542, 6542 },
    [3711] = { 6543 },
    [3713] = { 6545, 6545, 6545, 6545 },
    [3714] = { 6232, 6232 },
    [3716] = { 6548, 6548, 6548, 6548, 6548 },
    [3718] = { 767, 767, 767, 767, 767, 767, 767, 767, 767 },
    [3720] = { 6552, 6552, 6552, 6552, 6552, 6552, 6552, 6552, 6552, 6552 },
    [3724] = { 6557, 6557, 6557 },
    [3725] = { 6558, 6558, 6558 },
    [3726] = { 6559, 6559, 6559, 6559, 6559, 6559 },
    [3727] = { 6560, 6560, 6560, 6560 },
    [3728] = { 6561, 6561, 6561, 6561, 6561, 6561, 6561, 6561, 6561, 6561, 6561, 6561, 6561 },
    [3729] = { 6563, 6563 },
    [3730] = { 6562 },
    [3731] = { 6564 },
    [3732] = { 6565, 6565, 6565, 6565 },
    [3733] = { 6566, 6566, 6566 },
    [3734] = { 6290, 6290, 6290, 6290, 6290, 6290, 6290, 6290, 6290, 6290, 6290, 6290, 6290 },
    [3800] = { 6299 },
    [3801] = { 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119, 6119 },
    [3802] = { 5263, 5263, 5263, 5263, 5263, 5263, 5263, 5263, 5263, 5263 },
    [3803] = { 6355, 6355, 6355, 6355, 6355, 6355, 6355 },
    [3804] = { 6370, 6370, 6370, 6370, 6370, 6370, 6370 },
    [3805] = { 4801, 4801, 4801, 4801, 4801, 4801, 4801, 4801, 4801, 4801, 4801 },
    [3812] = { 7069 },
    [3813] = { 86, 86, 86, 86, 86 },
    [3815] = { 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375, 6375 },
    [3816] = { 6379 },
    [3817] = { 6380, 6380, 6380, 6380, 6380, 6380, 6380, 6380, 6380, 6380 },
    [3818] = { 6383, 6383, 6383, 6383, 6383, 6383, 6383, 6383, 6383, 6383 },
    [3819] = { 6386, 6386, 6386, 6386, 6386 },
    [3820] = { 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395, 6395 },
    [3821] = { 6503, 6503, 6503, 6503 },
    [3822] = { 6508, 6508, 6508, 6508, 6508, 6508, 6508, 6508, 6508, 6508 },
    [3823] = { 6511, 6511, 6511 },
    [3824] = { 6514, 6514, 6514 },
    [3826] = { 5984, 5984, 5984, 5984, 5984, 5984 },
    [3830] = { 7100, 7100, 7100, 7100, 7100, 7100, 7100, 7100, 7100 },
    [3831] = { 7103, 7103, 7103, 7103, 7103, 7103, 7103, 7103 },
    [3832] = { 7106, 7106, 7106 },
    [3833] = { 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540 },
    [3834] = { 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540 },
    [3836] = { 6436, 6436, 6436, 6436, 6436, 6436 },
    [3837] = { 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540, 6540 },
    [3838] = { 6445, 6445, 6445 },
    [3839] = { 6452, 6452, 6452 },
    [3840] = { 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601, 6601 },
    [3841] = { 6455, 6455, 6455 },
    [3842] = { 6458, 6458, 6458 },
    [3843] = { 6461, 6461, 6461 },
    [3865] = { 6422, 6422, 6422 },
    [3890] = { 7822, 7822, 7822, 7822, 7822, 7822 },
    [3891] = { 7832, 7832, 7832, 7832, 7832 },
    [3892] = { 7828, 7828, 7828 },
    [3893] = { 7827 },
    [3899] = { 6499 },
    [4001] = { 7407 },
    [4002] = { 7818, 7818 },
    [4200] = { 12430, 12430, 12430, 12430, 12430, 12430, 12430 },
    [4666] = { 4844, 4844, 4844, 4844, 4844 },
    [5000] = { 7000 },
    [5002] = { 7002 },
    [5003] = { 7003 },
    [5004] = { 7004 },
    [5005] = { 7062 },
    [6000] = { 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800, 7800 },
    [6001] = { 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850, 7850 },
    [6002] = { 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546, 6546 },
    [6106] = { 6106, 6106, 6106, 6106, 6106, 6106 },
    [6302] = { 6302, 6302, 6302, 6302, 6302, 6302, 6302 },
    [6362] = { 6362, 6362, 6362, 6362, 6362, 6362 },
    [6478] = { 6478, 6478, 6478 },
    [6481] = { 6481, 6481, 6481, 6481 },
    [6488] = { 6488, 6488 },
    [6489] = { 6489, 6489, 6489, 6489 },
    [6492] = { 6492, 6492, 6492, 6492, 6492, 6492, 6492, 6492, 6492, 6492 },
    [6988] = { 6988, 6988, 6988, 14278 },
    [7000] = { 6639, 6639 },
    [7001] = { 7872, 7872, 7872, 7872, 7872, 7872, 7872, 7872, 7872, 7872 },
    [7002] = { 9500 },
    [7003] = { 9502 },
    [7007] = { 9501 },
    [7009] = { 1419 },
    [7016] = { 7016 },
    [7017] = { 7017 },
    [7018] = { 7018 },
    [7019] = { 7019 },
    [7025] = { 7669 },
    [7033] = { 7033, 7033, 7033, 7033 },
    [7036] = { 7036, 7036, 7036, 10579, 10579 },
    [7050] = { 1017, 1017 },
    [7060] = { 4809, 4809, 4809, 4809, 4809, 4809, 4809 },
    [7070] = { 6941, 6941, 6941, 6941, 6941 },
    [7105] = { 976 },
    [7106] = { 6467, 6467, 6467 },
    [7107] = { 7005, 7005, 7005, 7005 },
    [7108] = { 977 },
    [7109] = { 7664, 7664, 7664, 7664, 7664, 7664, 7664, 7664, 7664, 7664, 7664 },
    [7689] = { 7689 },
    [7690] = { 7690 },
    [7695] = { 7695, 7695, 7695 },
    [7698] = { 7698 },
    [7699] = { 7699 },
    [7700] = { 255, 255, 255, 255, 255, 255, 255 },
    [7703] = { 7703 },
    [7712] = { 7712, 7712, 7712 },
    [7715] = { 7715, 7715, 7715, 7715 },
    [7743] = { 7743, 7743, 7743, 7743, 7743, 7743 },
    [7746] = { 7746, 7746, 7746 },
    [7747] = { 7747 },
    [7748] = { 7748, 7748, 7748 },
    [7751] = { 7751, 7751, 7751, 7751 },
    [7754] = { 7754 },
    [7755] = { 7755, 7755 },
    [7756] = { 7756 },
    [7757] = { 7757, 7757, 7757, 7757, 7757, 7757, 7757 },
    [7760] = { 7760, 7760, 7760 },
    [7801] = { 9101, 9101, 9101, 9101, 9101, 9101, 9101, 9101, 9101, 9101 },
    [7809] = { 9111, 9111, 9111, 9111, 9111, 9111, 9111, 9111, 9111, 9111 },
    [7819] = { 9121, 9121, 9121, 9121, 9121, 9121, 9121, 9121, 9121, 9121 },
    [7925] = { 1018 },
    [8081] = { 9000 },
    [8130] = { 9031 },
    [8200] = { 10329, 10329, 10329 },
    [8201] = { 10330, 10330, 10330 },
    [8202] = { 10331 },
    [8203] = { 10332, 10332 },
    [8204] = { 10333, 10333, 10333, 10333, 10333, 10333, 10333 },
    [8205] = { 10336, 10336, 10336, 10336, 10336, 10336, 10336 },
    [8261] = { 10339 },
    [8262] = { 7010, 7010, 7010, 7010, 7010, 7010, 7010 },
    [8300] = { 10370, 10370, 10370, 10370 },
    [8301] = { 10373 },
    [8302] = { 10374, 10374, 10374, 10374, 10374 },
    [8303] = { 10377, 10377, 10377, 10377 },
    [8304] = { 10380, 10380, 10380, 10380 },
    [8314] = { 8314, 8314, 8314, 8314 },
    [8317] = { 8317, 8317 },
    [8319] = { 8319, 8319, 8319 },
    [8322] = { 8322, 8322, 8322, 8322, 8322, 8322 },
    [8325] = { 8325, 8325, 8325, 8325, 8325, 8325, 8325 },
    [8331] = { 8331 },
    [8332] = { 8332, 8332, 8332 },
    [8335] = { 8335, 8335, 8335, 8335, 8335 },
    [8341] = { 8341 },
    [8342] = { 8342, 8342 },
    [8347] = { 8347, 8347, 8347 },
    [8350] = { 8350 },
    [8400] = { 10400, 10400 },
    [8401] = { 10401, 10401, 10401, 10401 },
    [8402] = { 10404, 10404 },
    [8500] = { 10450, 10450, 10450, 10450, 10450, 10450, 10450 },
    [8501] = { 10453, 10453, 10453, 10453 },
    [8502] = { 10456, 10456, 10456 },
    [8503] = { 10459, 10459, 10459 },
    [8504] = { 10462 },
    [8505] = { 10463 },
    [8506] = { 10464, 10464, 10464, 10464, 10464, 10464 },
    [8600] = { 10500 },
    [8601] = { 10501 },
    [8602] = { 10502, 10502 },
    [8603] = { 10503, 10503, 10503, 10503 },
    [8604] = { 10506, 10506, 10506, 10506 },
    [8605] = { 10511, 10511, 10511, 10511 },
    [8606] = { 10514, 10514, 10514, 10514 },
    [8700] = { 10550, 10550 },
    [8701] = { 10551, 10551, 10551, 10551 },
    [8702] = { 12395 },
    [8703] = { 10558, 10558, 10558, 10558 },
    [8704] = { 10561, 10561, 10561, 10561 },
    [8708] = { 6908, 6908, 6908, 6908 },
    [8800] = { 10600, 10600, 10600, 10600, 10600, 10600, 10600 },
    [8801] = { 10601 },
    [8802] = { 10610, 10610, 10610 },
    [8900] = { 10650, 10650, 10650, 10650 },
    [8901] = { 10653, 10653, 10653, 10653 },
    [8902] = { 10656, 10656 },
    [8903] = { 10657, 10657, 10657, 10657, 10657, 10657, 10657 },
    [9001] = { 10701, 10701, 10701, 10701, 10701, 10701, 10701 },
    [9100] = { 10752 },
    [9101] = { 10753 },
    [9102] = { 10754 },
    [9200] = { 10800, 10800, 10800, 10800 },
    [9201] = { 10803, 10803, 10803 },
    [9202] = { 10806, 10806, 10806, 10806 },
    [9203] = { 10809, 10809, 10809, 10809 },
    [9205] = { 10815, 10815, 10815, 10815, 10815 },
    [9206] = { 10818, 10818, 10818, 10818, 10818 },
    [9207] = { 10821, 10821, 10821, 10821, 10821 },
    [9300] = { 10850, 10850, 10850, 10850, 10850, 10850, 10850 },
    [9301] = { 10853, 10853, 10853, 10853, 10853, 10853, 10853, 10853, 10853, 10853, 10853, 10853, 10853 },
    [9400] = { 10900, 10900, 10900, 10900 },
    [9401] = { 10903, 10903, 10903 },
    [9402] = { 10909, 10909, 10909 },
    [9403] = { 10912, 10912, 10912, 10912, 10912, 10912 },
    [9404] = { 10915, 10915, 10915, 10915 },
    [9500] = { 10950 },
    [9501] = { 10951, 10951, 10951, 10951 },
    [9502] = { 10954, 10954, 10954 },
    [9503] = { 10957 },
    [9504] = { 10958, 10958, 16214 },
    [9505] = { 10959, 10959, 10959, 12988 },
    [9600] = { 11000, 11000, 11000 },
    [9601] = { 11003 },
    [9602] = { 11004, 11004, 11004 },
    [9700] = { 11050, 11050, 11050, 11050, 11050, 11050, 11050 },
    [9701] = { 11055 },
    [9702] = { 11056 },
    [9703] = { 11057 },
    [9704] = { 11058 },
    [10367] = { 10367, 10367 },
    [10389] = { 10389, 10389, 10389 },
    [10392] = { 10392, 10392 },
    [10393] = { 10393 },
    [10394] = { 10394, 10394, 10394 },
    [10395] = { 10395, 10395 },
    [10396] = { 10396, 10396 },
    [10397] = { 10397, 10397 },
    [10405] = { 10405, 10405, 10405, 10405, 10405, 10405, 10405, 10405, 10405, 10405 },
    [10410] = { 10410 },
    [10413] = { 10413, 10413, 10413, 10413, 10413 },
    [10424] = { 10424 },
    [10425] = { 10425 },
    [10426] = { 10426 },
    [10427] = { 10427 },
    [10434] = { 10434, 10434, 10434 },
    [11073] = { 11073, 11073 },
    [11074] = { 11074, 11074, 11074 },
    [11077] = { 11077, 11077 },
    [11078] = { 11078, 11078 },
    [11079] = { 11079, 11079 },
    [11080] = { 11080, 11080 },
    [11085] = { 11085, 11085, 11085, 11085 },
    [11088] = { 11088, 11088, 11088, 11088 },
    [12600] = { 12600, 12600, 12600, 12600, 12600 },
    [12603] = { 12603 },
    [12606] = { 12606 },
    [12607] = { 12607, 12607 },
    [12615] = { 12615, 12615, 12615, 12615 },
    [15073] = { 15073 },
    [15074] = { 15074 },
    [16001] = { 50000 },
    [17785] = { 17785 },
    [17786] = { 18973, 18973, 18973, 18973, 18973 },
    [17787] = { 12706, 12706, 12706, 12706 },
    [17788] = { 18994 },
    [17789] = { 17789 },
    [17790] = { 17790 },
    [17791] = { 18997 },
    [17792] = { 18998 },
    [17793] = { 18999 },
  },
  source = {
    database = "release-peq.sql",
    generator = "generate_triune_prereqs.py",
  },
  tabs = {
    archetype = {
      byName = {
        ["abundant healing"] = {
          {
            classes = 546,
            firstRankId = 1486,
            id = 516,
            maxRank = 23,
            name = "Abundant Healing",
            prerequisiteRules = {
              {
                maxRank = 23,
                minRank = 1,
                requires = {
                  {
                    id = 19,
                    name = "Healing Gift",
                    points = 7,
                  },
                },
              },
            },
          },
        },
        ["ageless enmity"] = {
          {
            classes = 1,
            firstRankId = 10367,
            id = 10367,
            maxRank = 2,
            name = "Ageless Enmity",
          },
          {
            classes = 20,
            firstRankId = 10392,
            id = 10392,
            maxRank = 2,
            name = "Ageless Enmity",
          },
        },
        ["arcane tongues"] = {
          {
            classes = 15360,
            firstRankId = 1089,
            id = 352,
            maxRank = 3,
            name = "Arcane Tongues",
          },
        },
        ["armor of wisdom"] = {
          {
            classes = 1,
            firstRankId = 8235,
            id = 1219,
            maxRank = 11,
            name = "Armor of Wisdom",
          },
          {
            classes = 20,
            firstRankId = 8240,
            id = 1220,
            maxRank = 11,
            name = "Armor of Wisdom",
          },
          {
            classes = 202,
            firstRankId = 8245,
            id = 1221,
            maxRank = 11,
            name = "Armor of Wisdom",
          },
          {
            classes = 49920,
            firstRankId = 8250,
            id = 1222,
            maxRank = 11,
            name = "Armor of Wisdom",
          },
          {
            classes = 15392,
            firstRankId = 8255,
            id = 1223,
            maxRank = 11,
            name = "Armor of Wisdom",
          },
        },
        ["burst of power"] = {
          {
            classes = 20,
            firstRankId = 6215,
            id = 3708,
            maxRank = 13,
            name = "Burst of Power",
          },
          {
            classes = 32841,
            firstRankId = 6409,
            id = 3833,
            maxRank = 18,
            name = "Burst of Power",
          },
          {
            classes = 256,
            firstRankId = 6419,
            id = 3834,
            maxRank = 11,
            name = "Burst of Power",
          },
          {
            classes = 16512,
            firstRankId = 6060,
            id = 3837,
            maxRank = 11,
            name = "Burst of Power",
          },
        },
        ["cascade of life"] = {
          {
            classes = 546,
            firstRankId = 8224,
            id = 1214,
            maxRank = 4,
            name = "Cascade of Life",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 516,
                    name = "Abundant Healing",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["combat fury"] = {
          {
            classes = 0,
            firstRankId = 113,
            id = 30,
            maxRank = 6,
            name = "Combat Fury",
          },
          {
            classes = 49629,
            firstRankId = 934,
            id = 309,
            maxRank = 6,
            name = "Combat Fury",
          },
        },
        ["companion's alacrity"] = {
          {
            classes = 30256,
            firstRankId = 8190,
            id = 1200,
            maxRank = 3,
            name = "Companion's Alacrity",
          },
        },
        ["companion's blessing"] = {
          {
            classes = 30224,
            firstRankId = 6206,
            id = 3705,
            maxRank = 13,
            name = "Companion's Blessing",
          },
        },
        ["companion's durability"] = {
          {
            classes = 30256,
            firstRankId = 6051,
            id = 3512,
            maxRank = 13,
            name = "Companion's Durability",
          },
        },
        ["companion's fury"] = {
          {
            classes = 30224,
            firstRankId = 8201,
            id = 1205,
            maxRank = 4,
            name = "Companion's Fury",
          },
        },
        concentration = {
          {
            classes = 33089,
            firstRankId = 1588,
            id = 563,
            maxRank = 3,
            name = "Concentration",
          },
        },
        ["critical affliction"] = {
          {
            classes = 26296,
            firstRankId = 767,
            id = 259,
            maxRank = 9,
            name = "Critical Affliction",
          },
          {
            classes = 8194,
            firstRankId = 6240,
            id = 3718,
            maxRank = 9,
            name = "Critical Affliction",
          },
        },
        ["destructive fury"] = {
          {
            classes = 32290,
            firstRankId = 1213,
            id = 398,
            maxRank = 19,
            name = "Destructive Fury",
            prerequisiteRules = {
              {
                maxRank = 19,
                minRank = 7,
                requires = {
                  {
                    id = 215,
                    name = "Fury of Magic",
                    points = 6,
                  },
                },
              },
            },
          },
          {
            classes = 16540,
            firstRankId = 6636,
            id = 1022,
            maxRank = 10,
            name = "Destructive Fury",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 358,
                    name = "AA 358",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["destructive fury (wizard)"] = {
          {
            classes = 2048,
            firstRankId = 1210,
            id = 397,
            maxRank = 16,
            name = "Destructive Fury (Wizard)",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 114,
                    name = "Spell Casting Fury Mastery",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["divine companion aura"] = {
          {
            classes = 30224,
            firstRankId = 5809,
            id = 1580,
            maxRank = 1,
            name = "Divine Companion Aura",
          },
        },
        ["double riposte"] = {
          {
            classes = 49501,
            firstRankId = 247,
            id = 104,
            maxRank = 6,
            name = "Double Riposte",
          },
        },
        ["empowered ingenuity"] = {
          {
            classes = 33089,
            firstRankId = 8198,
            id = 1204,
            maxRank = 3,
            name = "Empowered Ingenuity",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 210,
                    name = "Ingenuity",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["enhanced aggression"] = {
          {
            classes = 49629,
            firstRankId = 1592,
            id = 498,
            maxRank = 31,
            name = "Enhanced Aggression",
          },
        },
        ["expansive mind"] = {
          {
            classes = 32446,
            firstRankId = 1072,
            id = 348,
            maxRank = 31,
            name = "Expansive Mind",
          },
        },
        ["extended ingenuity"] = {
          {
            classes = 128,
            firstRankId = 8040,
            id = 1218,
            maxRank = 6,
            name = "Extended Ingenuity",
          },
          {
            classes = 33217,
            firstRankId = 8232,
            id = 1433,
            maxRank = 6,
            name = "Extended Ingenuity",
          },
        },
        ["fear resistance"] = {
          {
            classes = 49629,
            firstRankId = 116,
            id = 31,
            maxRank = 3,
            name = "Fear Resistance",
          },
        },
        ferocity = {
          {
            classes = 33097,
            firstRankId = 564,
            id = 189,
            maxRank = 6,
            name = "Ferocity",
          },
        },
        ["finishing blow"] = {
          {
            classes = 49629,
            firstRankId = 119,
            id = 32,
            maxRank = 27,
            name = "Finishing Blow",
          },
        },
        ["forceful rejuvenation"] = {
          {
            classes = 32318,
            firstRankId = 9502,
            id = 7003,
            maxRank = 1,
            name = "Forceful Rejuvenation",
          },
        },
        ["fortify companion"] = {
          {
            classes = 30224,
            firstRankId = 6212,
            id = 3707,
            maxRank = 10,
            name = "Fortify Companion",
          },
        },
        ["fury of magic"] = {
          {
            classes = 30398,
            firstRankId = 637,
            id = 215,
            maxRank = 19,
            name = "Fury of Magic",
            prerequisiteRules = {
              {
                maxRank = 19,
                minRank = 1,
                requires = {
                  {
                    id = 23,
                    name = "Spell Casting Fury",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        gate = {
          {
            classes = 15906,
            firstRankId = 8231,
            id = 1217,
            maxRank = 1,
            name = "Gate",
          },
        },
        ["gift of mana"] = {
          {
            classes = 15906,
            firstRankId = 1435,
            id = 495,
            maxRank = 8,
            name = "Gift of Mana",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 20,
                    name = "Spell Casting Mastery",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 8,
                minRank = 5,
                requires = {
                  {
                    id = 20,
                    name = "Spell Casting Mastery",
                    points = 1,
                  },
                },
              },
            },
          },
          {
            classes = 16412,
            firstRankId = 1219,
            id = 1663,
            maxRank = 8,
            name = "Gift of Mana",
          },
        },
        ["group perfected invisibility to undead"] = {
          {
            classes = 1046,
            firstRankId = 8222,
            id = 1212,
            maxRank = 1,
            name = "Group Perfected Invisibility to Undead",
          },
        },
        ["group perfected levitation"] = {
          {
            classes = 31272,
            firstRankId = 12422,
            id = 1666,
            maxRank = 1,
            name = "Group Perfected Levitation",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1202,
                    name = "Perfected Levitation",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hardy endurance"] = {
          {
            classes = 33089,
            firstRankId = 8215,
            id = 1209,
            maxRank = 11,
            name = "Hardy Endurance",
          },
        },
        ["hastened companion's blessing"] = {
          {
            classes = 30224,
            firstRankId = 12478,
            id = 1020,
            maxRank = 3,
            name = "Hastened Companion's Blessing",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 3705,
                    name = "Companion's Blessing",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["hastened curing"] = {
          {
            classes = 546,
            firstRankId = 754,
            id = 256,
            maxRank = 6,
            name = "Hastened Curing",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 153,
                    name = "Radiant Cure",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened forceful rejuvenation"] = {
          {
            classes = 32318,
            firstRankId = 12475,
            id = 4200,
            maxRank = 7,
            name = "Hastened Forceful Rejuvenation",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 7003,
                    name = "Forceful Rejuvenation",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened fortify companion"] = {
          {
            classes = 30224,
            firstRankId = 8195,
            id = 1203,
            maxRank = 6,
            name = "Hastened Fortify Companion",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 3707,
                    name = "Fortify Companion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened silent casting"] = {
          {
            classes = 546,
            firstRankId = 6346,
            id = 3521,
            maxRank = 7,
            name = "Hastened Silent Casting",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 494,
                    name = "Silent Casting",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 15360,
            firstRankId = 6349,
            id = 3522,
            maxRank = 8,
            name = "Hastened Silent Casting",
            prerequisiteRules = {
              {
                maxRank = 8,
                minRank = 1,
                requires = {
                  {
                    id = 500,
                    name = "Silent Casting",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["healing adept"] = {
          {
            classes = 16942,
            firstRankId = 77,
            id = 18,
            maxRank = 17,
            name = "Healing Adept",
          },
        },
        ["healing boon"] = {
          {
            classes = 550,
            firstRankId = 1186,
            id = 389,
            maxRank = 19,
            name = "Healing Boon",
          },
        },
        ["healing gift"] = {
          {
            classes = 16942,
            firstRankId = 80,
            id = 19,
            maxRank = 25,
            name = "Healing Gift",
          },
        },
        ["heightened endurance"] = {
          {
            classes = 33089,
            firstRankId = 683,
            id = 234,
            maxRank = 19,
            name = "Heightened Endurance",
          },
        },
        ["hybrid research"] = {
          {
            classes = 16412,
            firstRankId = 9011,
            id = 7809,
            maxRank = 10,
            name = "Hybrid Research",
          },
        },
        ["improved intimidation"] = {
          {
            classes = 41408,
            firstRankId = 8193,
            grantOnly = true,
            id = 1201,
            maxRank = 1,
            name = "Improved Intimidation",
          },
        },
        ingenuity = {
          {
            classes = 33217,
            firstRankId = 625,
            id = 210,
            maxRank = 9,
            name = "Ingenuity",
          },
        },
        ["innate enlightenment"] = {
          {
            classes = 15360,
            firstRankId = 426,
            id = 144,
            maxRank = 5,
            name = "Innate Enlightenment",
          },
          {
            classes = 546,
            firstRankId = 955,
            id = 316,
            maxRank = 5,
            name = "Innate Enlightenment",
          },
        },
        ["intrinsic efficiency"] = {
          {
            classes = 15386,
            firstRankId = 6112,
            id = 995,
            maxRank = 4,
            name = "Intrinsic Efficiency",
          },
        },
        ["killing spree"] = {
          {
            classes = 33089,
            firstRankId = 4739,
            id = 733,
            maxRank = 9,
            name = "Killing Spree",
          },
        },
        ["mastery of the past"] = {
          {
            classes = 0,
            firstRankId = 446,
            id = 150,
            maxRank = 21,
            name = "Mastery of the Past",
            prerequisiteRules = {
              {
                maxRank = 21,
                minRank = 1,
                requires = {
                  {
                    id = 26,
                    name = "Spell Casting Expertise",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 32446,
            firstRankId = 735,
            id = 251,
            maxRank = 21,
            name = "Mastery of the Past",
          },
        },
        ["mental clarity"] = {
          {
            classes = 32446,
            firstRankId = 658,
            id = 224,
            maxRank = 29,
            name = "Mental Clarity",
          },
        },
        ["mental stamina"] = {
          {
            classes = 32446,
            firstRankId = 8210,
            id = 1208,
            maxRank = 16,
            name = "Mental Stamina",
          },
        },
        ["mnemonic retention"] = {
          {
            classes = 32446,
            firstRankId = 1071,
            id = 347,
            maxRank = 4,
            name = "Mnemonic Retention",
          },
        },
        ["natural healing"] = {
          {
            classes = 49629,
            firstRankId = 110,
            id = 29,
            maxRank = 3,
            name = "Natural Healing",
          },
        },
        ["perfected levitation"] = {
          {
            classes = 31272,
            firstRankId = 8194,
            id = 1202,
            maxRank = 1,
            name = "Perfected Levitation",
          },
        },
        ["persistent casting"] = {
          {
            classes = 32446,
            firstRankId = 692,
            id = 237,
            maxRank = 13,
            name = "Persistent Casting",
          },
        },
        ["persistent minion"] = {
          {
            classes = 30256,
            firstRankId = 1122,
            id = 364,
            maxRank = 1,
            name = "Persistent Minion",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 176,
                    name = "Suspended Minion",
                    points = 2,
                  },
                },
              },
            },
          },
        },
        ["pet affinity"] = {
          {
            classes = 30384,
            firstRankId = 734,
            id = 250,
            maxRank = 1,
            name = "Pet Affinity",
          },
        },
        ["punishing blade"] = {
          {
            classes = 32841,
            firstRankId = 599,
            id = 202,
            maxRank = 16,
            name = "Punishing Blade",
          },
        },
        ["quick buff"] = {
          {
            classes = 25134,
            firstRankId = 147,
            id = 48,
            maxRank = 3,
            name = "Quick Buff",
          },
        },
        ["quickened encroaching darkness"] = {
          {
            classes = 1040,
            firstRankId = 6026,
            id = 1667,
            maxRank = 3,
            name = "Quickened Encroaching Darkness",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 826,
                    name = "Encroaching Darkness",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened radiant cure"] = {
          {
            classes = 546,
            firstRankId = 8204,
            id = 1206,
            maxRank = 5,
            name = "Quickened Radiant Cure",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 153,
                    name = "Radiant Cure",
                    points = 1,
                  },
                },
              },
            },
          },
          {
            classes = 4,
            firstRankId = 8207,
            id = 1207,
            maxRank = 5,
            name = "Quickened Radiant Cure",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 285,
                    name = "Radiant Cure",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened silent casting"] = {
          {
            classes = 15360,
            firstRankId = 13143,
            id = 737,
            maxRank = 3,
            name = "Quickened Silent Casting",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 500,
                    name = "Silent Casting",
                    points = 1,
                  },
                },
              },
            },
          },
          {
            classes = 546,
            firstRankId = 13146,
            id = 738,
            maxRank = 3,
            name = "Quickened Silent Casting",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 494,
                    name = "Silent Casting",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["radiant cure"] = {
          {
            classes = 546,
            firstRankId = 459,
            id = 153,
            maxRank = 9,
            name = "Radiant Cure",
          },
          {
            classes = 4,
            firstRankId = 860,
            id = 285,
            maxRank = 6,
            name = "Radiant Cure",
          },
        },
        ["secondary forte"] = {
          {
            classes = 15906,
            firstRankId = 691,
            id = 236,
            maxRank = 1,
            name = "Secondary Forte",
          },
        },
        ["shield block"] = {
          {
            classes = 703,
            firstRankId = 1287,
            id = 435,
            maxRank = 13,
            name = "Shield Block",
          },
          {
            classes = 0,
            firstRankId = 5283,
            id = 762,
            maxRank = 10,
            name = "Shield Block",
          },
          {
            classes = 0,
            firstRankId = 6124,
            id = 3802,
            maxRank = 10,
            name = "Shield Block",
          },
        },
        ["shielding of spirits"] = {
          {
            classes = 16930,
            firstRankId = 15374,
            id = 2054,
            maxRank = 1,
            name = "Shielding of Spirits",
          },
        },
        ["shielding resistance"] = {
          {
            classes = 16841,
            firstRankId = 1181,
            id = 388,
            maxRank = 5,
            name = "Shielding Resistance",
          },
        },
        ["silent casting"] = {
          {
            classes = 546,
            firstRankId = 1409,
            id = 494,
            maxRank = 5,
            name = "Silent Casting",
          },
          {
            classes = 32318,
            firstRankId = 1404,
            id = 500,
            maxRank = 6,
            name = "Silent Casting",
          },
        },
        ["slippery attacks"] = {
          {
            classes = 16841,
            firstRankId = 1093,
            id = 354,
            maxRank = 5,
            name = "Slippery Attacks",
          },
        },
        ["spell casting deftness"] = {
          {
            classes = 7184,
            firstRankId = 104,
            id = 27,
            maxRank = 3,
            name = "Spell Casting Deftness",
          },
        },
        ["spell casting expertise"] = {
          {
            classes = 0,
            firstRankId = 101,
            grantOnly = true,
            id = 26,
            maxRank = 3,
            name = "Spell Casting Expertise",
          },
        },
        ["spell casting fury"] = {
          {
            classes = 32446,
            firstRankId = 92,
            id = 23,
            maxRank = 3,
            name = "Spell Casting Fury",
          },
        },
        ["spell casting mastery"] = {
          {
            classes = 15906,
            firstRankId = 83,
            id = 20,
            maxRank = 4,
            name = "Spell Casting Mastery",
          },
          {
            classes = 16412,
            firstRankId = 1216,
            id = 1662,
            maxRank = 4,
            name = "Spell Casting Mastery",
          },
        },
        ["spell casting reinforcement"] = {
          {
            classes = 25150,
            firstRankId = 86,
            id = 21,
            maxRank = 5,
            name = "Spell Casting Reinforcement",
          },
          {
            classes = 7168,
            firstRankId = 6257,
            id = 3813,
            maxRank = 5,
            name = "Spell Casting Reinforcement",
          },
        },
        ["spell casting subtlety"] = {
          {
            classes = 0,
            firstRankId = 98,
            id = 25,
            maxRank = 16,
            name = "Spell Casting Subtlety",
          },
          {
            classes = 0,
            firstRankId = 738,
            id = 252,
            maxRank = 13,
            name = "Spell Casting Subtlety",
          },
        },
        ["staff block"] = {
          {
            classes = 15360,
            firstRankId = 14301,
            id = 342,
            maxRank = 1,
            name = "Staff Block",
          },
        },
        subtlety = {
          {
            classes = 65535,
            firstRankId = 10370,
            id = 8300,
            maxRank = 4,
            name = "Subtlety",
          },
        },
        ["summon companion"] = {
          {
            classes = 30256,
            firstRankId = 8227,
            id = 1215,
            maxRank = 4,
            name = "Summon Companion",
          },
        },
        ["suspended minion"] = {
          {
            classes = 30256,
            firstRankId = 526,
            id = 176,
            maxRank = 2,
            name = "Suspended Minion",
          },
        },
        twinheal = {
          {
            classes = 16942,
            firstRankId = 12652,
            id = 385,
            maxRank = 4,
            name = "Twinheal",
          },
        },
        ["unknown aa 16083"] = {
          {
            classes = 15906,
            firstRankId = 16083,
            id = 679,
            maxRank = 1,
            name = "Unknown AA 16083",
          },
        },
        ["unknown aa 16536"] = {
          {
            classes = 546,
            firstRankId = 16536,
            id = 883,
            maxRank = 1,
            name = "Unknown AA 16536",
          },
        },
        ["unknown aa 17212"] = {
          {
            classes = 1,
            firstRankId = 17212,
            id = 885,
            maxRank = 1,
            name = "Unknown AA 17212",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 10367,
                    name = "Ageless Enmity",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17258"] = {
          {
            classes = 1040,
            firstRankId = 17258,
            id = 879,
            maxRank = 1,
            name = "Unknown AA 17258",
          },
        },
        ["unknown aa 17357"] = {
          {
            classes = 514,
            firstRankId = 17357,
            id = 955,
            maxRank = 1,
            name = "Unknown AA 17357",
          },
        },
        ["unknown aa 17378"] = {
          {
            classes = 15360,
            firstRankId = 17378,
            id = 969,
            maxRank = 1,
            name = "Unknown AA 17378",
          },
          {
            classes = 546,
            firstRankId = 17379,
            id = 970,
            maxRank = 1,
            name = "Unknown AA 17378",
          },
          {
            classes = 16384,
            firstRankId = 17380,
            id = 971,
            maxRank = 1,
            name = "Unknown AA 17378",
          },
        },
        ["veteran's wrath"] = {
          {
            classes = 0,
            firstRankId = 1041,
            id = 338,
            maxRank = 16,
            name = "Veteran's Wrath",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["weapon affinity"] = {
          {
            classes = 49629,
            firstRankId = 686,
            id = 235,
            maxRank = 7,
            name = "Weapon Affinity",
          },
        },
        ["written prayer"] = {
          {
            classes = 546,
            firstRankId = 9021,
            id = 7819,
            maxRank = 10,
            name = "Written Prayer",
          },
        },
      },
      idIndex = {
        ["1020"] = "hastened companion's blessing",
        ["1022"] = "destructive fury",
        ["10367"] = "ageless enmity",
        ["10392"] = "ageless enmity",
        ["104"] = "double riposte",
        ["1200"] = "companion's alacrity",
        ["1201"] = "improved intimidation",
        ["1202"] = "perfected levitation",
        ["1203"] = "hastened fortify companion",
        ["1204"] = "empowered ingenuity",
        ["1205"] = "companion's fury",
        ["1206"] = "quickened radiant cure",
        ["1207"] = "quickened radiant cure",
        ["1208"] = "mental stamina",
        ["1209"] = "hardy endurance",
        ["1212"] = "group perfected invisibility to undead",
        ["1214"] = "cascade of life",
        ["1215"] = "summon companion",
        ["1217"] = "gate",
        ["1218"] = "extended ingenuity",
        ["1219"] = "armor of wisdom",
        ["1220"] = "armor of wisdom",
        ["1221"] = "armor of wisdom",
        ["1222"] = "armor of wisdom",
        ["1223"] = "armor of wisdom",
        ["1433"] = "extended ingenuity",
        ["144"] = "innate enlightenment",
        ["150"] = "mastery of the past",
        ["153"] = "radiant cure",
        ["1580"] = "divine companion aura",
        ["1662"] = "spell casting mastery",
        ["1663"] = "gift of mana",
        ["1666"] = "group perfected levitation",
        ["1667"] = "quickened encroaching darkness",
        ["176"] = "suspended minion",
        ["18"] = "healing adept",
        ["189"] = "ferocity",
        ["19"] = "healing gift",
        ["20"] = "spell casting mastery",
        ["202"] = "punishing blade",
        ["2054"] = "shielding of spirits",
        ["21"] = "spell casting reinforcement",
        ["210"] = "ingenuity",
        ["215"] = "fury of magic",
        ["224"] = "mental clarity",
        ["23"] = "spell casting fury",
        ["234"] = "heightened endurance",
        ["235"] = "weapon affinity",
        ["236"] = "secondary forte",
        ["237"] = "persistent casting",
        ["25"] = "spell casting subtlety",
        ["250"] = "pet affinity",
        ["251"] = "mastery of the past",
        ["252"] = "spell casting subtlety",
        ["256"] = "hastened curing",
        ["259"] = "critical affliction",
        ["26"] = "spell casting expertise",
        ["27"] = "spell casting deftness",
        ["285"] = "radiant cure",
        ["29"] = "natural healing",
        ["30"] = "combat fury",
        ["309"] = "combat fury",
        ["31"] = "fear resistance",
        ["316"] = "innate enlightenment",
        ["32"] = "finishing blow",
        ["338"] = "veteran's wrath",
        ["342"] = "staff block",
        ["347"] = "mnemonic retention",
        ["348"] = "expansive mind",
        ["3512"] = "companion's durability",
        ["352"] = "arcane tongues",
        ["3521"] = "hastened silent casting",
        ["3522"] = "hastened silent casting",
        ["354"] = "slippery attacks",
        ["364"] = "persistent minion",
        ["3705"] = "companion's blessing",
        ["3707"] = "fortify companion",
        ["3708"] = "burst of power",
        ["3718"] = "critical affliction",
        ["3802"] = "shield block",
        ["3813"] = "spell casting reinforcement",
        ["3833"] = "burst of power",
        ["3834"] = "burst of power",
        ["3837"] = "burst of power",
        ["385"] = "twinheal",
        ["388"] = "shielding resistance",
        ["389"] = "healing boon",
        ["397"] = "destructive fury (wizard)",
        ["398"] = "destructive fury",
        ["4200"] = "hastened forceful rejuvenation",
        ["435"] = "shield block",
        ["48"] = "quick buff",
        ["494"] = "silent casting",
        ["495"] = "gift of mana",
        ["498"] = "enhanced aggression",
        ["500"] = "silent casting",
        ["516"] = "abundant healing",
        ["563"] = "concentration",
        ["679"] = "unknown aa 16083",
        ["7003"] = "forceful rejuvenation",
        ["733"] = "killing spree",
        ["737"] = "quickened silent casting",
        ["738"] = "quickened silent casting",
        ["762"] = "shield block",
        ["7809"] = "hybrid research",
        ["7819"] = "written prayer",
        ["8300"] = "subtlety",
        ["879"] = "unknown aa 17258",
        ["883"] = "unknown aa 16536",
        ["885"] = "unknown aa 17212",
        ["955"] = "unknown aa 17357",
        ["969"] = "unknown aa 17378",
        ["970"] = "unknown aa 17378",
        ["971"] = "unknown aa 17378",
        ["995"] = "intrinsic efficiency",
      },
    },
    class = {
      byName = {
        ["2 hand bash"] = {
          {
            classes = 20,
            firstRankId = 196,
            id = 79,
            maxRank = 1,
            name = "2 Hand Bash",
          },
        },
        ["a hole in space"] = {
          {
            classes = 2048,
            firstRankId = 14323,
            id = 365,
            maxRank = 1,
            name = "A Hole In Space",
          },
        },
        ["a tune stuck in your head"] = {
          {
            classes = 128,
            firstRankId = 10339,
            id = 8261,
            maxRank = 1,
            name = "A Tune Stuck In Your Head",
          },
        },
        abscond = {
          {
            classes = 2048,
            firstRankId = 12864,
            id = 490,
            maxRank = 2,
            name = "Abscond",
          },
        },
        ["absorbing agent"] = {
          {
            classes = 256,
            firstRankId = 15515,
            id = 1175,
            maxRank = 1,
            name = "Absorbing Agent",
          },
        },
        ["abyssal steed"] = {
          {
            classes = 16,
            firstRankId = 1646,
            id = 571,
            maxRank = 1,
            name = "Abyssal Steed",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 85,
                    name = "Unholy Steed",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        acrobatics = {
          {
            classes = 448,
            firstRankId = 283,
            id = 122,
            maxRank = 3,
            name = "Acrobatics",
          },
        },
        ["act of valor"] = {
          {
            classes = 4,
            firstRankId = 193,
            id = 76,
            maxRank = 1,
            name = "Act of Valor",
          },
        },
        ["acute focus of arcanum"] = {
          {
            classes = 15904,
            firstRankId = 8260,
            id = 1668,
            maxRank = 1,
            name = "Acute Focus of Arcanum",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1211,
                    name = "Focus of Arcanum",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["advanced pet discipline"] = {
          {
            classes = 22032,
            firstRankId = 1129,
            id = 366,
            maxRank = 2,
            name = "Advanced Pet Discipline",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 125,
                    name = "Pet Discipline",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["advanced tracking"] = {
          {
            classes = 32,
            firstRankId = 762,
            id = 258,
            maxRank = 5,
            name = "Advanced Tracking",
          },
        },
        ["aegis of kildrukaun"] = {
          {
            classes = 5120,
            firstRankId = 12785,
            id = 441,
            maxRank = 2,
            name = "Aegis of Kildrukaun",
          },
        },
        ["affliction mastery"] = {
          {
            classes = 1568,
            firstRankId = 1514,
            id = 526,
            maxRank = 4,
            name = "Affliction Mastery",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 259,
                    name = "Critical Affliction",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["agile feet"] = {
          {
            classes = 64,
            firstRankId = 10650,
            id = 8900,
            maxRank = 4,
            name = "Agile Feet",
          },
        },
        ["agony of absolution"] = {
          {
            classes = 32768,
            firstRankId = 13066,
            id = 643,
            maxRank = 1,
            name = "Agony of Absolution",
          },
        },
        ["allegretto of battle"] = {
          {
            classes = 128,
            firstRankId = 14181,
            id = 809,
            maxRank = 1,
            name = "Allegretto of Battle",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3837,
                    name = "Burst of Power",
                    points = 12,
                  },
                },
              },
            },
          },
        },
        ambidexterity = {
          {
            classes = 16841,
            firstRankId = 198,
            id = 81,
            maxRank = 1,
            name = "Ambidexterity",
          },
        },
        anatomy = {
          {
            classes = 256,
            firstRankId = 1604,
            id = 555,
            maxRank = 20,
            name = "Anatomy",
          },
        },
        ["ancestral aid"] = {
          {
            classes = 512,
            firstRankId = 1327,
            id = 447,
            maxRank = 16,
            name = "Ancestral Aid",
          },
        },
        ["ancestral guard"] = {
          {
            classes = 512,
            firstRankId = 1520,
            id = 528,
            maxRank = 16,
            name = "Ancestral Guard",
          },
        },
        ["animation empathy"] = {
          {
            classes = 8192,
            firstRankId = 580,
            id = 195,
            maxRank = 3,
            name = "Animation Empathy",
          },
        },
        appraisal = {
          {
            classes = 256,
            firstRankId = 1542,
            id = 536,
            maxRank = 1,
            name = "Appraisal",
          },
        },
        ["arcane destruction"] = {
          {
            classes = 2048,
            firstRankId = 15611,
            id = 1265,
            maxRank = 1,
            name = "Arcane Destruction",
          },
        },
        ["arcane fusion"] = {
          {
            classes = 2048,
            firstRankId = 15609,
            id = 1264,
            maxRank = 1,
            name = "Arcane Fusion",
          },
        },
        ["arcane overkill"] = {
          {
            classes = 2048,
            firstRankId = 5295,
            id = 776,
            maxRank = 13,
            name = "Arcane Overkill",
          },
        },
        ["arcane whisper"] = {
          {
            classes = 14336,
            firstRankId = 4938,
            id = 636,
            maxRank = 5,
            name = "Arcane Whisper",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 5,
                requires = {
                  {
                    id = 25,
                    name = "Spell Casting Subtlety",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["archery mastery"] = {
          {
            classes = 8,
            firstRankId = 199,
            id = 82,
            maxRank = 4,
            name = "Archery Mastery",
          },
        },
        arcomancy = {
          {
            classes = 2048,
            firstRankId = 6290,
            id = 3734,
            maxRank = 13,
            name = "Arcomancy",
          },
        },
        ["area taunt"] = {
          {
            classes = 1,
            firstRankId = 259,
            id = 110,
            maxRank = 1,
            name = "Area Taunt",
          },
        },
        ["armor of ancestral spirits"] = {
          {
            classes = 512,
            firstRankId = 12989,
            id = 618,
            maxRank = 4,
            name = "Armor of Ancestral Spirits",
          },
        },
        ["armor of the inquisitor"] = {
          {
            classes = 4,
            firstRankId = 5095,
            id = 701,
            maxRank = 13,
            name = "Armor of the Inquisitor",
          },
        },
        ["army of the dead"] = {
          {
            classes = 1024,
            firstRankId = 1274,
            id = 792,
            maxRank = 19,
            name = "Army of the Dead",
            prerequisiteRules = {
              {
                maxRank = 19,
                minRank = 1,
                requires = {
                  {
                    id = 175,
                    name = "Wake the Dead",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["aspect of zomm"] = {
          {
            classes = 6144,
            firstRankId = 10603,
            id = 8801,
            maxRank = 1,
            name = "Aspect of Zomm",
          },
        },
        ["assassin's wrath"] = {
          {
            classes = 256,
            firstRankId = 15625,
            id = 1272,
            maxRank = 1,
            name = "Assassin's Wrath",
          },
        },
        ["atol's shackles"] = {
          {
            classes = 2048,
            firstRankId = 8075,
            id = 1155,
            maxRank = 1,
            name = "Atol's Shackles",
          },
        },
        ["atol's unresistable shackles"] = {
          {
            classes = 2048,
            firstRankId = 12865,
            id = 491,
            maxRank = 1,
            name = "Atol's Unresistable Shackles",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1155,
                    name = "Atol's Shackles",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["attack of the warders"] = {
          {
            classes = 16384,
            firstRankId = 6971,
            id = 981,
            maxRank = 7,
            name = "Attack of the Warders",
          },
        },
        ["auroria mastery"] = {
          {
            classes = 8192,
            firstRankId = 6987,
            id = 3000,
            maxRank = 1,
            name = "Auroria Mastery",
          },
        },
        ["auspice of the hunter"] = {
          {
            classes = 8,
            firstRankId = 1345,
            id = 462,
            maxRank = 14,
            name = "Auspice of the Hunter",
          },
        },
        ["azure mind crystal"] = {
          {
            classes = 8192,
            firstRankId = 4935,
            id = 633,
            maxRank = 4,
            name = "Azure Mind Crystal",
          },
        },
        ["balefire burst"] = {
          {
            classes = 4,
            firstRankId = 13164,
            id = 739,
            maxRank = 1,
            name = "Balefire Burst",
          },
        },
        ["bandage wound"] = {
          {
            classes = 32769,
            firstRankId = 263,
            id = 112,
            maxRank = 3,
            name = "Bandage Wound",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 17,
                    name = "First Aid",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["battle frenzy"] = {
          {
            classes = 2,
            firstRankId = 13134,
            id = 735,
            maxRank = 3,
            name = "Battle Frenzy",
          },
        },
        ["battle leap"] = {
          {
            classes = 32769,
            firstRankId = 4860,
            id = 611,
            maxRank = 3,
            name = "Battle Leap",
          },
        },
        ["battle stomp"] = {
          {
            classes = 32768,
            firstRankId = 15569,
            id = 1252,
            maxRank = 1,
            name = "Battle Stomp",
          },
        },
        ["beacon of life"] = {
          {
            classes = 2,
            firstRankId = 14208,
            id = 137,
            maxRank = 1,
            name = "Beacon of Life",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7689,
                    name = "Burst of Life",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["beacon of the righteous"] = {
          {
            classes = 4,
            firstRankId = 10394,
            id = 10394,
            maxRank = 3,
            name = "Beacon of the Righteous",
          },
        },
        ["beam of displacement"] = {
          {
            classes = 2048,
            firstRankId = 11056,
            id = 9702,
            maxRank = 1,
            name = "Beam of Displacement",
          },
        },
        ["beam of slumber"] = {
          {
            classes = 8192,
            firstRankId = 10550,
            id = 8700,
            maxRank = 2,
            name = "Beam of Slumber",
          },
        },
        ["beastlords feral kick"] = {
          {
            classes = 16384,
            firstRankId = 7106,
            id = 3832,
            maxRank = 3,
            name = "Beastlords Feral Kick",
          },
        },
        ["beeeees!"] = {
          {
            classes = 32,
            firstRankId = 18997,
            id = 17791,
            maxRank = 1,
            name = "Beeeees!",
          },
        },
        ["beguiler's banishment"] = {
          {
            classes = 8192,
            firstRankId = 5849,
            id = 3550,
            maxRank = 3,
            name = "Beguiler's Banishment",
          },
        },
        ["beguiler's directed banishment"] = {
          {
            classes = 8192,
            firstRankId = 5870,
            id = 3551,
            maxRank = 1,
            name = "Beguiler's Directed Banishment",
          },
        },
        ["belltone mind"] = {
          {
            classes = 128,
            firstRankId = 8322,
            id = 8322,
            maxRank = 6,
            name = "Belltone Mind",
          },
        },
        ["bestial alignment"] = {
          {
            classes = 16384,
            firstRankId = 718,
            id = 245,
            maxRank = 5,
            name = "Bestial Alignment",
          },
        },
        ["bestial bloodrage"] = {
          {
            classes = 16384,
            firstRankId = 12804,
            id = 443,
            maxRank = 1,
            name = "Bestial Bloodrage",
          },
        },
        ["bestial frenzy"] = {
          {
            classes = 16384,
            firstRankId = 551,
            id = 186,
            maxRank = 14,
            name = "Bestial Frenzy",
          },
        },
        ["bestow divine aura"] = {
          {
            classes = 2,
            firstRankId = 132,
            id = 39,
            maxRank = 1,
            name = "Bestow Divine Aura",
          },
          {
            classes = 4,
            firstRankId = 10752,
            id = 9100,
            maxRank = 1,
            name = "Bestow Divine Aura",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7108,
                    name = "Divine Aura",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["binding axe"] = {
          {
            classes = 32768,
            firstRankId = 13065,
            id = 642,
            maxRank = 1,
            name = "Binding Axe",
          },
        },
        ["bite of tashani"] = {
          {
            classes = 8192,
            firstRankId = 8039,
            id = 1125,
            maxRank = 2,
            name = "Bite of Tashani",
          },
        },
        ["bite of the asp"] = {
          {
            classes = 16384,
            firstRankId = 6984,
            id = 986,
            maxRank = 4,
            name = "Bite of the Asp",
          },
        },
        ["blade guardian"] = {
          {
            classes = 1,
            firstRankId = 13444,
            id = 967,
            maxRank = 1,
            name = "Blade Guardian",
          },
        },
        ["bladed song"] = {
          {
            classes = 128,
            firstRankId = 5020,
            id = 669,
            maxRank = 5,
            name = "Bladed Song",
          },
        },
        ["blanket of forgetfulness"] = {
          {
            classes = 8192,
            firstRankId = 15489,
            id = 2206,
            maxRank = 1,
            name = "Blanket of Forgetfulness",
          },
        },
        ["blast of anger"] = {
          {
            classes = 1,
            firstRankId = 6135,
            id = 3646,
            maxRank = 4,
            name = "Blast of Anger",
          },
        },
        ["blessed chains"] = {
          {
            classes = 2,
            firstRankId = 14209,
            id = 138,
            maxRank = 1,
            name = "Blessed Chains",
          },
        },
        ["blessing of life"] = {
          {
            classes = 4,
            firstRankId = 6395,
            id = 3820,
            maxRank = 13,
            name = "Blessing of Life",
          },
        },
        ["blessing of light"] = {
          {
            classes = 4,
            firstRankId = 10355,
            id = 3500,
            maxRank = 7,
            name = "Blessing of Light",
          },
        },
        ["blessing of purification"] = {
          {
            classes = 4,
            firstRankId = 10753,
            id = 9101,
            maxRank = 1,
            name = "Blessing of Purification",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 286,
                    name = "Purification",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["blessing of resurrection"] = {
          {
            classes = 2,
            firstRankId = 6299,
            id = 3800,
            maxRank = 1,
            name = "Blessing of Resurrection",
          },
        },
        ["blessing of ro"] = {
          {
            classes = 32,
            firstRankId = 10789,
            id = 935,
            maxRank = 1,
            name = "Blessing of Ro",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 10424,
                    name = "Hand of Ro",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["blessing of sanctuary"] = {
          {
            classes = 2,
            firstRankId = 10463,
            id = 8505,
            maxRank = 1,
            name = "Blessing of Sanctuary",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 396,
                    name = "Sanctuary",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["blessing of the faithful"] = {
          {
            classes = 4,
            firstRankId = 13101,
            id = 770,
            maxRank = 4,
            name = "Blessing of the Faithful",
          },
        },
        ["blinding fury"] = {
          {
            classes = 32768,
            firstRankId = 4857,
            id = 610,
            maxRank = 7,
            name = "Blinding Fury",
          },
        },
        ["blood magic"] = {
          {
            classes = 1024,
            firstRankId = 1510,
            id = 524,
            maxRank = 3,
            name = "Blood Magic",
          },
        },
        ["blood pact"] = {
          {
            classes = 32768,
            firstRankId = 1178,
            id = 387,
            maxRank = 13,
            name = "Blood Pact",
          },
        },
        ["blood tithe"] = {
          {
            classes = 1568,
            firstRankId = 4761,
            id = 740,
            maxRank = 6,
            name = "Blood Tithe",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 526,
                    name = "Affliction Mastery",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        bloodfury = {
          {
            classes = 32768,
            firstRankId = 13224,
            id = 752,
            maxRank = 1,
            name = "Bloodfury",
          },
        },
        bloodlust = {
          {
            classes = 16384,
            firstRankId = 13484,
            id = 241,
            maxRank = 1,
            name = "Bloodlust",
          },
        },
        ["bloodthirsty blade"] = {
          {
            classes = 16,
            firstRankId = 13616,
            id = 360,
            maxRank = 3,
            name = "Bloodthirsty Blade",
          },
        },
        ["blur of axes"] = {
          {
            classes = 32768,
            firstRankId = 1134,
            id = 368,
            maxRank = 24,
            name = "Blur of Axes",
          },
        },
        ["boastful bellow"] = {
          {
            classes = 128,
            firstRankId = 592,
            id = 199,
            maxRank = 30,
            name = "Boastful Bellow",
            prerequisiteRules = {
              {
                maxRank = 30,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["bobbing corpse"] = {
          {
            classes = 16,
            firstRankId = 10395,
            id = 10395,
            maxRank = 2,
            name = "Bobbing Corpse",
          },
        },
        ["body and mind rejuvenation"] = {
          {
            classes = 16540,
            firstRankId = 278,
            id = 119,
            maxRank = 1,
            name = "Body and Mind Rejuvenation",
          },
        },
        ["bony grasp of death"] = {
          {
            classes = 16,
            firstRankId = 14051,
            id = 650,
            maxRank = 1,
            name = "Bony Grasp of Death",
          },
        },
        ["bow mastery"] = {
          {
            classes = 8,
            firstRankId = 1196,
            id = 878,
            maxRank = 8,
            name = "Bow Mastery",
          },
        },
        ["brace for impact"] = {
          {
            classes = 1,
            firstRankId = 14019,
            id = 1686,
            maxRank = 1,
            name = "Brace For Impact",
          },
        },
        ["burst of life"] = {
          {
            classes = 2,
            firstRankId = 7689,
            id = 7689,
            maxRank = 1,
            name = "Burst of Life",
          },
        },
        cacophony = {
          {
            classes = 128,
            firstRankId = 1598,
            id = 553,
            maxRank = 19,
            name = "Cacophony",
          },
        },
        ["calculated insanity"] = {
          {
            classes = 8192,
            firstRankId = 12931,
            id = 534,
            maxRank = 1,
            name = "Calculated Insanity",
          },
        },
        ["call hither"] = {
          {
            classes = 4096,
            firstRankId = 6455,
            id = 3841,
            maxRank = 3,
            name = "Call Hither",
          },
        },
        ["call of challenge"] = {
          {
            classes = 1,
            firstRankId = 1597,
            id = 552,
            maxRank = 3,
            name = "Call of Challenge",
          },
        },
        ["call of the ancients"] = {
          {
            classes = 512,
            firstRankId = 970,
            id = 321,
            maxRank = 9,
            name = "Call of the Ancients",
          },
        },
        ["call of the herald"] = {
          {
            classes = 2,
            firstRankId = 15343,
            id = 2047,
            maxRank = 1,
            name = "Call of the Herald",
          },
        },
        ["call of the hero"] = {
          {
            classes = 4096,
            firstRankId = 1017,
            id = 7050,
            maxRank = 2,
            name = "Call of the Hero",
          },
        },
        ["call of the wild"] = {
          {
            classes = 544,
            firstRankId = 1228,
            id = 404,
            maxRank = 1,
            name = "Call of the Wild",
          },
        },
        ["call of xuzl"] = {
          {
            classes = 2048,
            firstRankId = 619,
            id = 208,
            maxRank = 14,
            name = "Call of Xuzl",
          },
        },
        ["call to corpse"] = {
          {
            classes = 1024,
            firstRankId = 187,
            id = 72,
            maxRank = 1,
            name = "Call to Corpse",
          },
        },
        cannibalization = {
          {
            classes = 512,
            firstRankId = 146,
            id = 47,
            maxRank = 9,
            name = "Cannibalization",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 224,
                    name = "Mental Clarity",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["cascade of decay"] = {
          {
            classes = 1024,
            firstRankId = 15594,
            id = 1259,
            maxRank = 1,
            name = "Cascade of Decay",
          },
        },
        ["cascading divine aura"] = {
          {
            classes = 2,
            firstRankId = 7943,
            id = 1061,
            maxRank = 2,
            name = "Cascading Divine Aura",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 39,
                    name = "Bestow Divine Aura",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["cascading rage"] = {
          {
            classes = 32768,
            firstRankId = 1425,
            id = 499,
            maxRank = 10,
            name = "Cascading Rage",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 374,
                    name = "Untamed Rage",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["cascading theft of defense"] = {
          {
            classes = 16,
            firstRankId = 6641,
            id = 823,
            maxRank = 7,
            name = "Cascading Theft of Defense",
          },
        },
        ["cascading theft of life"] = {
          {
            classes = 16,
            firstRankId = 10915,
            id = 9404,
            maxRank = 4,
            name = "Cascading Theft of Life",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 823,
                    name = "Cascading Theft of Defense",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["cat-like reflexes"] = {
          {
            classes = 16384,
            firstRankId = 11074,
            id = 11074,
            maxRank = 3,
            name = "Cat-like Reflexes",
          },
        },
        ["celestial hammer"] = {
          {
            classes = 2,
            firstRankId = 1192,
            id = 391,
            maxRank = 16,
            name = "Celestial Hammer",
          },
        },
        ["celestial rapidity"] = {
          {
            classes = 2,
            firstRankId = 6534,
            id = 997,
            maxRank = 1,
            name = "Celestial Rapidity",
          },
        },
        ["celestial regeneration"] = {
          {
            classes = 2,
            firstRankId = 131,
            id = 38,
            maxRank = 21,
            name = "Celestial Regeneration",
            prerequisiteRules = {
              {
                maxRank = 21,
                minRank = 1,
                requires = {
                  {
                    id = 19,
                    name = "Healing Gift",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["chains of purity"] = {
          {
            classes = 4,
            firstRankId = 10348,
            id = 129,
            maxRank = 4,
            name = "Chains of Purity",
          },
        },
        ["chameleon strike"] = {
          {
            classes = 16384,
            firstRankId = 11080,
            id = 11080,
            maxRank = 2,
            name = "Chameleon Strike",
          },
        },
        ["chameleon's gift"] = {
          {
            classes = 8,
            firstRankId = 15304,
            id = 2037,
            maxRank = 1,
            name = "Chameleon's Gift",
          },
        },
        ["chaotic stab"] = {
          {
            classes = 256,
            firstRankId = 287,
            id = 124,
            maxRank = 1,
            name = "Chaotic Stab",
          },
        },
        ["chattering bones"] = {
          {
            classes = 16,
            firstRankId = 6508,
            id = 3822,
            maxRank = 10,
            name = "Chattering Bones",
          },
        },
        ["cheetah's pounce"] = {
          {
            classes = 16384,
            firstRankId = 13483,
            id = 240,
            maxRank = 1,
            name = "Cheetah's Pounce",
          },
        },
        ["chromatic haze"] = {
          {
            classes = 8192,
            firstRankId = 15486,
            id = 2205,
            maxRank = 1,
            name = "Chromatic Haze",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 534,
                    name = "Calculated Insanity",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["clenched jaw"] = {
          {
            classes = 8,
            firstRankId = 10803,
            id = 9201,
            maxRank = 3,
            name = "Clenched Jaw",
          },
        },
        ["clinging root"] = {
          {
            classes = 8192,
            firstRankId = 6236,
            id = 3716,
            maxRank = 5,
            name = "Clinging Root",
          },
        },
        ["cloak of light"] = {
          {
            classes = 4,
            firstRankId = 1523,
            id = 529,
            maxRank = 1,
            name = "Cloak of Light",
          },
        },
        ["cloak of shadows"] = {
          {
            classes = 1040,
            firstRankId = 1527,
            id = 531,
            maxRank = 1,
            name = "Cloak of Shadows",
          },
          {
            classes = 4096,
            firstRankId = 15203,
            id = 2061,
            maxRank = 1,
            name = "Cloak of Shadows",
          },
        },
        ["close combat mastery"] = {
          {
            classes = 8,
            firstRankId = 15288,
            id = 2041,
            maxRank = 1,
            name = "Close Combat Mastery",
          },
        },
        ["coat of thistles"] = {
          {
            classes = 8,
            firstRankId = 867,
            id = 288,
            maxRank = 13,
            name = "Coat of Thistles",
          },
        },
        ["color shock"] = {
          {
            classes = 8192,
            firstRankId = 1239,
            id = 412,
            maxRank = 4,
            name = "Color Shock",
          },
        },
        ["combat fury"] = {
          {
            classes = 0,
            firstRankId = 937,
            id = 310,
            maxRank = 6,
            name = "Combat Fury",
          },
          {
            classes = 0,
            firstRankId = 940,
            id = 311,
            maxRank = 6,
            name = "Combat Fury",
          },
        },
        ["combat medic"] = {
          {
            classes = 32769,
            firstRankId = 5136,
            id = 689,
            maxRank = 5,
            name = "Combat Medic",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 496,
                    name = "Field Dressing",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["combatant's pact"] = {
          {
            classes = 1,
            firstRankId = 14029,
            id = 929,
            maxRank = 1,
            name = "Combatant's Pact",
          },
        },
        ["communion of blood"] = {
          {
            classes = 32768,
            firstRankId = 15570,
            id = 1253,
            maxRank = 1,
            name = "Communion of Blood",
          },
        },
        ["communion of the cheetah"] = {
          {
            classes = 512,
            firstRankId = 14237,
            id = 152,
            maxRank = 1,
            name = "Communion of the Cheetah",
          },
          {
            classes = 32,
            firstRankId = 12638,
            id = 939,
            maxRank = 1,
            name = "Communion of the Cheetah",
          },
        },
        ["companion of necessity"] = {
          {
            classes = 4096,
            firstRankId = 6333,
            grantOnly = true,
            id = 3516,
            maxRank = 3,
            name = "Companion of Necessity",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 125,
                    name = "Pet Discipline",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["companion's agility"] = {
          {
            classes = 30256,
            firstRankId = 6383,
            id = 3818,
            maxRank = 10,
            name = "Companion's Agility",
          },
        },
        ["companion's gift"] = {
          {
            classes = 4096,
            firstRankId = 1577,
            id = 546,
            maxRank = 13,
            name = "Companion's Gift",
            prerequisiteRules = {
              {
                maxRank = 13,
                minRank = 1,
                requires = {
                  {
                    id = 58,
                    name = "Mend Companion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["companion's relocation"] = {
          {
            classes = 30224,
            firstRankId = 6379,
            id = 3816,
            maxRank = 1,
            name = "Companion's Relocation",
          },
        },
        ["companion's sacrifice"] = {
          {
            classes = 16384,
            firstRankId = 12807,
            id = 444,
            maxRank = 1,
            name = "Companion's Sacrifice",
          },
        },
        ["concussive intuition"] = {
          {
            classes = 2048,
            firstRankId = 12885,
            id = 577,
            maxRank = 1,
            name = "Concussive Intuition",
          },
        },
        conservation = {
          {
            classes = 32768,
            firstRankId = 1453,
            id = 504,
            maxRank = 5,
            name = "Conservation",
          },
        },
        ["consumption of spirit"] = {
          {
            classes = 16384,
            firstRankId = 15423,
            id = 1239,
            maxRank = 1,
            name = "Consumption of Spirit",
          },
        },
        ["consumption of the soul"] = {
          {
            classes = 16,
            firstRankId = 589,
            id = 198,
            maxRank = 21,
            name = "Consumption of the Soul",
            prerequisiteRules = {
              {
                maxRank = 21,
                minRank = 1,
                requires = {
                  {
                    id = 87,
                    name = "Leech Touch",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        convergence = {
          {
            classes = 1024,
            firstRankId = 14358,
            id = 676,
            maxRank = 1,
            name = "Convergence",
          },
        },
        ["convergence of spirits"] = {
          {
            classes = 8,
            firstRankId = 13556,
            id = 455,
            maxRank = 1,
            name = "Convergence of Spirits",
          },
          {
            classes = 32,
            firstRankId = 1495,
            id = 519,
            maxRank = 13,
            name = "Convergence of Spirits",
            prerequisiteRules = {
              {
                maxRank = 13,
                minRank = 1,
                requires = {
                  {
                    id = 185,
                    name = "Spirit of the Wood",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["covenant of spirit"] = {
          {
            classes = 544,
            firstRankId = 15356,
            id = 2048,
            maxRank = 1,
            name = "Covenant of Spirit",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 149,
                    name = "Preincarnation",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["cover tracks"] = {
          {
            classes = 8,
            firstRankId = 10368,
            id = 2234,
            maxRank = 3,
            name = "Cover Tracks",
          },
        },
        ["crippling apparition"] = {
          {
            classes = 512,
            firstRankId = 13020,
            id = 638,
            maxRank = 1,
            name = "Crippling Apparition",
          },
        },
        ["crippling aurora"] = {
          {
            classes = 8192,
            firstRankId = 12937,
            id = 535,
            maxRank = 1,
            name = "Crippling Aurora",
          },
        },
        ["crippling spirit"] = {
          {
            classes = 512,
            firstRankId = 15377,
            id = 1270,
            maxRank = 1,
            name = "Crippling Spirit",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 638,
                    name = "Crippling Apparition",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["crippling strike"] = {
          {
            classes = 64,
            firstRankId = 1352,
            id = 468,
            maxRank = 16,
            name = "Crippling Strike",
          },
        },
        ["critical mend"] = {
          {
            classes = 64,
            firstRankId = 230,
            id = 97,
            maxRank = 8,
            name = "Critical Mend",
            prerequisiteRules = {
              {
                maxRank = 8,
                minRank = 1,
                requires = {
                  {
                    id = 17,
                    name = "First Aid",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["cry of battle"] = {
          {
            classes = 32768,
            firstRankId = 1458,
            id = 505,
            maxRank = 1,
            name = "Cry of Battle",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 375,
                    name = "Echoing Cries",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        cryomancy = {
          {
            classes = 2048,
            firstRankId = 4944,
            id = 640,
            maxRank = 13,
            name = "Cryomancy",
          },
        },
        ["cunning disguise: barbarian"] = {
          {
            classes = 256,
            firstRankId = 6673,
            id = 846,
            maxRank = 1,
            name = "Cunning Disguise: Barbarian",
          },
        },
        ["cunning disguise: erudite"] = {
          {
            classes = 256,
            firstRankId = 6674,
            id = 847,
            maxRank = 1,
            name = "Cunning Disguise: Erudite",
          },
        },
        ["cunning disguise: goblin"] = {
          {
            classes = 256,
            firstRankId = 6676,
            id = 849,
            maxRank = 1,
            name = "Cunning Disguise: Goblin",
          },
        },
        ["cunning disguise: half-elf"] = {
          {
            classes = 256,
            firstRankId = 6672,
            id = 845,
            maxRank = 1,
            name = "Cunning Disguise: Half-Elf",
          },
        },
        ["cunning disguise: human"] = {
          {
            classes = 256,
            firstRankId = 6671,
            id = 844,
            maxRank = 1,
            name = "Cunning Disguise: Human",
          },
        },
        ["cunning disguise: shissar"] = {
          {
            classes = 256,
            firstRankId = 14139,
            id = 715,
            maxRank = 1,
            name = "Cunning Disguise: Shissar",
          },
        },
        ["cunning disguise: troll"] = {
          {
            classes = 256,
            firstRankId = 6675,
            id = 848,
            maxRank = 1,
            name = "Cunning Disguise: Troll",
          },
        },
        ["dampen resistance"] = {
          {
            classes = 512,
            firstRankId = 6692,
            id = 857,
            maxRank = 6,
            name = "Dampen Resistance",
          },
        },
        ["dance of blades"] = {
          {
            classes = 128,
            firstRankId = 1110,
            id = 359,
            maxRank = 16,
            name = "Dance of Blades",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 187,
                    name = "Harmonious Attack",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["dauntless perseverance"] = {
          {
            classes = 1,
            firstRankId = 1591,
            id = 549,
            maxRank = 1,
            name = "Dauntless Perseverance",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 222,
                    name = "Stalwart Endurance",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["dead aim"] = {
          {
            classes = 32768,
            firstRankId = 1140,
            id = 370,
            maxRank = 3,
            name = "Dead Aim",
          },
        },
        ["dead man floating"] = {
          {
            classes = 1024,
            firstRankId = 7698,
            id = 7698,
            maxRank = 1,
            name = "Dead Man Floating",
          },
        },
        ["dead mesmerization"] = {
          {
            classes = 1024,
            firstRankId = 184,
            id = 69,
            maxRank = 3,
            name = "Dead Mesmerization",
          },
        },
        ["death bloom"] = {
          {
            classes = 1024,
            firstRankId = 7703,
            id = 7703,
            maxRank = 1,
            name = "Death Bloom",
          },
        },
        ["death peace"] = {
          {
            classes = 1040,
            firstRankId = 1272,
            id = 428,
            maxRank = 2,
            name = "Death Peace",
          },
        },
        ["death's effigy"] = {
          {
            classes = 1024,
            firstRankId = 13133,
            id = 773,
            maxRank = 1,
            name = "Death's Effigy",
          },
          {
            classes = 16,
            firstRankId = 7756,
            id = 7756,
            maxRank = 1,
            name = "Death's Effigy",
          },
        },
        ["death's fury"] = {
          {
            classes = 1040,
            firstRankId = 834,
            id = 278,
            maxRank = 5,
            name = "Death's Fury",
          },
        },
        ["death's malaise"] = {
          {
            classes = 1024,
            firstRankId = 14321,
            id = 350,
            maxRank = 1,
            name = "Death's Malaise",
          },
        },
        ["death's revenge"] = {
          {
            classes = 16,
            firstRankId = 6630,
            id = 820,
            maxRank = 11,
            name = "Death's Revenge",
            prerequisiteRules = {
              {
                maxRank = 11,
                minRank = 1,
                requires = {
                  {
                    id = 278,
                    name = "Death's Fury",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["death's wrath"] = {
          {
            classes = 1024,
            firstRankId = 5264,
            id = 665,
            maxRank = 24,
            name = "Death's Wrath",
            prerequisiteRules = {
              {
                maxRank = 24,
                minRank = 1,
                requires = {
                  {
                    id = 278,
                    name = "Death's Fury",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["deathly pact"] = {
          {
            classes = 1040,
            firstRankId = 976,
            id = 7105,
            maxRank = 1,
            name = "Deathly Pact",
          },
        },
        decapitation = {
          {
            classes = 32768,
            firstRankId = 14200,
            id = 133,
            maxRank = 1,
            name = "Decapitation",
          },
        },
        ["deep sleep"] = {
          {
            classes = 8192,
            firstRankId = 1572,
            id = 545,
            maxRank = 9,
            name = "Deep Sleep",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 263,
                    name = "Mesmerization Mastery",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        desperation = {
          {
            classes = 32768,
            firstRankId = 1149,
            id = 373,
            maxRank = 1,
            name = "Desperation",
          },
        },
        ["destructive adept"] = {
          {
            classes = 2048,
            firstRankId = 15602,
            id = 1263,
            maxRank = 1,
            name = "Destructive Adept",
          },
        },
        ["destructive cascade"] = {
          {
            classes = 128,
            firstRankId = 6876,
            id = 942,
            maxRank = 10,
            name = "Destructive Cascade",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 259,
                    name = "Critical Affliction",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 9760,
            firstRankId = 6375,
            id = 3815,
            maxRank = 12,
            name = "Destructive Cascade",
          },
        },
        ["destructive force"] = {
          {
            classes = 64,
            firstRankId = 828,
            id = 276,
            maxRank = 4,
            name = "Destructive Force",
          },
        },
        ["dimensional armory"] = {
          {
            classes = 4096,
            firstRankId = 16001,
            id = 16001,
            maxRank = 1,
            name = "Dimensional Armory",
          },
        },
        ["dimensional instability"] = {
          {
            classes = 14336,
            firstRankId = 4943,
            id = 639,
            maxRank = 1,
            name = "Dimensional Instability",
          },
        },
        ["dimensional shield"] = {
          {
            classes = 2048,
            firstRankId = 12866,
            id = 492,
            maxRank = 2,
            name = "Dimensional Shield",
          },
        },
        ["diminutive companion"] = {
          {
            classes = 20480,
            firstRankId = 12941,
            id = 543,
            maxRank = 1,
            name = "Diminutive Companion",
          },
        },
        ["dire charm"] = {
          {
            classes = 8192,
            firstRankId = 145,
            id = 46,
            maxRank = 1,
            name = "Dire Charm",
          },
          {
            classes = 1024,
            firstRankId = 961,
            id = 318,
            maxRank = 1,
            name = "Dire Charm",
          },
        },
        ["dire charm (animal)"] = {
          {
            classes = 32,
            firstRankId = 960,
            id = 317,
            maxRank = 1,
            name = "Dire Charm (Animal)",
          },
        },
        ["dirge of the sleepwalker"] = {
          {
            classes = 128,
            firstRankId = 6200,
            id = 3701,
            maxRank = 7,
            name = "Dirge of the Sleepwalker",
          },
        },
        ["dirty fighting"] = {
          {
            classes = 256,
            firstRankId = 5022,
            id = 671,
            maxRank = 7,
            name = "Dirty Fighting",
          },
        },
        ["disruptive persecution"] = {
          {
            classes = 4,
            firstRankId = 7712,
            id = 7712,
            maxRank = 3,
            name = "Disruptive Persecution",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 3826,
                    name = "Force of Disruption",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["distant strike"] = {
          {
            classes = 64,
            firstRankId = 14372,
            id = 376,
            maxRank = 1,
            name = "Distant Strike",
          },
        },
        ["distraction attack"] = {
          {
            classes = 32768,
            firstRankId = 6932,
            id = 962,
            maxRank = 7,
            name = "Distraction Attack",
          },
        },
        ["divine arbitration"] = {
          {
            classes = 2,
            firstRankId = 507,
            id = 169,
            maxRank = 3,
            name = "Divine Arbitration",
          },
        },
        ["divine aura"] = {
          {
            classes = 4,
            firstRankId = 977,
            id = 7108,
            maxRank = 1,
            name = "Divine Aura",
          },
        },
        ["divine avatar"] = {
          {
            classes = 2,
            firstRankId = 746,
            id = 254,
            maxRank = 16,
            name = "Divine Avatar",
          },
        },
        ["divine call"] = {
          {
            classes = 4,
            firstRankId = 14081,
            id = 660,
            maxRank = 1,
            name = "Divine Call",
          },
        },
        ["divine guardian"] = {
          {
            classes = 2,
            firstRankId = 13385,
            id = 463,
            maxRank = 1,
            name = "Divine Guardian",
          },
        },
        ["divine peace"] = {
          {
            classes = 2,
            firstRankId = 13388,
            id = 464,
            maxRank = 1,
            name = "Divine Peace",
          },
        },
        ["divine resurrection"] = {
          {
            classes = 2,
            firstRankId = 129,
            id = 36,
            maxRank = 1,
            name = "Divine Resurrection",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 19,
                    name = "Healing Gift",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["divine retribution"] = {
          {
            classes = 2,
            firstRankId = 1195,
            id = 392,
            maxRank = 6,
            name = "Divine Retribution",
          },
        },
        ["divine steed"] = {
          {
            classes = 4,
            firstRankId = 1667,
            id = 1158,
            maxRank = 1,
            name = "Divine Steed",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 570,
                    name = "Valiant Steed",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["divine stun"] = {
          {
            classes = 4,
            firstRankId = 188,
            id = 73,
            maxRank = 7,
            name = "Divine Stun",
          },
        },
        ["domination mastery"] = {
          {
            classes = 128,
            firstRankId = 10332,
            id = 8203,
            maxRank = 2,
            name = "Domination Mastery",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 943,
                    name = "Total Domination",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        doppelganger = {
          {
            classes = 8192,
            firstRankId = 773,
            id = 261,
            maxRank = 13,
            name = "Doppelganger",
            prerequisiteRules = {
              {
                maxRank = 13,
                minRank = 1,
                requires = {
                  {
                    id = 217,
                    name = "Project Illusion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["doppelganger's beckon"] = {
          {
            classes = 8192,
            firstRankId = 5127,
            id = 617,
            maxRank = 3,
            name = "Doppelganger's Beckon",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 261,
                    name = "Doppelganger",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["double attack"] = {
          {
            classes = 512,
            firstRankId = 5366,
            id = 631,
            maxRank = 1,
            name = "Double Attack",
          },
        },
        ["dragon punch"] = {
          {
            classes = 64,
            firstRankId = 273,
            id = 116,
            maxRank = 1,
            name = "Dragon Punch",
          },
        },
        ["drape of shadows"] = {
          {
            classes = 4096,
            firstRankId = 8341,
            id = 8341,
            maxRank = 1,
            name = "Drape of Shadows",
          },
        },
        ["dread incarnate"] = {
          {
            classes = 1024,
            firstRankId = 7699,
            id = 7699,
            maxRank = 1,
            name = "Dread Incarnate",
          },
        },
        ["dreary deeds"] = {
          {
            classes = 8192,
            firstRankId = 13252,
            id = 753,
            maxRank = 1,
            name = "Dreary Deeds",
          },
        },
        ["druzzil's mystical blessing"] = {
          {
            classes = 2048,
            firstRankId = 12888,
            id = 508,
            maxRank = 1,
            name = "Druzzil's Mystical Blessing",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 305,
                    name = "Druzzil's Mystical Familiar",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["druzzil's mystical familiar"] = {
          {
            classes = 2048,
            firstRankId = 923,
            id = 305,
            maxRank = 5,
            name = "Druzzil's Mystical Familiar",
          },
        },
        ["dying blow"] = {
          {
            classes = 32768,
            firstRankId = 6938,
            id = 964,
            maxRank = 3,
            name = "Dying Blow",
          },
        },
        ["dying grasp"] = {
          {
            classes = 1024,
            firstRankId = 14322,
            id = 351,
            maxRank = 1,
            name = "Dying Grasp",
          },
        },
        ["e'ci's icy blessing"] = {
          {
            classes = 2048,
            firstRankId = 12886,
            id = 501,
            maxRank = 1,
            name = "E'ci's Icy Blessing",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 304,
                    name = "E'ci's Icy Familiar",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["e'ci's icy familiar"] = {
          {
            classes = 2048,
            firstRankId = 922,
            id = 304,
            maxRank = 5,
            name = "E'ci's Icy Familiar",
          },
        },
        ["echoing cries"] = {
          {
            classes = 32768,
            firstRankId = 1155,
            id = 375,
            maxRank = 3,
            name = "Echoing Cries",
          },
        },
        ["edict of command"] = {
          {
            classes = 8192,
            firstRankId = 1501,
            id = 521,
            maxRank = 7,
            name = "Edict of Command",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 46,
                    name = "Dire Charm",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        egress = {
          {
            classes = 32,
            firstRankId = 10502,
            id = 8602,
            maxRank = 2,
            name = "Egress",
          },
        },
        ["eldritch rune"] = {
          {
            classes = 8192,
            firstRankId = 517,
            id = 173,
            maxRank = 16,
            name = "Eldritch Rune",
          },
        },
        ["elemental agility"] = {
          {
            classes = 4096,
            firstRankId = 800,
            id = 268,
            maxRank = 3,
            name = "Elemental Agility",
          },
        },
        ["elemental alacrity"] = {
          {
            classes = 4096,
            firstRankId = 795,
            id = 267,
            maxRank = 26,
            name = "Elemental Alacrity",
          },
        },
        ["elemental durability"] = {
          {
            classes = 4096,
            firstRankId = 803,
            id = 269,
            maxRank = 3,
            name = "Elemental Durability",
          },
        },
        ["elemental form: air"] = {
          {
            classes = 4096,
            firstRankId = 177,
            id = 64,
            maxRank = 4,
            name = "Elemental Form: Air",
          },
        },
        ["elemental form: earth"] = {
          {
            classes = 4096,
            firstRankId = 174,
            id = 63,
            maxRank = 4,
            name = "Elemental Form: Earth",
          },
        },
        ["elemental form: fire"] = {
          {
            classes = 4096,
            firstRankId = 168,
            id = 61,
            maxRank = 4,
            name = "Elemental Form: Fire",
          },
        },
        ["elemental form: water"] = {
          {
            classes = 4096,
            firstRankId = 171,
            id = 62,
            maxRank = 4,
            name = "Elemental Form: Water",
          },
        },
        ["elemental fury"] = {
          {
            classes = 4096,
            firstRankId = 790,
            id = 266,
            maxRank = 26,
            name = "Elemental Fury",
          },
        },
        ["elemental pact"] = {
          {
            classes = 4096,
            firstRankId = 182,
            id = 67,
            maxRank = 1,
            name = "Elemental Pact",
          },
        },
        ["elemental union"] = {
          {
            classes = 4096,
            firstRankId = 13695,
            id = 390,
            maxRank = 1,
            name = "Elemental Union",
          },
        },
        ["elemental ward"] = {
          {
            classes = 4096,
            firstRankId = 15200,
            id = 2060,
            maxRank = 1,
            name = "Elemental Ward",
          },
        },
        ["embalmer's carapace"] = {
          {
            classes = 1024,
            firstRankId = 12778,
            id = 433,
            maxRank = 2,
            name = "Embalmer's Carapace",
          },
        },
        ["embrace the decay"] = {
          {
            classes = 1024,
            firstRankId = 13687,
            id = 764,
            maxRank = 1,
            name = "Embrace The Decay",
          },
        },
        ["empowered focus of arcanum"] = {
          {
            classes = 15904,
            firstRankId = 14690,
            id = 774,
            maxRank = 1,
            name = "Empowered Focus of Arcanum",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 756,
                    name = "Enlightened Focus of Arcanum",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["enchant alaran metal"] = {
          {
            classes = 8192,
            firstRankId = 13271,
            grantOnly = true,
            id = 708,
            maxRank = 1,
            name = "Enchant Alaran Metal",
          },
        },
        ["enchant cosgrite"] = {
          {
            classes = 8192,
            firstRankId = 7741,
            grantOnly = true,
            id = 3218,
            maxRank = 1,
            name = "Enchant Cosgrite",
          },
        },
        ["enchant dwerium"] = {
          {
            classes = 8192,
            firstRankId = 7732,
            grantOnly = true,
            id = 3206,
            maxRank = 1,
            name = "Enchant Dwerium",
          },
        },
        ["enchant feymetal"] = {
          {
            classes = 8192,
            firstRankId = 13260,
            grantOnly = true,
            id = 754,
            maxRank = 1,
            name = "Enchant Feymetal",
          },
        },
        ["enchant palladium"] = {
          {
            classes = 8192,
            firstRankId = 7735,
            grantOnly = true,
            id = 3208,
            maxRank = 1,
            name = "Enchant Palladium",
          },
        },
        ["enchant palladium trio"] = {
          {
            classes = 8192,
            firstRankId = 7736,
            grantOnly = true,
            id = 3203,
            maxRank = 1,
            name = "Enchant Palladium Trio",
          },
        },
        ["enchant planar alloy"] = {
          {
            classes = 8192,
            firstRankId = 14373,
            grantOnly = true,
            id = 1800,
            maxRank = 1,
            name = "Enchant Planar Alloy",
          },
        },
        ["enchant temporite"] = {
          {
            classes = 8192,
            firstRankId = 7739,
            grantOnly = true,
            id = 3209,
            maxRank = 1,
            name = "Enchant Temporite",
          },
        },
        ["encroaching darkness"] = {
          {
            classes = 1024,
            firstRankId = 6646,
            id = 826,
            maxRank = 1,
            name = "Encroaching Darkness",
          },
        },
        ["endless quiver"] = {
          {
            classes = 8,
            firstRankId = 205,
            id = 84,
            maxRank = 1,
            name = "Endless Quiver",
          },
        },
        ["enduring vision"] = {
          {
            classes = 256,
            firstRankId = 6666,
            id = 842,
            maxRank = 2,
            name = "Enduring Vision",
          },
        },
        ["enhanced area taunt"] = {
          {
            classes = 1,
            firstRankId = 8312,
            id = 132,
            maxRank = 1,
            name = "Enhanced Area Taunt",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 110,
                    name = "Area Taunt",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["enhanced forgetfulness"] = {
          {
            classes = 8192,
            firstRankId = 776,
            id = 262,
            maxRank = 5,
            name = "Enhanced Forgetfulness",
          },
          {
            classes = 128,
            firstRankId = 6882,
            id = 944,
            maxRank = 3,
            name = "Enhanced Forgetfulness",
          },
        },
        ["enhanced root"] = {
          {
            classes = 32,
            firstRankId = 144,
            id = 45,
            maxRank = 1,
            name = "Enhanced Root",
          },
        },
        ["enhanced thief's eyes"] = {
          {
            classes = 256,
            firstRankId = 8331,
            id = 8331,
            maxRank = 1,
            name = "Enhanced Thief's Eyes",
          },
        },
        ["enlightened focus of arcanum"] = {
          {
            classes = 15904,
            firstRankId = 13646,
            id = 756,
            maxRank = 1,
            name = "Enlightened Focus of Arcanum",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1668,
                    name = "Acute Focus of Arcanum",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        entrap = {
          {
            classes = 40,
            firstRankId = 645,
            id = 219,
            maxRank = 4,
            name = "Entrap",
          },
        },
        ["envenomed blades"] = {
          {
            classes = 256,
            firstRankId = 6328,
            id = 3515,
            maxRank = 11,
            name = "Envenomed Blades",
          },
        },
        escape = {
          {
            classes = 256,
            firstRankId = 243,
            id = 102,
            maxRank = 1,
            name = "Escape",
          },
        },
        ["ethereal manipulation"] = {
          {
            classes = 8192,
            firstRankId = 15490,
            id = 2207,
            maxRank = 1,
            name = "Ethereal Manipulation",
          },
        },
        ["etherium blades"] = {
          {
            classes = 256,
            firstRankId = 14129,
            id = 713,
            maxRank = 2,
            name = "Etherium Blades",
          },
        },
        everburn = {
          {
            classes = 32768,
            firstRankId = 15648,
            id = 1281,
            maxRank = 1,
            name = "Everburn",
          },
        },
        exodus = {
          {
            classes = 2080,
            firstRankId = 140,
            id = 43,
            maxRank = 1,
            name = "Exodus",
          },
        },
        ["expanding darkness"] = {
          {
            classes = 1024,
            firstRankId = 12782,
            id = 438,
            maxRank = 3,
            name = "Expanding Darkness",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 826,
                    name = "Encroaching Darkness",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["expertise of blades"] = {
          {
            classes = 256,
            firstRankId = 6668,
            id = 843,
            maxRank = 3,
            name = "Expertise of Blades",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 672,
                    name = "Ligament Slice",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["explosion of hatred"] = {
          {
            classes = 16,
            firstRankId = 6640,
            id = 822,
            maxRank = 2,
            name = "Explosion of Hatred",
          },
        },
        ["explosion of spite"] = {
          {
            classes = 16,
            firstRankId = 13165,
            id = 749,
            maxRank = 1,
            name = "Explosion of Spite",
          },
        },
        ["exquisite benediction"] = {
          {
            classes = 2,
            firstRankId = 749,
            id = 255,
            maxRank = 9,
            name = "Exquisite Benediction",
          },
        },
        ["extended blessing of the faithful"] = {
          {
            classes = 4,
            firstRankId = 15159,
            id = 2025,
            maxRank = 1,
            name = "Extended Blessing of the Faithful",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 770,
                    name = "Blessing of the Faithful",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended bloodlust"] = {
          {
            classes = 16384,
            firstRankId = 15414,
            id = 1237,
            maxRank = 1,
            name = "Extended Bloodlust",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 241,
                    name = "Bloodlust",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended burnout"] = {
          {
            classes = 4096,
            firstRankId = 1504,
            id = 522,
            maxRank = 9,
            name = "Extended Burnout",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 60,
                    name = "Frenzied Burnout",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended commanding voice"] = {
          {
            classes = 1,
            firstRankId = 11004,
            id = 9602,
            maxRank = 3,
            name = "Extended Commanding Voice",
          },
        },
        ["extended convergence of spirit"] = {
          {
            classes = 32,
            firstRankId = 12645,
            id = 394,
            maxRank = 1,
            name = "Extended Convergence of Spirit",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 519,
                    name = "Convergence of Spirits",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended crystalpalm"] = {
          {
            classes = 64,
            firstRankId = 7885,
            id = 408,
            maxRank = 2,
            name = "Extended Crystalpalm",
          },
        },
        ["extended dance of blades"] = {
          {
            classes = 128,
            firstRankId = 14179,
            id = 866,
            maxRank = 1,
            name = "Extended Dance of Blades",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 359,
                    name = "Dance of Blades",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended deftdance"] = {
          {
            classes = 128,
            firstRankId = 12709,
            id = 411,
            maxRank = 1,
            name = "Extended Deftdance",
          },
        },
        ["extended divine call"] = {
          {
            classes = 4,
            firstRankId = 15135,
            id = 2015,
            maxRank = 1,
            name = "Extended Divine Call",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 660,
                    name = "Divine Call",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended dreary deeds"] = {
          {
            classes = 8192,
            firstRankId = 14286,
            id = 295,
            maxRank = 1,
            name = "Extended Dreary Deeds",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 753,
                    name = "Dreary Deeds",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended encroaching darkness"] = {
          {
            classes = 1040,
            firstRankId = 15579,
            id = 1256,
            maxRank = 1,
            name = "Extended Encroaching Darkness",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 826,
                    name = "Encroaching Darkness",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended envenomed blades"] = {
          {
            classes = 256,
            firstRankId = 14144,
            id = 717,
            maxRank = 1,
            name = "Extended Envenomed Blades",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3515,
                    name = "Envenomed Blades",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended feralgia"] = {
          {
            classes = 16384,
            firstRankId = 12816,
            id = 448,
            maxRank = 1,
            name = "Extended Feralgia",
          },
        },
        ["extended fierce eye"] = {
          {
            classes = 128,
            firstRankId = 12720,
            id = 424,
            maxRank = 1,
            name = "Extended Fierce Eye",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3506,
                    name = "Fierce Eye",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended fire core"] = {
          {
            classes = 4096,
            firstRankId = 15226,
            id = 2079,
            maxRank = 1,
            name = "Extended Fire Core",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 621,
                    name = "Fire Core",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended frenzied stabbing discipline"] = {
          {
            classes = 256,
            firstRankId = 12603,
            id = 12603,
            maxRank = 1,
            name = "Extended Frenzied Stabbing Discipline",
          },
        },
        ["extended group bestial alignment"] = {
          {
            classes = 16384,
            firstRankId = 6988,
            id = 6988,
            maxRank = 4,
            name = "Extended Group Bestial Alignment",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 985,
                    name = "Group Bestial Alignment",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended havoc"] = {
          {
            classes = 32768,
            firstRankId = 10404,
            id = 8402,
            maxRank = 2,
            name = "Extended Havoc",
          },
        },
        ["extended healing frenzy"] = {
          {
            classes = 2,
            firstRankId = 15342,
            id = 2046,
            maxRank = 1,
            name = "Extended Healing Frenzy",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 8500,
                    name = "Healing Frenzy",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended heel of kanji"] = {
          {
            classes = 64,
            firstRankId = 12688,
            id = 401,
            maxRank = 1,
            name = "Extended Heel of Kanji",
          },
        },
        ["extended ice core"] = {
          {
            classes = 4096,
            firstRankId = 15229,
            id = 2080,
            maxRank = 1,
            name = "Extended Ice Core",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 623,
                    name = "Ice Core",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended impenetrable discipline"] = {
          {
            classes = 64,
            firstRankId = 10656,
            id = 8902,
            maxRank = 2,
            name = "Extended Impenetrable Discipline",
          },
        },
        ["extended languid bite"] = {
          {
            classes = 512,
            firstRankId = 8332,
            id = 8332,
            maxRank = 3,
            name = "Extended Languid Bite",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 861,
                    name = "Languid Bite",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended malosinete"] = {
          {
            classes = 4608,
            firstRankId = 12977,
            id = 604,
            maxRank = 6,
            name = "Extended Malosinete",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 1041,
                    name = "Malosinete",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended notes"] = {
          {
            classes = 128,
            firstRankId = 665,
            id = 227,
            maxRank = 9,
            name = "Extended Notes",
          },
        },
        ["extended outrider's attack"] = {
          {
            classes = 8,
            firstRankId = 14115,
            id = 664,
            maxRank = 1,
            name = "Extended Outrider's Attack",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 872,
                    name = "Outrider's Attack",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended pestilence"] = {
          {
            classes = 512,
            firstRankId = 10959,
            id = 9505,
            maxRank = 4,
            name = "Extended Pestilence",
          },
        },
        ["extended preservation of marr"] = {
          {
            classes = 4,
            firstRankId = 15155,
            id = 2023,
            maxRank = 1,
            name = "Extended Preservation of Marr",
          },
        },
        ["extended provocation for power"] = {
          {
            classes = 16,
            firstRankId = 15194,
            id = 2035,
            maxRank = 1,
            name = "Extended Provocation for Power",
          },
        },
        ["extended quick time"] = {
          {
            classes = 128,
            firstRankId = 12719,
            id = 419,
            maxRank = 1,
            name = "Extended Quick Time",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3702,
                    name = "Quick Time",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended resplendant glory"] = {
          {
            classes = 1,
            firstRankId = 15113,
            id = 2006,
            maxRank = 1,
            name = "Extended Resplendant Glory",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 130,
                    name = "Resplendent Glory",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended rumbling servant"] = {
          {
            classes = 4096,
            firstRankId = 7827,
            id = 3893,
            maxRank = 1,
            name = "Extended Rumbling Servant",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1404,
                    name = "Extended Swarm",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["extended sanctification"] = {
          {
            classes = 4,
            firstRankId = 15153,
            id = 2021,
            maxRank = 1,
            name = "Extended Sanctification",
          },
        },
        ["extended scaledfist"] = {
          {
            classes = 64,
            firstRankId = 12691,
            id = 402,
            maxRank = 1,
            name = "Extended Scaledfist",
          },
        },
        ["extended shared health"] = {
          {
            classes = 4096,
            firstRankId = 10610,
            id = 8802,
            maxRank = 3,
            name = "Extended Shared Health",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 265,
                    name = "Shared Health",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["extended shield of brilliance"] = {
          {
            classes = 4,
            firstRankId = 15158,
            id = 2024,
            maxRank = 1,
            name = "Extended Shield of Brilliance",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 657,
                    name = "Shield of Brilliance",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended shield reflect"] = {
          {
            classes = 1,
            firstRankId = 11003,
            id = 9601,
            maxRank = 1,
            name = "Extended Shield Reflect",
          },
        },
        ["extended silent casting"] = {
          {
            classes = 15360,
            firstRankId = 13667,
            id = 758,
            maxRank = 1,
            name = "Extended Silent Casting",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 500,
                    name = "Silent Casting",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended sloth"] = {
          {
            classes = 512,
            firstRankId = 10950,
            id = 9500,
            maxRank = 1,
            name = "Extended Sloth",
          },
        },
        ["extended speed focus"] = {
          {
            classes = 64,
            firstRankId = 7884,
            id = 407,
            maxRank = 2,
            name = "Extended Speed Focus",
          },
        },
        ["extended speed of the savior"] = {
          {
            classes = 4,
            firstRankId = 15154,
            id = 2022,
            maxRank = 1,
            name = "Extended Speed of the Savior",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 659,
                    name = "Speed of the Savior",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended spirit of the bear"] = {
          {
            classes = 32,
            firstRankId = 14259,
            id = 216,
            maxRank = 1,
            name = "Extended Spirit of the Bear",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 384,
                    name = "Spirit of the Bear",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended spirit of the wood"] = {
          {
            classes = 32,
            firstRankId = 12646,
            id = 383,
            maxRank = 1,
            name = "Extended Spirit of the Wood",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 185,
                    name = "Spirit of the Wood",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended spiritual blessing"] = {
          {
            classes = 512,
            firstRankId = 15358,
            id = 2050,
            maxRank = 1,
            name = "Extended Spiritual Blessing",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 151,
                    name = "Spiritual Blessing",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended stone core"] = {
          {
            classes = 4096,
            firstRankId = 15223,
            id = 2078,
            maxRank = 1,
            name = "Extended Stone Core",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 624,
                    name = "Stone Core",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended swarm"] = {
          {
            classes = 32306,
            firstRankId = 9506,
            id = 1404,
            maxRank = 4,
            name = "Extended Swarm",
          },
        },
        ["extended thousand blades"] = {
          {
            classes = 128,
            firstRankId = 14180,
            id = 867,
            maxRank = 1,
            name = "Extended Thousand Blades",
          },
        },
        ["extended trickery"] = {
          {
            classes = 256,
            firstRankId = 10389,
            id = 10389,
            maxRank = 3,
            name = "Extended Trickery",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 841,
                    name = "Sleight of Hand",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended vapor core"] = {
          {
            classes = 4096,
            firstRankId = 15220,
            id = 2077,
            maxRank = 1,
            name = "Extended Vapor Core",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 622,
                    name = "Vapor Core",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended vinelash cascade"] = {
          {
            classes = 32,
            firstRankId = 14254,
            id = 183,
            maxRank = 1,
            name = "Extended Vinelash Cascade",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 386,
                    name = "Nature's Fury",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["extended wild growth"] = {
          {
            classes = 544,
            firstRankId = 10792,
            id = 936,
            maxRank = 6,
            name = "Extended Wild Growth",
          },
        },
        ["extended zan fi's whistle"] = {
          {
            classes = 64,
            firstRankId = 14163,
            id = 719,
            maxRank = 1,
            name = "Extended Zan Fi's Whistle",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7001,
                    name = "Zan Fi's Whistle",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["eye gouge"] = {
          {
            classes = 64,
            firstRankId = 1358,
            id = 470,
            maxRank = 16,
            name = "Eye Gouge",
          },
        },
        ["fading memories"] = {
          {
            classes = 128,
            firstRankId = 630,
            id = 212,
            maxRank = 1,
            name = "Fading Memories",
          },
        },
        ["fear storm"] = {
          {
            classes = 1024,
            firstRankId = 185,
            id = 70,
            maxRank = 1,
            name = "Fear Storm",
          },
        },
        fearless = {
          {
            classes = 21,
            firstRankId = 195,
            id = 78,
            maxRank = 1,
            name = "Fearless",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 31,
                    name = "Fear Resistance",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["feigned minion"] = {
          {
            classes = 1024,
            firstRankId = 574,
            id = 193,
            maxRank = 4,
            name = "Feigned Minion",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 125,
                    name = "Pet Discipline",
                    points = 1,
                  },
                },
              },
            },
          },
          {
            classes = 16,
            firstRankId = 10903,
            id = 9401,
            maxRank = 3,
            name = "Feigned Minion",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 125,
                    name = "Pet Discipline",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["feral swipe"] = {
          {
            classes = 16384,
            firstRankId = 723,
            id = 247,
            maxRank = 6,
            name = "Feral Swipe",
          },
        },
        ["fervent blessing"] = {
          {
            classes = 4,
            firstRankId = 593,
            id = 200,
            maxRank = 4,
            name = "Fervent Blessing",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 6001,
                    name = "Lay on Hands",
                    points = 11,
                  },
                },
              },
            },
          },
        },
        ["field dressing"] = {
          {
            classes = 32769,
            firstRankId = 1611,
            id = 496,
            maxRank = 5,
            name = "Field Dressing",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 181,
                    name = "Mithaniel's Binding",
                    points = 2,
                  },
                },
              },
            },
          },
        },
        ["fierce eye"] = {
          {
            classes = 128,
            firstRankId = 5717,
            id = 3506,
            maxRank = 1,
            name = "Fierce Eye",
          },
        },
        ["fire core"] = {
          {
            classes = 4096,
            firstRankId = 4903,
            id = 621,
            maxRank = 6,
            name = "Fire Core",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 784,
                    name = "Heart of Flames",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["five point palm"] = {
          {
            classes = 64,
            firstRankId = 7875,
            id = 1012,
            maxRank = 7,
            name = "Five Point Palm",
          },
        },
        ["fixation of ro"] = {
          {
            classes = 32,
            firstRankId = 10425,
            id = 10425,
            maxRank = 1,
            name = "Fixation of Ro",
          },
        },
        ["flames of power"] = {
          {
            classes = 4096,
            firstRankId = 15232,
            id = 2081,
            maxRank = 1,
            name = "Flames of Power",
          },
        },
        ["flaming arrows"] = {
          {
            classes = 8,
            firstRankId = 872,
            id = 289,
            maxRank = 9,
            name = "Flaming Arrows",
          },
        },
        ["fleet of foot"] = {
          {
            classes = 128,
            firstRankId = 628,
            id = 211,
            maxRank = 2,
            name = "Fleet of Foot",
          },
        },
        ["flesh to bone"] = {
          {
            classes = 1024,
            firstRankId = 186,
            id = 71,
            maxRank = 1,
            name = "Flesh to Bone",
          },
        },
        ["flight of eagles"] = {
          {
            classes = 32,
            firstRankId = 10501,
            id = 8601,
            maxRank = 1,
            name = "Flight of Eagles",
          },
        },
        ["fluid march"] = {
          {
            classes = 128,
            firstRankId = 8314,
            id = 8314,
            maxRank = 4,
            name = "Fluid March",
          },
        },
        flurry = {
          {
            classes = 32769,
            firstRankId = 255,
            id = 108,
            maxRank = 19,
            name = "Flurry",
            prerequisiteRules = {
              {
                maxRank = 19,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 128,
            firstRankId = 6873,
            id = 941,
            maxRank = 10,
            name = "Flurry",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 3837,
                    name = "Burst of Power",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 20,
            firstRankId = 5806,
            id = 1669,
            maxRank = 8,
            name = "Flurry",
            prerequisiteRules = {
              {
                maxRank = 8,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 256,
            firstRankId = 7700,
            id = 7700,
            maxRank = 7,
            name = "Flurry",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["flurry of life"] = {
          {
            classes = 2,
            firstRankId = 6488,
            id = 6488,
            maxRank = 2,
            name = "Flurry of Life",
          },
        },
        ["focus of animus"] = {
          {
            classes = 16384,
            firstRankId = 10380,
            id = 8304,
            maxRank = 4,
            name = "Focus of Animus",
          },
        },
        ["focus of arcanum"] = {
          {
            classes = 15904,
            firstRankId = 8221,
            id = 1211,
            maxRank = 1,
            name = "Focus of Arcanum",
          },
        },
        ["focused celestial regeneration"] = {
          {
            classes = 2,
            firstRankId = 7951,
            id = 1065,
            maxRank = 9,
            name = "Focused Celestial Regeneration",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 19,
                    name = "Healing Gift",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["focused paragon of spirits"] = {
          {
            classes = 16384,
            firstRankId = 6380,
            id = 3817,
            maxRank = 10,
            name = "Focused Paragon of Spirits",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 128,
                    name = "Paragon of Spirit",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fog of memories"] = {
          {
            classes = 8192,
            firstRankId = 8038,
            id = 1124,
            maxRank = 2,
            name = "Fog of Memories",
          },
        },
        ["force of disruption"] = {
          {
            classes = 4,
            firstRankId = 5984,
            id = 3826,
            maxRank = 6,
            name = "Force of Disruption",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 702,
                    name = "Hand of Disruption",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["force of elements"] = {
          {
            classes = 4096,
            firstRankId = 10600,
            id = 8800,
            maxRank = 7,
            name = "Force of Elements",
          },
        },
        ["force of flame"] = {
          {
            classes = 2048,
            firstRankId = 15612,
            id = 1266,
            maxRank = 1,
            name = "Force of Flame",
          },
        },
        ["force of ice"] = {
          {
            classes = 2048,
            firstRankId = 15615,
            id = 1267,
            maxRank = 1,
            name = "Force of Ice",
          },
        },
        ["force of will"] = {
          {
            classes = 2048,
            firstRankId = 8072,
            id = 1154,
            maxRank = 7,
            name = "Force of Will",
          },
        },
        ["forceful banishment"] = {
          {
            classes = 8192,
            firstRankId = 10561,
            id = 8704,
            maxRank = 4,
            name = "Forceful Banishment",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 3551,
                    name = "Beguiler's Directed Banishment",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["fortified entanglement"] = {
          {
            classes = 2048,
            firstRankId = 8069,
            id = 1153,
            maxRank = 4,
            name = "Fortified Entanglement",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 160,
                    name = "Hastened Root",
                    points = 4,
                  },
                },
              },
            },
          },
        },
        ["fortified intervention"] = {
          {
            classes = 512,
            firstRankId = 6461,
            id = 3843,
            maxRank = 3,
            name = "Fortified Intervention",
          },
        },
        ["fortified survival"] = {
          {
            classes = 32,
            firstRankId = 6458,
            id = 3842,
            maxRank = 3,
            name = "Fortified Survival",
          },
        },
        ["frenzied axe of rallos"] = {
          {
            classes = 32768,
            firstRankId = 15555,
            id = 1249,
            maxRank = 1,
            name = "Frenzied Axe of Rallos",
          },
        },
        ["frenzied burnout"] = {
          {
            classes = 4096,
            firstRankId = 167,
            id = 60,
            maxRank = 6,
            name = "Frenzied Burnout",
          },
        },
        ["frenzied defense"] = {
          {
            classes = 32768,
            firstRankId = 1166,
            id = 371,
            maxRank = 6,
            name = "Frenzied Defense",
          },
        },
        ["frenzied devastation"] = {
          {
            classes = 2048,
            firstRankId = 931,
            id = 308,
            maxRank = 3,
            name = "Frenzied Devastation",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 23,
                    name = "Spell Casting Fury",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["frenzied swipes"] = {
          {
            classes = 16384,
            firstRankId = 15424,
            id = 1240,
            maxRank = 1,
            name = "Frenzied Swipes",
          },
        },
        ["frenzied volley"] = {
          {
            classes = 32768,
            firstRankId = 7818,
            id = 4002,
            maxRank = 2,
            name = "Frenzied Volley",
          },
        },
        ["frenzy of spirit"] = {
          {
            classes = 16384,
            firstRankId = 290,
            id = 127,
            maxRank = 2,
            name = "Frenzy of Spirit",
          },
        },
        ["frenzy of the dead"] = {
          {
            classes = 1024,
            firstRankId = 13693,
            id = 766,
            maxRank = 1,
            name = "Frenzy of the Dead",
          },
        },
        ["friendly stasis"] = {
          {
            classes = 8192,
            firstRankId = 10557,
            id = 8702,
            maxRank = 1,
            name = "Friendly Stasis",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1120,
                    name = "Self Stasis",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["frost arrows"] = {
          {
            classes = 8,
            firstRankId = 875,
            id = 290,
            maxRank = 9,
            name = "Frost Arrows",
          },
        },
        ["fundament of combat"] = {
          {
            classes = 1,
            firstRankId = 9208,
            id = 1312,
            maxRank = 9,
            name = "Fundament of Combat",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1400,
                    name = "Fundament: First Spire of the Warlord",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1401,
                    name = "Fundament: Second Spire of the Warlord",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 64,
            firstRankId = 9217,
            id = 1313,
            maxRank = 9,
            name = "Fundament of Combat",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1360,
                    name = "Fundament: First Spire of the Sensei",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1361,
                    name = "Fundament: Second Spire of the Sensei",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 32768,
            firstRankId = 9226,
            id = 1314,
            maxRank = 9,
            name = "Fundament of Combat",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1500,
                    name = "Fundament: First Spire of Savagery",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1501,
                    name = "Fundament: Second Spire of Savagery",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 256,
            firstRankId = 9235,
            id = 1315,
            maxRank = 9,
            name = "Fundament of Combat",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1410,
                    name = "Fundament: First Spire of the Rake",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1411,
                    name = "Fundament: Second Spire of the Rake",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament of intellect"] = {
          {
            classes = 2048,
            firstRankId = 9100,
            id = 1300,
            maxRank = 9,
            name = "Fundament of Intellect",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1350,
                    name = "Fundament: First Spire of Arcanum",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1351,
                    name = "Fundament: Second Spire of Arcanum",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 1024,
            firstRankId = 9109,
            id = 1301,
            maxRank = 9,
            name = "Fundament of Intellect",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1390,
                    name = "Fundament: First Spire of Necromancy",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1391,
                    name = "Fundament: Second Spire of Necromancy",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 4096,
            firstRankId = 9118,
            id = 1302,
            maxRank = 9,
            name = "Fundament of Intellect",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1370,
                    name = "Fundament: First Spire of the Elements",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1371,
                    name = "Fundament: Second Spire of the Elements",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 8192,
            firstRankId = 9127,
            id = 1303,
            maxRank = 9,
            name = "Fundament of Intellect",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1380,
                    name = "Fundament: First Spire of Enchantment",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1381,
                    name = "Fundament: Second Spire of Enchantment",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament of power"] = {
          {
            classes = 8,
            firstRankId = 9163,
            id = 1307,
            maxRank = 9,
            name = "Fundament of Power",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1460,
                    name = "Fundament: First Spire of the Pathfinders",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1461,
                    name = "Fundament: Second Spire of the Pathfinders",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 16,
            firstRankId = 9172,
            id = 1308,
            maxRank = 9,
            name = "Fundament of Power",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1450,
                    name = "Fundament: First Spire of the Reavers",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1451,
                    name = "Fundament: Second Spire of the Reavers",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 4,
            firstRankId = 9181,
            id = 1309,
            maxRank = 9,
            name = "Fundament of Power",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1440,
                    name = "Fundament: First Spire of Holiness",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1441,
                    name = "Fundament: Second Spire of Holiness",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 128,
            firstRankId = 9190,
            id = 1310,
            maxRank = 9,
            name = "Fundament of Power",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1420,
                    name = "Fundament: First Spire of the Minstrels",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1421,
                    name = "Fundament: Second Spire of the Minstrels",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 16384,
            firstRankId = 9199,
            id = 1311,
            maxRank = 9,
            name = "Fundament of Power",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1430,
                    name = "Fundament: First Spire of the Savage Lord",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1431,
                    name = "Fundament: Second Spire of the Savage Lord",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament of wisdom"] = {
          {
            classes = 2,
            firstRankId = 9136,
            id = 1304,
            maxRank = 9,
            name = "Fundament of Wisdom",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1470,
                    name = "Fundament: First Spire of Divinity",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1471,
                    name = "Fundament: Second Spire of Divinity",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 32,
            firstRankId = 9145,
            id = 1305,
            maxRank = 9,
            name = "Fundament of Wisdom",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1480,
                    name = "Fundament: First Spire of Nature",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1481,
                    name = "Fundament: Second Spire of Nature",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 512,
            firstRankId = 9154,
            id = 1306,
            maxRank = 9,
            name = "Fundament of Wisdom",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 4,
                requires = {
                  {
                    id = 1490,
                    name = "Fundament: First Spire of Ancestors",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 9,
                minRank = 7,
                requires = {
                  {
                    id = 1491,
                    name = "Fundament: Second Spire of Ancestors",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of ancestors"] = {
          {
            classes = 512,
            firstRankId = 9426,
            id = 1490,
            maxRank = 3,
            name = "Fundament: First Spire of Ancestors",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1306,
                    name = "Fundament of Wisdom",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of arcanum"] = {
          {
            classes = 2048,
            firstRankId = 9300,
            id = 1350,
            maxRank = 3,
            name = "Fundament: First Spire of Arcanum",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 2,
                requires = {
                  {
                    id = 1300,
                    name = "Fundament of Intellect",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of divinity"] = {
          {
            classes = 2,
            firstRankId = 9408,
            id = 1470,
            maxRank = 3,
            name = "Fundament: First Spire of Divinity",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1304,
                    name = "Fundament of Wisdom",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of enchantment"] = {
          {
            classes = 8192,
            firstRankId = 9327,
            id = 1380,
            maxRank = 3,
            name = "Fundament: First Spire of Enchantment",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1303,
                    name = "Fundament of Intellect",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of holiness"] = {
          {
            classes = 4,
            firstRankId = 9381,
            id = 1440,
            maxRank = 3,
            name = "Fundament: First Spire of Holiness",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1309,
                    name = "Fundament of Power",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of nature"] = {
          {
            classes = 32,
            firstRankId = 9417,
            id = 1480,
            maxRank = 3,
            name = "Fundament: First Spire of Nature",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1305,
                    name = "Fundament of Wisdom",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of necromancy"] = {
          {
            classes = 1024,
            firstRankId = 9336,
            id = 1390,
            maxRank = 3,
            name = "Fundament: First Spire of Necromancy",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1301,
                    name = "Fundament of Intellect",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of savagery"] = {
          {
            classes = 32768,
            firstRankId = 9435,
            id = 1500,
            maxRank = 3,
            name = "Fundament: First Spire of Savagery",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1314,
                    name = "Fundament of Combat",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the elements"] = {
          {
            classes = 4096,
            firstRankId = 9318,
            id = 1370,
            maxRank = 3,
            name = "Fundament: First Spire of the Elements",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1302,
                    name = "Fundament of Intellect",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the minstrels"] = {
          {
            classes = 128,
            firstRankId = 9363,
            id = 1420,
            maxRank = 3,
            name = "Fundament: First Spire of the Minstrels",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1310,
                    name = "Fundament of Power",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the pathfinders"] = {
          {
            classes = 8,
            firstRankId = 9399,
            id = 1460,
            maxRank = 3,
            name = "Fundament: First Spire of the Pathfinders",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1307,
                    name = "Fundament of Power",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the rake"] = {
          {
            classes = 256,
            firstRankId = 9354,
            id = 1410,
            maxRank = 4,
            name = "Fundament: First Spire of the Rake",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1315,
                    name = "Fundament of Combat",
                    points = 3,
                  },
                },
              },
              {
                maxRank = 4,
                minRank = 4,
                requires = {
                  {
                    id = 1410,
                    name = "Fundament: First Spire of the Rake",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the reavers"] = {
          {
            classes = 16,
            firstRankId = 9390,
            id = 1450,
            maxRank = 3,
            name = "Fundament: First Spire of the Reavers",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1308,
                    name = "Fundament of Power",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the savage lord"] = {
          {
            classes = 16384,
            firstRankId = 9372,
            id = 1430,
            maxRank = 3,
            name = "Fundament: First Spire of the Savage Lord",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1311,
                    name = "Fundament of Power",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the sensei"] = {
          {
            classes = 64,
            firstRankId = 9309,
            id = 1360,
            maxRank = 3,
            name = "Fundament: First Spire of the Sensei",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1313,
                    name = "Fundament of Combat",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: first spire of the warlord"] = {
          {
            classes = 1,
            firstRankId = 9345,
            id = 1400,
            maxRank = 3,
            name = "Fundament: First Spire of the Warlord",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1312,
                    name = "Fundament of Combat",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of ancestors"] = {
          {
            classes = 512,
            firstRankId = 9429,
            id = 1491,
            maxRank = 3,
            name = "Fundament: Second Spire of Ancestors",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1306,
                    name = "Fundament of Wisdom",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of arcanum"] = {
          {
            classes = 2048,
            firstRankId = 9303,
            id = 1351,
            maxRank = 3,
            name = "Fundament: Second Spire of Arcanum",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1300,
                    name = "Fundament of Intellect",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of divinity"] = {
          {
            classes = 2,
            firstRankId = 9411,
            id = 1471,
            maxRank = 3,
            name = "Fundament: Second Spire of Divinity",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1304,
                    name = "Fundament of Wisdom",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of enchantment"] = {
          {
            classes = 8192,
            firstRankId = 9330,
            id = 1381,
            maxRank = 3,
            name = "Fundament: Second Spire of Enchantment",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1303,
                    name = "Fundament of Intellect",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of holiness"] = {
          {
            classes = 4,
            firstRankId = 9384,
            id = 1441,
            maxRank = 3,
            name = "Fundament: Second Spire of Holiness",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1309,
                    name = "Fundament of Power",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of nature"] = {
          {
            classes = 32,
            firstRankId = 9420,
            id = 1481,
            maxRank = 3,
            name = "Fundament: Second Spire of Nature",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1305,
                    name = "Fundament of Wisdom",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of necromancy"] = {
          {
            classes = 1024,
            firstRankId = 9339,
            id = 1391,
            maxRank = 3,
            name = "Fundament: Second Spire of Necromancy",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1301,
                    name = "Fundament of Intellect",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of savagery"] = {
          {
            classes = 32768,
            firstRankId = 9438,
            id = 1501,
            maxRank = 3,
            name = "Fundament: Second Spire of Savagery",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1314,
                    name = "Fundament of Combat",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the elements"] = {
          {
            classes = 4096,
            firstRankId = 9321,
            id = 1371,
            maxRank = 3,
            name = "Fundament: Second Spire of the Elements",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1302,
                    name = "Fundament of Intellect",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the minstrels"] = {
          {
            classes = 128,
            firstRankId = 9366,
            id = 1421,
            maxRank = 3,
            name = "Fundament: Second Spire of the Minstrels",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1310,
                    name = "Fundament of Power",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the pathfinders"] = {
          {
            classes = 8,
            firstRankId = 9402,
            id = 1461,
            maxRank = 3,
            name = "Fundament: Second Spire of the Pathfinders",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1307,
                    name = "Fundament of Power",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the rake"] = {
          {
            classes = 256,
            firstRankId = 9357,
            id = 1411,
            maxRank = 4,
            name = "Fundament: Second Spire of the Rake",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1315,
                    name = "Fundament of Combat",
                    points = 6,
                  },
                },
              },
              {
                maxRank = 4,
                minRank = 4,
                requires = {
                  {
                    id = 1411,
                    name = "Fundament: Second Spire of the Rake",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the reavers"] = {
          {
            classes = 16,
            firstRankId = 9393,
            id = 1451,
            maxRank = 3,
            name = "Fundament: Second Spire of the Reavers",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1308,
                    name = "Fundament of Power",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the savage lord"] = {
          {
            classes = 16384,
            firstRankId = 9375,
            id = 1431,
            maxRank = 3,
            name = "Fundament: Second Spire of the Savage Lord",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1311,
                    name = "Fundament of Power",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the sensei"] = {
          {
            classes = 64,
            firstRankId = 9312,
            id = 1361,
            maxRank = 3,
            name = "Fundament: Second Spire of the Sensei",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1313,
                    name = "Fundament of Combat",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: second spire of the warlord"] = {
          {
            classes = 1,
            firstRankId = 9348,
            id = 1401,
            maxRank = 3,
            name = "Fundament: Second Spire of the Warlord",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1312,
                    name = "Fundament of Combat",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of ancestors"] = {
          {
            classes = 512,
            firstRankId = 9432,
            id = 1492,
            maxRank = 3,
            name = "Fundament: Third Spire of Ancestors",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1306,
                    name = "Fundament of Wisdom",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of arcanum"] = {
          {
            classes = 2048,
            firstRankId = 9306,
            id = 1352,
            maxRank = 3,
            name = "Fundament: Third Spire of Arcanum",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1300,
                    name = "Fundament of Intellect",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of divinity"] = {
          {
            classes = 2,
            firstRankId = 9414,
            id = 1472,
            maxRank = 3,
            name = "Fundament: Third Spire of Divinity",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1304,
                    name = "Fundament of Wisdom",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of enchantment"] = {
          {
            classes = 8192,
            firstRankId = 9333,
            id = 1382,
            maxRank = 3,
            name = "Fundament: Third Spire of Enchantment",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1303,
                    name = "Fundament of Intellect",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of holiness"] = {
          {
            classes = 4,
            firstRankId = 9387,
            id = 1442,
            maxRank = 3,
            name = "Fundament: Third Spire of Holiness",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1309,
                    name = "Fundament of Power",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of nature"] = {
          {
            classes = 32,
            firstRankId = 9423,
            id = 1482,
            maxRank = 3,
            name = "Fundament: Third Spire of Nature",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1305,
                    name = "Fundament of Wisdom",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of necromancy"] = {
          {
            classes = 1024,
            firstRankId = 9342,
            id = 1392,
            maxRank = 3,
            name = "Fundament: Third Spire of Necromancy",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1301,
                    name = "Fundament of Intellect",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of savagery"] = {
          {
            classes = 32768,
            firstRankId = 9441,
            id = 1502,
            maxRank = 3,
            name = "Fundament: Third Spire of Savagery",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1314,
                    name = "Fundament of Combat",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the elements"] = {
          {
            classes = 4096,
            firstRankId = 9324,
            id = 1372,
            maxRank = 3,
            name = "Fundament: Third Spire of the Elements",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1302,
                    name = "Fundament of Intellect",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the minstrels"] = {
          {
            classes = 128,
            firstRankId = 9369,
            id = 1422,
            maxRank = 3,
            name = "Fundament: Third Spire of the Minstrels",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1310,
                    name = "Fundament of Power",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the pathfinders"] = {
          {
            classes = 8,
            firstRankId = 9405,
            id = 1462,
            maxRank = 3,
            name = "Fundament: Third Spire of the Pathfinders",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1307,
                    name = "Fundament of Power",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the rake"] = {
          {
            classes = 256,
            firstRankId = 9360,
            id = 1412,
            maxRank = 4,
            name = "Fundament: Third Spire of the Rake",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1315,
                    name = "Fundament of Combat",
                    points = 9,
                  },
                },
              },
              {
                maxRank = 4,
                minRank = 4,
                requires = {
                  {
                    id = 1412,
                    name = "Fundament: Third Spire of the Rake",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the reavers"] = {
          {
            classes = 16,
            firstRankId = 9396,
            id = 1452,
            maxRank = 3,
            name = "Fundament: Third Spire of the Reavers",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1308,
                    name = "Fundament of Power",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the savage lord"] = {
          {
            classes = 16384,
            firstRankId = 9378,
            id = 1432,
            maxRank = 3,
            name = "Fundament: Third Spire of the Savage Lord",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1311,
                    name = "Fundament of Power",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the sensei"] = {
          {
            classes = 64,
            firstRankId = 9315,
            id = 1362,
            maxRank = 3,
            name = "Fundament: Third Spire of the Sensei",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1313,
                    name = "Fundament of Combat",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["fundament: third spire of the warlord"] = {
          {
            classes = 1,
            firstRankId = 9351,
            id = 1402,
            maxRank = 3,
            name = "Fundament: Third Spire of the Warlord",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 1312,
                    name = "Fundament of Combat",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["funeral dirge"] = {
          {
            classes = 128,
            firstRankId = 5298,
            id = 777,
            maxRank = 16,
            name = "Funeral Dirge",
          },
        },
        ["funeral pyre"] = {
          {
            classes = 1024,
            firstRankId = 14360,
            id = 710,
            maxRank = 1,
            name = "Funeral Pyre",
          },
        },
        ["furious leap"] = {
          {
            classes = 32769,
            firstRankId = 6499,
            id = 3899,
            maxRank = 1,
            name = "Furious Leap",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 611,
                    name = "Battle Leap",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["furious rampage"] = {
          {
            classes = 32768,
            firstRankId = 15567,
            id = 1251,
            maxRank = 1,
            name = "Furious Rampage",
          },
        },
        ["furious refrain"] = {
          {
            classes = 128,
            firstRankId = 10627,
            id = 918,
            maxRank = 3,
            name = "Furious Refrain",
          },
        },
        ["fury of druzzil"] = {
          {
            classes = 2048,
            firstRankId = 8060,
            id = 1150,
            maxRank = 7,
            name = "Fury of Druzzil",
          },
        },
        ["fury of eci"] = {
          {
            classes = 2048,
            firstRankId = 8063,
            id = 1151,
            maxRank = 7,
            name = "Fury of Eci",
          },
        },
        ["fury of kerafyrm"] = {
          {
            classes = 2048,
            firstRankId = 13670,
            id = 759,
            maxRank = 1,
            name = "Fury of Kerafyrm",
          },
        },
        ["fury of ro"] = {
          {
            classes = 2048,
            firstRankId = 8066,
            id = 1152,
            maxRank = 7,
            name = "Fury of Ro",
          },
        },
        ["gather mana"] = {
          {
            classes = 8192,
            firstRankId = 162,
            id = 57,
            maxRank = 1,
            name = "Gather Mana",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 224,
                    name = "Mental Clarity",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["gathering dusk"] = {
          {
            classes = 1024,
            firstRankId = 4927,
            id = 629,
            maxRank = 3,
            name = "Gathering Dusk",
          },
        },
        ["gelid rending"] = {
          {
            classes = 16384,
            firstRankId = 12846,
            id = 459,
            maxRank = 1,
            name = "Gelid Rending",
          },
        },
        ["gift of deathly resolve"] = {
          {
            classes = 1024,
            firstRankId = 14359,
            id = 677,
            maxRank = 1,
            name = "Gift of Deathly Resolve",
          },
        },
        ["gift of life"] = {
          {
            classes = 4,
            firstRankId = 10354,
            id = 3676,
            maxRank = 2,
            name = "Gift of Life",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 6001,
                    name = "Lay on Hands",
                    points = 17,
                  },
                },
              },
            },
          },
        },
        ["gift of resurrection"] = {
          {
            classes = 4,
            firstRankId = 6222,
            id = 3711,
            maxRank = 1,
            name = "Gift of Resurrection",
          },
        },
        ["gift of sylvan spirits"] = {
          {
            classes = 32,
            firstRankId = 14249,
            id = 179,
            maxRank = 1,
            name = "Gift of Sylvan Spirits",
          },
        },
        ["gift of the grave"] = {
          {
            classes = 1024,
            firstRankId = 6828,
            id = 905,
            maxRank = 3,
            name = "Gift of the Grave",
          },
        },
        ["gift of the quick spear"] = {
          {
            classes = 16,
            firstRankId = 15193,
            id = 2034,
            maxRank = 1,
            name = "Gift of the Quick Spear",
          },
        },
        ["glacial arrow"] = {
          {
            classes = 8,
            firstRankId = 13549,
            id = 260,
            maxRank = 1,
            name = "Glacial Arrow",
          },
        },
        ["glyph spray"] = {
          {
            classes = 8192,
            firstRankId = 12939,
            id = 578,
            maxRank = 1,
            name = "Glyph Spray",
          },
        },
        ["gorilla smash"] = {
          {
            classes = 16384,
            firstRankId = 6986,
            id = 988,
            maxRank = 4,
            name = "Gorilla Smash",
          },
        },
        ["gracious gift of mana"] = {
          {
            classes = 8192,
            firstRankId = 15485,
            id = 2204,
            maxRank = 1,
            name = "Gracious Gift of Mana",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 495,
                    name = "Gift of Mana",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["grappling strike"] = {
          {
            classes = 65,
            firstRankId = 4836,
            id = 601,
            maxRank = 1,
            name = "Grappling Strike",
          },
        },
        ["grasp of sylvan spirits"] = {
          {
            classes = 8,
            firstRankId = 13571,
            id = 584,
            maxRank = 1,
            name = "Grasp of Sylvan Spirits",
          },
        },
        graverobbing = {
          {
            classes = 1024,
            firstRankId = 1511,
            id = 525,
            maxRank = 6,
            name = "Graverobbing",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 175,
                    name = "Wake the Dead",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["greater blood tithe"] = {
          {
            classes = 1024,
            firstRankId = 4924,
            id = 628,
            maxRank = 6,
            name = "Greater Blood Tithe",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 740,
                    name = "Blood Tithe",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["greater mass enchant palladium"] = {
          {
            classes = 8192,
            firstRankId = 7738,
            grantOnly = true,
            id = 3205,
            maxRank = 1,
            name = "Greater Mass Enchant Palladium",
          },
        },
        ["group armor of the inquisitor"] = {
          {
            classes = 4,
            firstRankId = 15147,
            id = 2019,
            maxRank = 1,
            name = "Group Armor of the Inquisitor",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 701,
                    name = "Armor of the Inquisitor",
                    points = 13,
                  },
                },
              },
            },
          },
        },
        ["group bestial alignment"] = {
          {
            classes = 16384,
            firstRankId = 6983,
            id = 985,
            maxRank = 2,
            name = "Group Bestial Alignment",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 245,
                    name = "Bestial Alignment",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["group guardian of the forest"] = {
          {
            classes = 8,
            firstRankId = 6755,
            id = 873,
            maxRank = 4,
            name = "Group Guardian of the Forest",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 184,
                    name = "Guardian of the Forest",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["group pact of the wolf"] = {
          {
            classes = 512,
            firstRankId = 12992,
            id = 619,
            maxRank = 4,
            name = "Group Pact of the Wolf",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 707,
                    name = "Pact of the Wolf",
                    points = 4,
                  },
                },
              },
            },
          },
        },
        ["group perfected invisibility"] = {
          {
            classes = 14336,
            firstRankId = 8220,
            id = 1210,
            maxRank = 1,
            name = "Group Perfected Invisibility",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3812,
                    name = "Perfected Invisibility",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["group perfected invisibility to undead"] = {
          {
            classes = 14336,
            firstRankId = 14281,
            id = 280,
            maxRank = 1,
            name = "Group Perfected Invisibility to Undead",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 291,
                    name = "Perfected Invisibility to Undead",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["group purify soul"] = {
          {
            classes = 2,
            firstRankId = 7944,
            id = 1062,
            maxRank = 1,
            name = "Group Purify Soul",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 41,
                    name = "Purify Soul",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["group shrink"] = {
          {
            classes = 16896,
            firstRankId = 10957,
            id = 9503,
            maxRank = 1,
            name = "Group Shrink",
          },
        },
        ["group silent presence"] = {
          {
            classes = 512,
            firstRankId = 13009,
            id = 630,
            maxRank = 1,
            name = "Group Silent Presence",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3730,
                    name = "Silent Presence",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["group spirit of the black wolf"] = {
          {
            classes = 32,
            firstRankId = 10397,
            id = 10397,
            maxRank = 2,
            name = "Group Spirit of the Black Wolf",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 1092,
                    name = "Spirit of the Black Wolf",
                    points = 4,
                  },
                },
              },
            },
          },
        },
        ["group spirit of the white wolf"] = {
          {
            classes = 32,
            firstRankId = 10396,
            id = 10396,
            maxRank = 2,
            name = "Group Spirit of the White Wolf",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 705,
                    name = "Spirit of the White Wolf",
                    points = 4,
                  },
                },
              },
            },
          },
        },
        ["group spirit walk"] = {
          {
            classes = 512,
            firstRankId = 13008,
            id = 627,
            maxRank = 1,
            name = "Group Spirit Walk",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 859,
                    name = "Spirit Walk",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["guardian of the forest"] = {
          {
            classes = 8,
            firstRankId = 545,
            id = 184,
            maxRank = 18,
            name = "Guardian of the Forest",
          },
        },
        ["gut punch"] = {
          {
            classes = 1,
            firstRankId = 6286,
            id = 3732,
            maxRank = 4,
            name = "Gut Punch",
          },
        },
        ["hallowed steed"] = {
          {
            classes = 4,
            firstRankId = 13673,
            id = 1503,
            maxRank = 1,
            name = "Hallowed Steed",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1158,
                    name = "Divine Steed",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["halt the dead"] = {
          {
            classes = 4,
            firstRankId = 6794,
            id = 892,
            maxRank = 1,
            name = "Halt the Dead",
          },
        },
        ["hand of death"] = {
          {
            classes = 1024,
            firstRankId = 15582,
            id = 1257,
            maxRank = 1,
            name = "Hand of Death",
          },
        },
        ["hand of disruption"] = {
          {
            classes = 4,
            firstRankId = 5098,
            id = 702,
            maxRank = 1,
            name = "Hand of Disruption",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 73,
                    name = "Divine Stun",
                    points = 2,
                  },
                },
              },
            },
          },
        },
        ["hand of piety"] = {
          {
            classes = 4,
            firstRankId = 534,
            id = 180,
            maxRank = 25,
            name = "Hand of Piety",
            prerequisiteRules = {
              {
                maxRank = 25,
                minRank = 1,
                requires = {
                  {
                    id = 6001,
                    name = "Lay on Hands",
                    points = 11,
                  },
                },
              },
            },
          },
        },
        ["hand of ro"] = {
          {
            classes = 32,
            firstRankId = 10424,
            id = 10424,
            maxRank = 1,
            name = "Hand of Ro",
          },
        },
        ["harm touch"] = {
          {
            classes = 16,
            firstRankId = 7800,
            id = 6000,
            maxRank = 21,
            name = "Harm Touch",
          },
        },
        ["harmonious arrow"] = {
          {
            classes = 8,
            firstRankId = 6750,
            id = 870,
            maxRank = 2,
            name = "Harmonious Arrow",
          },
        },
        ["harmonious attack"] = {
          {
            classes = 128,
            firstRankId = 556,
            id = 187,
            maxRank = 11,
            name = "Harmonious Attack",
          },
        },
        ["harmony of battle"] = {
          {
            classes = 64,
            firstRankId = 15432,
            id = 1233,
            maxRank = 1,
            name = "Harmony of Battle",
          },
        },
        harmshield = {
          {
            classes = 1040,
            firstRankId = 6635,
            id = 821,
            maxRank = 1,
            name = "Harmshield",
          },
        },
        ["harvest of druzzil"] = {
          {
            classes = 2048,
            firstRankId = 516,
            id = 172,
            maxRank = 5,
            name = "Harvest of Druzzil",
          },
        },
        ["hastened absolution"] = {
          {
            classes = 32768,
            firstRankId = 13067,
            id = 644,
            maxRank = 1,
            name = "Hastened Absolution",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 643,
                    name = "Agony of Absolution",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened ancestral aid"] = {
          {
            classes = 512,
            firstRankId = 10951,
            id = 9501,
            maxRank = 4,
            name = "Hastened Ancestral Aid",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 447,
                    name = "Ancestral Aid",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened armor of the inquisitor"] = {
          {
            classes = 4,
            firstRankId = 14091,
            id = 721,
            maxRank = 1,
            name = "Hastened Armor of the Inquisitor",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 701,
                    name = "Armor of the Inquisitor",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened assassination disciplines"] = {
          {
            classes = 256,
            firstRankId = 14135,
            id = 714,
            maxRank = 1,
            name = "Hastened Assassination Disciplines",
          },
        },
        ["hastened atonement"] = {
          {
            classes = 2,
            firstRankId = 10459,
            id = 8503,
            maxRank = 3,
            name = "Hastened Atonement",
          },
        },
        ["hastened auspice of the hunter"] = {
          {
            classes = 8,
            firstRankId = 10800,
            id = 9200,
            maxRank = 4,
            name = "Hastened Auspice of the Hunter",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 462,
                    name = "Auspice of the Hunter",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened barbed tongue"] = {
          {
            classes = 1,
            firstRankId = 15123,
            id = 2009,
            maxRank = 1,
            name = "Hastened Barbed Tongue",
          },
        },
        ["hastened bazu roar"] = {
          {
            classes = 1,
            firstRankId = 13908,
            id = 1681,
            maxRank = 1,
            name = "Hastened Bazu Roar",
          },
        },
        ["hastened beacon of the righteous"] = {
          {
            classes = 4,
            firstRankId = 14011,
            id = 1025,
            maxRank = 1,
            name = "Hastened Beacon of the Righteous",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 10394,
                    name = "Beacon of the Righteous",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened bellow"] = {
          {
            classes = 128,
            firstRankId = 8319,
            id = 8319,
            maxRank = 3,
            name = "Hastened Bellow",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 199,
                    name = "Boastful Bellow",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened berserking disciplines"] = {
          {
            classes = 32768,
            firstRankId = 14203,
            id = 134,
            maxRank = 1,
            name = "Hastened Berserking Disciplines",
          },
        },
        ["hastened bestial alignment"] = {
          {
            classes = 16384,
            firstRankId = 6209,
            id = 3706,
            maxRank = 5,
            name = "Hastened Bestial Alignment",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 245,
                    name = "Bestial Alignment",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened bite of the asp"] = {
          {
            classes = 16384,
            firstRankId = 11077,
            id = 11077,
            maxRank = 2,
            name = "Hastened Bite of the Asp",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 986,
                    name = "Bite of the Asp",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened blades"] = {
          {
            classes = 128,
            firstRankId = 1555,
            id = 541,
            maxRank = 6,
            name = "Hastened Blades",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 359,
                    name = "Dance of Blades",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened blast of anger"] = {
          {
            classes = 1,
            firstRankId = 7036,
            id = 7036,
            maxRank = 5,
            name = "Hastened Blast of Anger",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 3646,
                    name = "Blast of Anger",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened blessing of resurrection"] = {
          {
            classes = 2,
            firstRankId = 6478,
            id = 6478,
            maxRank = 3,
            name = "Hastened Blessing of Resurrection",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 3800,
                    name = "Blessing of Resurrection",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened blood magic"] = {
          {
            classes = 1024,
            firstRankId = 6819,
            id = 902,
            maxRank = 6,
            name = "Hastened Blood Magic",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 524,
                    name = "Blood Magic",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened blood pact"] = {
          {
            classes = 32768,
            firstRankId = 13881,
            id = 781,
            maxRank = 1,
            name = "Hastened Blood Pact",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 387,
                    name = "Blood Pact",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened burnout"] = {
          {
            classes = 4096,
            firstRankId = 7832,
            id = 3891,
            maxRank = 5,
            name = "Hastened Burnout",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 60,
                    name = "Frenzied Burnout",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened cacophony"] = {
          {
            classes = 128,
            firstRankId = 6337,
            id = 3518,
            maxRank = 10,
            name = "Hastened Cacophony",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 553,
                    name = "Cacophony",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened calculated insanity"] = {
          {
            classes = 8192,
            firstRankId = 13753,
            id = 645,
            maxRank = 1,
            name = "Hastened Calculated Insanity",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 534,
                    name = "Calculated Insanity",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened call of the wild"] = {
          {
            classes = 544,
            firstRankId = 6228,
            id = 3713,
            maxRank = 4,
            name = "Hastened Call of the Wild",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 404,
                    name = "Call of the Wild",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened call of xuzl"] = {
          {
            classes = 2048,
            firstRankId = 8082,
            id = 1157,
            maxRank = 6,
            name = "Hastened Call of Xuzl",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 208,
                    name = "Call of Xuzl",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened cannibalization"] = {
          {
            classes = 512,
            firstRankId = 13010,
            id = 634,
            maxRank = 4,
            name = "Hastened Cannibalization",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 47,
                    name = "Cannibalization",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened cascading rage"] = {
          {
            classes = 32768,
            firstRankId = 6908,
            id = 8708,
            maxRank = 4,
            name = "Hastened Cascading Rage",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 499,
                    name = "Cascading Rage",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened celestial hammer"] = {
          {
            classes = 2,
            firstRankId = 10464,
            id = 8506,
            maxRank = 6,
            name = "Hastened Celestial Hammer",
          },
        },
        ["hastened celestial regeneration"] = {
          {
            classes = 2,
            firstRankId = 2400,
            id = 998,
            maxRank = 4,
            name = "Hastened Celestial Regeneration",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 38,
                    name = "Celestial Regeneration",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened companion's relocation"] = {
          {
            classes = 30224,
            firstRankId = 14295,
            id = 313,
            maxRank = 1,
            name = "Hastened Companion's Relocation",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3816,
                    name = "Companion's Relocation",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened companion's sacrifice"] = {
          {
            classes = 16384,
            firstRankId = 13474,
            id = 239,
            maxRank = 1,
            name = "Hastened Companion's Sacrifice",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 444,
                    name = "Companion's Sacrifice",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened convergence of spirits"] = {
          {
            classes = 32,
            firstRankId = 10514,
            id = 8606,
            maxRank = 4,
            name = "Hastened Convergence of Spirits",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 519,
                    name = "Convergence of Spirits",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened counterattack discipline"] = {
          {
            classes = 256,
            firstRankId = 15502,
            id = 1171,
            maxRank = 1,
            name = "Hastened Counterattack Discipline",
          },
        },
        ["hastened cover tracks"] = {
          {
            classes = 8,
            firstRankId = 7751,
            id = 7751,
            maxRank = 4,
            name = "Hastened Cover Tracks",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 2234,
                    name = "Cover Tracks",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened crane stance"] = {
          {
            classes = 64,
            firstRankId = 15453,
            id = 1243,
            maxRank = 1,
            name = "Hastened Crane Stance",
          },
        },
        ["hastened crippling aurora"] = {
          {
            classes = 8192,
            firstRankId = 13764,
            id = 647,
            maxRank = 1,
            name = "Hastened Crippling Aurora",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 535,
                    name = "Crippling Aurora",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened cry of battle"] = {
          {
            classes = 32768,
            firstRankId = 11088,
            id = 11088,
            maxRank = 4,
            name = "Hastened Cry of Battle",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 505,
                    name = "Cry of Battle",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened dampen resistance"] = {
          {
            classes = 512,
            firstRankId = 6697,
            id = 858,
            maxRank = 5,
            name = "Hastened Dampen Resistance",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 857,
                    name = "Dampen Resistance",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened death"] = {
          {
            classes = 64,
            firstRankId = 1546,
            id = 538,
            maxRank = 8,
            name = "Hastened Death",
            prerequisiteRules = {
              {
                maxRank = 8,
                minRank = 1,
                requires = {
                  {
                    id = 420,
                    name = "Imitate Death",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened defensive poses"] = {
          {
            classes = 64,
            firstRankId = 10653,
            id = 8901,
            maxRank = 4,
            name = "Hastened Defensive Poses",
          },
        },
        ["hastened defiance"] = {
          {
            classes = 1,
            firstRankId = 1583,
            id = 548,
            maxRank = 5,
            name = "Hastened Defiance",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 300,
                    name = "Warlord's Tenacity",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["hastened deflection discipline"] = {
          {
            classes = 20,
            firstRankId = 10405,
            id = 10405,
            maxRank = 10,
            name = "Hastened Deflection Discipline",
          },
        },
        ["hastened deftdance"] = {
          {
            classes = 128,
            firstRankId = 12710,
            id = 415,
            maxRank = 4,
            name = "Hastened Deftdance",
          },
        },
        ["hastened destruction"] = {
          {
            classes = 2048,
            firstRankId = 11050,
            id = 9700,
            maxRank = 7,
            name = "Hastened Destruction",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 452,
                    name = "Prolonged Destruction",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened destructive force"] = {
          {
            classes = 64,
            firstRankId = 10657,
            id = 8903,
            maxRank = 7,
            name = "Hastened Destructive Force",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 276,
                    name = "Destructive Force",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened dirge of the sleepwalker"] = {
          {
            classes = 128,
            firstRankId = 10329,
            id = 8200,
            maxRank = 3,
            name = "Hastened Dirge of the Sleepwalker",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 3701,
                    name = "Dirge of the Sleepwalker",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened distraction attack"] = {
          {
            classes = 32768,
            firstRankId = 6941,
            id = 7070,
            maxRank = 5,
            name = "Hastened Distraction Attack",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 962,
                    name = "Distraction Attack",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened divine avatar"] = {
          {
            classes = 2,
            firstRankId = 7100,
            id = 3830,
            maxRank = 9,
            name = "Hastened Divine Avatar",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 254,
                    name = "Divine Avatar",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened divine call"] = {
          {
            classes = 4,
            firstRankId = 15132,
            id = 2014,
            maxRank = 1,
            name = "Hastened Divine Call",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 660,
                    name = "Divine Call",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened divine companion aura"] = {
          {
            classes = 30224,
            firstRankId = 12773,
            id = 432,
            maxRank = 5,
            name = "Hastened Divine Companion Aura",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 1580,
                    name = "Divine Companion Aura",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened divine intervention"] = {
          {
            classes = 2,
            firstRankId = 10358,
            id = 3212,
            maxRank = 4,
            name = "Hastened Divine Intervention",
          },
        },
        ["hastened divine resurrection"] = {
          {
            classes = 2,
            firstRankId = 6481,
            id = 6481,
            maxRank = 4,
            name = "Hastened Divine Resurrection",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 36,
                    name = "Divine Resurrection",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened divine retribution"] = {
          {
            classes = 2,
            firstRankId = 6088,
            id = 994,
            maxRank = 3,
            name = "Hastened Divine Retribution",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 392,
                    name = "Divine Retribution",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened divinity"] = {
          {
            classes = 2,
            firstRankId = 462,
            id = 154,
            maxRank = 5,
            name = "Hastened Divinity",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 39,
                    name = "Bestow Divine Aura",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened drape of shadows"] = {
          {
            classes = 4096,
            firstRankId = 14304,
            id = 722,
            maxRank = 1,
            name = "Hastened Drape of Shadows",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 8341,
                    name = "Drape of Shadows",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened dying grasp"] = {
          {
            classes = 1024,
            firstRankId = 15571,
            id = 1254,
            maxRank = 1,
            name = "Hastened Dying Grasp",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 351,
                    name = "Dying Grasp",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened edict of command"] = {
          {
            classes = 8192,
            firstRankId = 8035,
            id = 1123,
            maxRank = 7,
            name = "Hastened Edict of Command",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 521,
                    name = "Edict of Command",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened eldritch rune"] = {
          {
            classes = 8192,
            firstRankId = 14364,
            id = 724,
            maxRank = 1,
            name = "Hastened Eldritch Rune",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 173,
                    name = "Eldritch Rune",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened elemental union"] = {
          {
            classes = 4096,
            firstRankId = 15204,
            id = 2062,
            maxRank = 1,
            name = "Hastened Elemental Union",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 390,
                    name = "Elemental Union",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened empathic fury"] = {
          {
            classes = 16384,
            firstRankId = 12822,
            id = 454,
            maxRank = 1,
            name = "Hastened Empathic Fury",
          },
        },
        ["hastened encroaching darkness"] = {
          {
            classes = 1024,
            firstRankId = 12779,
            id = 436,
            maxRank = 3,
            name = "Hastened Encroaching Darkness",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 826,
                    name = "Encroaching Darkness",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened enraging kicks"] = {
          {
            classes = 8,
            firstRankId = 15283,
            id = 2040,
            maxRank = 1,
            name = "Hastened Enraging Kicks",
          },
        },
        ["hastened entrap"] = {
          {
            classes = 8,
            firstRankId = 10733,
            id = 926,
            maxRank = 3,
            name = "Hastened Entrap",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 219,
                    name = "Entrap",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened exodus"] = {
          {
            classes = 2080,
            firstRankId = 477,
            id = 159,
            maxRank = 7,
            name = "Hastened Exodus",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 43,
                    name = "Exodus",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened explosion of hatred"] = {
          {
            classes = 16,
            firstRankId = 13166,
            id = 743,
            maxRank = 3,
            name = "Hastened Explosion of Hatred",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 822,
                    name = "Explosion of Hatred",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened eye gouge"] = {
          {
            classes = 64,
            firstRankId = 15456,
            id = 1244,
            maxRank = 1,
            name = "Hastened Eye Gouge",
          },
        },
        ["hastened feral attacks"] = {
          {
            classes = 16384,
            firstRankId = 6974,
            id = 982,
            maxRank = 6,
            name = "Hastened Feral Attacks",
          },
        },
        ["hastened fierce eye"] = {
          {
            classes = 128,
            firstRankId = 12721,
            id = 425,
            maxRank = 4,
            name = "Hastened Fierce Eye",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 3506,
                    name = "Fierce Eye",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened first spire of enchantment"] = {
          {
            classes = 8192,
            firstRankId = 12902,
            id = 517,
            maxRank = 2,
            name = "Hastened First Spire of Enchantment",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 1380,
                    name = "Fundament: First Spire of Enchantment",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened first spire of the warlord"] = {
          {
            classes = 1,
            firstRankId = 10527,
            id = 907,
            maxRank = 1,
            name = "Hastened First Spire of the Warlord",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1400,
                    name = "Fundament: First Spire of the Warlord",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened five point palm"] = {
          {
            classes = 64,
            firstRankId = 13889,
            id = 796,
            maxRank = 1,
            name = "Hastened Five Point Palm",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1012,
                    name = "Five Point Palm",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened flash of anger"] = {
          {
            classes = 1,
            firstRankId = 13905,
            id = 1680,
            maxRank = 1,
            name = "Hastened Flash of Anger",
          },
        },
        ["hastened flusterbolt"] = {
          {
            classes = 8,
            firstRankId = 7746,
            id = 7746,
            maxRank = 3,
            name = "Hastened Flusterbolt",
          },
        },
        ["hastened focused celestial regeneration"] = {
          {
            classes = 2,
            firstRankId = 14213,
            id = 139,
            maxRank = 1,
            name = "Hastened Focused Celestial Regeneration",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1065,
                    name = "Focused Celestial Regeneration",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened focused paragon"] = {
          {
            classes = 16384,
            firstRankId = 6977,
            id = 983,
            maxRank = 5,
            name = "Hastened Focused Paragon",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 3817,
                    name = "Focused Paragon of Spirits",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened force of will"] = {
          {
            classes = 2048,
            firstRankId = 7822,
            id = 3890,
            maxRank = 6,
            name = "Hastened Force of Will",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 1154,
                    name = "Force of Will",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened fortitude discipline"] = {
          {
            classes = 1,
            firstRankId = 6611,
            id = 802,
            maxRank = 7,
            name = "Hastened Fortitude Discipline",
          },
        },
        ["hastened frenzied stabbing"] = {
          {
            classes = 256,
            firstRankId = 12600,
            id = 12600,
            maxRank = 5,
            name = "Hastened Frenzied Stabbing",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 3514,
                    name = "Rogue's Fury",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened frenzy"] = {
          {
            classes = 32768,
            firstRankId = 10401,
            id = 8401,
            maxRank = 4,
            name = "Hastened Frenzy",
          },
        },
        ["hastened funeral dirge"] = {
          {
            classes = 128,
            firstRankId = 6340,
            id = 3519,
            maxRank = 7,
            name = "Hastened Funeral Dirge",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 777,
                    name = "Funeral Dirge",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened furious discipline"] = {
          {
            classes = 1,
            firstRankId = 6614,
            id = 803,
            maxRank = 6,
            name = "Hastened Furious Discipline",
          },
        },
        ["hastened fury of the gods"] = {
          {
            classes = 2048,
            firstRankId = 15598,
            id = 1261,
            maxRank = 1,
            name = "Hastened Fury of the Gods",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 759,
                    name = "Fury of Kerafyrm",
                    points = 1,
                  },
                  {
                    id = 1150,
                    name = "Fury of Druzzil",
                    points = 1,
                  },
                  {
                    id = 1151,
                    name = "Fury of Eci",
                    points = 1,
                  },
                  {
                    id = 1152,
                    name = "Fury of Ro",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened gathering"] = {
          {
            classes = 8192,
            firstRankId = 471,
            id = 157,
            maxRank = 5,
            name = "Hastened Gathering",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 57,
                    name = "Gather Mana",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened getaway"] = {
          {
            classes = 256,
            firstRankId = 7005,
            id = 7107,
            maxRank = 4,
            name = "Hastened Getaway",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 789,
                    name = "Stealthy Getaway",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened glyph spray"] = {
          {
            classes = 8192,
            firstRankId = 15478,
            id = 2201,
            maxRank = 1,
            name = "Hastened Glyph Spray",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 578,
                    name = "Glyph Spray",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened gorilla smash"] = {
          {
            classes = 16384,
            firstRankId = 11078,
            id = 11078,
            maxRank = 2,
            name = "Hastened Gorilla Smash",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 988,
                    name = "Gorilla Smash",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened grappling strike"] = {
          {
            classes = 65,
            firstRankId = 10588,
            id = 917,
            maxRank = 6,
            name = "Hastened Grappling Strike",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 601,
                    name = "Grappling Strike",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened group guardian of the forest"] = {
          {
            classes = 8,
            firstRankId = 10714,
            id = 921,
            maxRank = 2,
            name = "Hastened Group Guardian of the Forest",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 873,
                    name = "Group Guardian of the Forest",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened guardian of the forest"] = {
          {
            classes = 8,
            firstRankId = 7743,
            id = 7743,
            maxRank = 6,
            name = "Hastened Guardian of the Forest",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 184,
                    name = "Guardian of the Forest",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened gut punch"] = {
          {
            classes = 1,
            firstRankId = 10522,
            id = 906,
            maxRank = 1,
            name = "Hastened Gut Punch",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3732,
                    name = "Gut Punch",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened harmonious arrow"] = {
          {
            classes = 8,
            firstRankId = 10730,
            id = 925,
            maxRank = 2,
            name = "Hastened Harmonious Arrow",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 870,
                    name = "Harmonious Arrow",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened harmshield"] = {
          {
            classes = 1040,
            firstRankId = 14062,
            id = 654,
            maxRank = 1,
            name = "Hastened Harmshield",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 821,
                    name = "Harmshield",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened harvest of druzzil"] = {
          {
            classes = 2048,
            firstRankId = 12881,
            id = 561,
            maxRank = 1,
            name = "Hastened Harvest of Druzzil",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 172,
                    name = "Harvest of Druzzil",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened hate step"] = {
          {
            classes = 16,
            firstRankId = 7760,
            id = 7760,
            maxRank = 3,
            name = "Hastened Hate Step",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 824,
                    name = "Hate Step",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened hate's attraction"] = {
          {
            classes = 16,
            firstRankId = 12582,
            id = 931,
            maxRank = 4,
            name = "Hastened Hate's Attraction",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 9400,
                    name = "Hate's Attraction",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened holyforge"] = {
          {
            classes = 4,
            firstRankId = 6489,
            id = 6489,
            maxRank = 4,
            name = "Hastened Holyforge",
          },
        },
        ["hastened host of the elements"] = {
          {
            classes = 4096,
            firstRankId = 10413,
            id = 10413,
            maxRank = 5,
            name = "Hastened Host of the Elements",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 207,
                    name = "Host of the Elements",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened imbued ferocity"] = {
          {
            classes = 8,
            firstRankId = 10727,
            id = 924,
            maxRank = 2,
            name = "Hastened Imbued Ferocity",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 2235,
                    name = "Imbued Ferocity",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened improved twincast"] = {
          {
            classes = 14370,
            firstRankId = 14331,
            id = 400,
            maxRank = 1,
            name = "Hastened Improved Twincast",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 515,
                    name = "Improved Twincast",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened inconspicuous totem"] = {
          {
            classes = 512,
            firstRankId = 13001,
            id = 620,
            maxRank = 4,
            name = "Hastened Inconspicuous Totem",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 9504,
                    name = "Inconspicuous Totem",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened instigation"] = {
          {
            classes = 1,
            firstRankId = 489,
            id = 163,
            maxRank = 6,
            name = "Hastened Instigation",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 110,
                    name = "Area Taunt",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened ironfist"] = {
          {
            classes = 64,
            firstRankId = 15438,
            id = 1234,
            maxRank = 1,
            name = "Hastened Ironfist",
          },
        },
        ["hastened jolting kicks"] = {
          {
            classes = 8,
            firstRankId = 12500,
            id = 3217,
            maxRank = 5,
            name = "Hastened Jolting Kicks",
          },
        },
        ["hastened juggernaut surge"] = {
          {
            classes = 32768,
            firstRankId = 13873,
            id = 779,
            maxRank = 1,
            name = "Hastened Juggernaut Surge",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 961,
                    name = "Juggernaut Surge",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened leap"] = {
          {
            classes = 32769,
            firstRankId = 11014,
            id = 1159,
            maxRank = 4,
            name = "Hastened Leap",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 3899,
                    name = "Furious Leap",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened leap of faith"] = {
          {
            classes = 4,
            firstRankId = 14085,
            id = 1024,
            maxRank = 1,
            name = "Hastened Leap of Faith",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 741,
                    name = "Leap of Faith",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened leech touch"] = {
          {
            classes = 16,
            firstRankId = 14046,
            id = 649,
            maxRank = 1,
            name = "Hastened Leech Touch",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 87,
                    name = "Leech Touch",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened leechcurse discipline"] = {
          {
            classes = 16,
            firstRankId = 14056,
            id = 652,
            maxRank = 1,
            name = "Hastened Leechcurse Discipline",
          },
        },
        ["hastened ligament slice"] = {
          {
            classes = 256,
            firstRankId = 6272,
            id = 3726,
            maxRank = 6,
            name = "Hastened Ligament Slice",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 672,
                    name = "Ligament Slice",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened lunar healing"] = {
          {
            classes = 32,
            firstRankId = 15383,
            id = 2055,
            maxRank = 1,
            name = "Hastened Lunar Healing",
          },
        },
        ["hastened lure of the siren's song"] = {
          {
            classes = 128,
            firstRankId = 15549,
            id = 1248,
            maxRank = 1,
            name = "Hastened Lure of the Siren's Song",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 244,
                    name = "Lure of the Siren's Song",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened lycan soul"] = {
          {
            classes = 32,
            firstRankId = 7989,
            id = 1093,
            maxRank = 5,
            name = "Hastened Lycan Soul",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 1092,
                    name = "Spirit of the Black Wolf",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened lyre leap"] = {
          {
            classes = 128,
            firstRankId = 12713,
            id = 416,
            maxRank = 3,
            name = "Hastened Lyre Leap",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 8202,
                    name = "Lyre Leap",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened malosinete"] = {
          {
            classes = 4608,
            firstRankId = 12968,
            id = 599,
            maxRank = 4,
            name = "Hastened Malosinete",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 1041,
                    name = "Malosinete",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened mana draw"] = {
          {
            classes = 8192,
            firstRankId = 8347,
            id = 8347,
            maxRank = 3,
            name = "Hastened Mana Draw",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 616,
                    name = "Mana Draw",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened manaburn"] = {
          {
            classes = 2048,
            firstRankId = 8076,
            id = 1156,
            maxRank = 6,
            name = "Hastened Manaburn",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 565,
                    name = "Mana Burn",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened mark of the mage hunter"] = {
          {
            classes = 1,
            firstRankId = 13917,
            id = 1683,
            maxRank = 1,
            name = "Hastened Mark of the Mage Hunter",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 606,
                    name = "Mark of the Mage Hunter",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened marr's salvation"] = {
          {
            classes = 4,
            firstRankId = 14088,
            id = 720,
            maxRank = 1,
            name = "Hastened Marr's Salvation",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 769,
                    name = "Marr's Salvation",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened mass group buff"] = {
          {
            classes = 30254,
            firstRankId = 5010,
            id = 1113,
            maxRank = 4,
            name = "Hastened Mass Group Buff",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 35,
                    name = "Mass Group Buff",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened mend"] = {
          {
            classes = 64,
            firstRankId = 4801,
            id = 3805,
            maxRank = 11,
            name = "Hastened Mend",
          },
        },
        ["hastened mending"] = {
          {
            classes = 21504,
            firstRankId = 483,
            id = 161,
            maxRank = 3,
            name = "Hastened Mending",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 58,
                    name = "Mend Companion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened mental contortion"] = {
          {
            classes = 8192,
            firstRankId = 13758,
            id = 646,
            maxRank = 1,
            name = "Hastened Mental Contortion",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 602,
                    name = "Mental Contortion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened mercurial torment"] = {
          {
            classes = 1024,
            firstRankId = 14311,
            id = 344,
            maxRank = 1,
            name = "Hastened Mercurial Torment",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 430,
                    name = "Mercurial Torment",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened mezmerization"] = {
          {
            classes = 8192,
            firstRankId = 8350,
            id = 8350,
            maxRank = 1,
            name = "Hastened Mezmerization",
          },
        },
        ["hastened mind crash"] = {
          {
            classes = 2048,
            firstRankId = 1414,
            id = 551,
            maxRank = 6,
            name = "Hastened Mind Crash",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 451,
                    name = "Mind Crash",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened nature's fury"] = {
          {
            classes = 32,
            firstRankId = 14241,
            id = 168,
            maxRank = 1,
            name = "Hastened Nature's Fury",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 386,
                    name = "Nature's Fury",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened nature's guardian"] = {
          {
            classes = 32,
            firstRankId = 7983,
            id = 1091,
            maxRank = 6,
            name = "Hastened Nature's Guardian",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 520,
                    name = "Nature's Guardian",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened nightmare stasis"] = {
          {
            classes = 8192,
            firstRankId = 14341,
            id = 554,
            maxRank = 1,
            name = "Hastened Nightmare Stasis",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 748,
                    name = "Nightmare Stasis",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened onslaught"] = {
          {
            classes = 256,
            firstRankId = 15509,
            id = 1173,
            maxRank = 1,
            name = "Hastened Onslaught",
          },
        },
        ["hastened outrider's accuracy"] = {
          {
            classes = 8,
            firstRankId = 13565,
            id = 580,
            maxRank = 1,
            name = "Hastened Outrider's Accuracy",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3804,
                    name = "Outrider's Accuracy",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened outrider's attack"] = {
          {
            classes = 8,
            firstRankId = 10719,
            id = 922,
            maxRank = 4,
            name = "Hastened Outrider's Attack",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 872,
                    name = "Outrider's Attack",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened outrider's evasion"] = {
          {
            classes = 8,
            firstRankId = 13568,
            id = 583,
            maxRank = 1,
            name = "Hastened Outrider's Evasion",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 876,
                    name = "Outrider's Evasion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened paragon"] = {
          {
            classes = 16384,
            firstRankId = 6980,
            id = 984,
            maxRank = 5,
            name = "Hastened Paragon",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 128,
                    name = "Paragon of Spirit",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened pestilent paralysis"] = {
          {
            classes = 1024,
            firstRankId = 14308,
            id = 343,
            maxRank = 1,
            name = "Hastened Pestilent Paralysis",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 431,
                    name = "Pestilent Paralysis",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened phantasmal opponent"] = {
          {
            classes = 8192,
            firstRankId = 12894,
            id = 513,
            maxRank = 1,
            name = "Hastened Phantasmal Opponent",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1122,
                    name = "Phantasmal Opponent",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened piety"] = {
          {
            classes = 4,
            firstRankId = 849,
            id = 282,
            maxRank = 6,
            name = "Hastened Piety",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 180,
                    name = "Hand of Piety",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened pinpoint"] = {
          {
            classes = 256,
            firstRankId = 12607,
            id = 12607,
            maxRank = 2,
            name = "Hastened Pinpoint",
          },
        },
        ["hastened possum"] = {
          {
            classes = 16384,
            firstRankId = 13449,
            id = 230,
            maxRank = 1,
            name = "Hastened Possum",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 11073,
                    name = "Playing Possum",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened press the attack"] = {
          {
            classes = 1,
            firstRankId = 15100,
            id = 2003,
            maxRank = 1,
            name = "Hastened Press the Attack",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 467,
                    name = "Press the Attack",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened projection of doom"] = {
          {
            classes = 16,
            firstRankId = 14065,
            id = 655,
            maxRank = 1,
            name = "Hastened Projection of Doom",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3215,
                    name = "Projection of Doom",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened projection of fury"] = {
          {
            classes = 1,
            firstRankId = 10519,
            id = 965,
            maxRank = 1,
            name = "Hastened Projection of Fury",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3213,
                    name = "Projection of Fury",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened projection of piety"] = {
          {
            classes = 4,
            firstRankId = 14068,
            id = 656,
            maxRank = 1,
            name = "Hastened Projection of Piety",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3216,
                    name = "Projection of Piety",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened protection of the spirit wolf"] = {
          {
            classes = 8,
            firstRankId = 10722,
            id = 923,
            maxRank = 6,
            name = "Hastened Protection of the Spirit Wolf",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 778,
                    name = "Protection of the Spirit Wolf",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened protective spirit"] = {
          {
            classes = 16384,
            firstRankId = 12819,
            id = 450,
            maxRank = 2,
            name = "Hastened Protective Spirit",
          },
        },
        ["hastened purification"] = {
          {
            classes = 256,
            firstRankId = 501,
            id = 167,
            maxRank = 7,
            name = "Hastened Purification",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 107,
                    name = "Purge Poison",
                    points = 1,
                  },
                },
              },
            },
          },
          {
            classes = 4,
            firstRankId = 7103,
            id = 3831,
            maxRank = 8,
            name = "Hastened Purification",
            prerequisiteRules = {
              {
                maxRank = 8,
                minRank = 1,
                requires = {
                  {
                    id = 286,
                    name = "Purification",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened purification of the body"] = {
          {
            classes = 64,
            firstRankId = 495,
            id = 165,
            maxRank = 10,
            name = "Hastened Purification of the Body",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 98,
                    name = "Purify Body",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened purification of the soul"] = {
          {
            classes = 2,
            firstRankId = 468,
            id = 156,
            maxRank = 8,
            name = "Hastened Purification of the Soul",
            prerequisiteRules = {
              {
                maxRank = 8,
                minRank = 1,
                requires = {
                  {
                    id = 41,
                    name = "Purify Soul",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened purified spirits"] = {
          {
            classes = 546,
            firstRankId = 13416,
            id = 698,
            maxRank = 1,
            name = "Hastened Purified Spirits",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 626,
                    name = "Purified Spirits",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened quick time"] = {
          {
            classes = 128,
            firstRankId = 12716,
            id = 417,
            maxRank = 4,
            name = "Hastened Quick Time",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 3702,
                    name = "Quick Time",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened rabidity"] = {
          {
            classes = 512,
            firstRankId = 474,
            id = 158,
            maxRank = 4,
            name = "Hastened Rabidity",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 50,
                    name = "Rabid Bear",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened rage of rallos zek"] = {
          {
            classes = 1,
            firstRankId = 15105,
            id = 2004,
            maxRank = 1,
            name = "Hastened Rage of Rallos Zek",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 131,
                    name = "Rage of Rallos Zek",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened rampage"] = {
          {
            classes = 32769,
            firstRankId = 492,
            id = 164,
            maxRank = 7,
            name = "Hastened Rampage",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 109,
                    name = "Rampage",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened raven's claw"] = {
          {
            classes = 16384,
            firstRankId = 11079,
            id = 11079,
            maxRank = 2,
            name = "Hastened Raven's Claw",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 987,
                    name = "Raven's Claw",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened reckless abandon"] = {
          {
            classes = 32768,
            firstRankId = 6302,
            id = 6302,
            maxRank = 7,
            name = "Hastened Reckless Abandon",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 3710,
                    name = "Reckless Abandon",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened recklessness"] = {
          {
            classes = 32768,
            firstRankId = 6362,
            id = 6362,
            maxRank = 6,
            name = "Hastened Recklessness",
          },
        },
        ["hastened renewal"] = {
          {
            classes = 2,
            firstRankId = 7945,
            id = 1063,
            maxRank = 7,
            name = "Hastened Renewal",
          },
        },
        ["hastened resilience"] = {
          {
            classes = 32768,
            firstRankId = 13878,
            id = 780,
            maxRank = 1,
            name = "Hastened Resilience",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 609,
                    name = "Uncanny Resilience",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened root"] = {
          {
            classes = 2048,
            firstRankId = 480,
            id = 160,
            maxRank = 6,
            name = "Hastened Root",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 117,
                    name = "Strong Root",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened rumbling servant"] = {
          {
            classes = 4096,
            firstRankId = 7828,
            id = 3892,
            maxRank = 3,
            name = "Hastened Rumbling Servant",
          },
        },
        ["hastened sanctification discipline"] = {
          {
            classes = 4,
            firstRankId = 14076,
            id = 658,
            maxRank = 1,
            name = "Hastened Sanctification Discipline",
          },
        },
        ["hastened sanctuary"] = {
          {
            classes = 2,
            firstRankId = 5118,
            id = 712,
            maxRank = 6,
            name = "Hastened Sanctuary",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 396,
                    name = "Sanctuary",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened savage spirit"] = {
          {
            classes = 32768,
            firstRankId = 6935,
            id = 963,
            maxRank = 9,
            name = "Hastened Savage Spirit",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 465,
                    name = "Savage Spirit",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened scowl"] = {
          {
            classes = 1,
            firstRankId = 13911,
            id = 1682,
            maxRank = 1,
            name = "Hastened Scowl",
          },
        },
        ["hastened second spire of enchantment"] = {
          {
            classes = 8192,
            firstRankId = 12907,
            id = 523,
            maxRank = 2,
            name = "Hastened Second Spire of Enchantment",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 1381,
                    name = "Fundament: Second Spire of Enchantment",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened second spire of the warlord"] = {
          {
            classes = 1,
            firstRankId = 10532,
            id = 908,
            maxRank = 1,
            name = "Hastened Second Spire of the Warlord",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1401,
                    name = "Fundament: Second Spire of the Warlord",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened self preservation"] = {
          {
            classes = 32768,
            firstRankId = 13055,
            id = 641,
            maxRank = 1,
            name = "Hastened Self Preservation",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 8400,
                    name = "Self Preservation",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened self stasis"] = {
          {
            classes = 8192,
            firstRankId = 10558,
            id = 8703,
            maxRank = 4,
            name = "Hastened Self Stasis",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 1120,
                    name = "Self Stasis",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened selo's kick"] = {
          {
            classes = 128,
            firstRankId = 8317,
            id = 8317,
            maxRank = 2,
            name = "Hastened Selo's Kick",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 8205,
                    name = "Selo's Kick",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened shield of brilliance"] = {
          {
            classes = 4,
            firstRankId = 15168,
            id = 2028,
            maxRank = 1,
            name = "Hastened Shield of Brilliance",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 657,
                    name = "Shield of Brilliance",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened shield topple"] = {
          {
            classes = 1,
            firstRankId = 15126,
            id = 2010,
            maxRank = 1,
            name = "Hastened Shield Topple",
          },
        },
        ["hastened song of stone"] = {
          {
            classes = 128,
            firstRankId = 6870,
            id = 940,
            maxRank = 6,
            name = "Hastened Song of Stone",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 544,
                    name = "Song of Stone",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened speed focus"] = {
          {
            classes = 64,
            firstRankId = 14148,
            id = 805,
            maxRank = 1,
            name = "Hastened Speed Focus",
          },
        },
        ["hastened speed of the savior"] = {
          {
            classes = 4,
            firstRankId = 15162,
            id = 2026,
            maxRank = 1,
            name = "Hastened Speed of the Savior",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 659,
                    name = "Speed of the Savior",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened spirit call"] = {
          {
            classes = 512,
            firstRankId = 6712,
            id = 863,
            maxRank = 10,
            name = "Hastened Spirit Call",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 177,
                    name = "Spirit Call",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened spirit channeling"] = {
          {
            classes = 512,
            firstRankId = 13013,
            id = 635,
            maxRank = 3,
            name = "Hastened Spirit Channeling",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 446,
                    name = "Spiritual Channeling",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened spirit of the wood"] = {
          {
            classes = 32,
            firstRankId = 10511,
            id = 8605,
            maxRank = 4,
            name = "Hastened Spirit of the Wood",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 185,
                    name = "Spirit of the Wood",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened stealth"] = {
          {
            classes = 256,
            firstRankId = 622,
            id = 209,
            maxRank = 4,
            name = "Hastened Stealth",
          },
        },
        ["hastened storm strike"] = {
          {
            classes = 32,
            firstRankId = 12664,
            id = 395,
            maxRank = 1,
            name = "Hastened Storm Strike",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3728,
                    name = "Storm Strike",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened stunning kick"] = {
          {
            classes = 64,
            firstRankId = 10343,
            id = 990,
            maxRank = 4,
            name = "Hastened Stunning Kick",
          },
        },
        ["hastened summon remains"] = {
          {
            classes = 16,
            firstRankId = 10909,
            id = 9402,
            maxRank = 3,
            name = "Hastened Summon Remains",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 7007,
                    name = "Summon Remains",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened swarm of decay"] = {
          {
            classes = 1024,
            firstRankId = 6823,
            id = 904,
            maxRank = 7,
            name = "Hastened Swarm of Decay",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 320,
                    name = "Swarm of Decay",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened swiftblade"] = {
          {
            classes = 256,
            firstRankId = 15634,
            id = 1273,
            maxRank = 2,
            name = "Hastened Swiftblade",
          },
        },
        ["hastened synergy"] = {
          {
            classes = 64,
            firstRankId = 15450,
            id = 1242,
            maxRank = 1,
            name = "Hastened Synergy",
          },
        },
        ["hastened taunt"] = {
          {
            classes = 1,
            firstRankId = 11000,
            id = 9600,
            maxRank = 3,
            name = "Hastened Taunt",
          },
        },
        ["hastened third spire of enchantment"] = {
          {
            classes = 8192,
            firstRankId = 12912,
            id = 527,
            maxRank = 2,
            name = "Hastened Third Spire of Enchantment",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 1382,
                    name = "Fundament: Third Spire of Enchantment",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened third spire of the warlord"] = {
          {
            classes = 1,
            firstRankId = 10537,
            id = 909,
            maxRank = 1,
            name = "Hastened Third Spire of the Warlord",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1402,
                    name = "Fundament: Third Spire of the Warlord",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened thousand blades"] = {
          {
            classes = 128,
            firstRankId = 14169,
            id = 864,
            maxRank = 1,
            name = "Hastened Thousand Blades",
          },
        },
        ["hastened thunder"] = {
          {
            classes = 16384,
            firstRankId = 1471,
            id = 503,
            maxRank = 7,
            name = "Hastened Thunder",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 362,
                    name = "Roar of Thunder",
                    points = 1,
                  },
                },
              },
            },
          },
          {
            classes = 64,
            firstRankId = 14166,
            id = 808,
            maxRank = 1,
            name = "Hastened Thunder",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 945,
                    name = "Infusion of Thunder",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened trueshot"] = {
          {
            classes = 8,
            firstRankId = 6355,
            id = 3803,
            maxRank = 7,
            name = "Hastened Trueshot",
          },
        },
        ["hastened tune in your head"] = {
          {
            classes = 128,
            firstRankId = 13204,
            id = 745,
            maxRank = 4,
            name = "Hastened Tune In Your Head",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 8261,
                    name = "A Tune Stuck In Your Head",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened turgur's swarm"] = {
          {
            classes = 512,
            firstRankId = 15371,
            id = 2053,
            maxRank = 1,
            name = "Hastened Turgur's Swarm",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3729,
                    name = "Turgur's Swarm",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened turn undead"] = {
          {
            classes = 2,
            firstRankId = 7940,
            id = 1060,
            maxRank = 10,
            name = "Hastened Turn Undead",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 558,
                    name = "Turn Undead",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened twisted chance discipline"] = {
          {
            classes = 256,
            firstRankId = 12615,
            id = 12615,
            maxRank = 4,
            name = "Hastened Twisted Chance Discipline",
          },
        },
        ["hastened unbroken attention"] = {
          {
            classes = 1,
            firstRankId = 15108,
            id = 2005,
            maxRank = 1,
            name = "Hastened Unbroken Attention",
          },
        },
        ["hastened unholy aura discipline"] = {
          {
            classes = 16,
            firstRankId = 14059,
            id = 653,
            maxRank = 1,
            name = "Hastened Unholy Aura Discipline",
          },
        },
        ["hastened union of spirits"] = {
          {
            classes = 512,
            firstRankId = 10954,
            id = 9502,
            maxRank = 3,
            name = "Hastened Union of Spirits",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 662,
                    name = "Union of Spirits",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened vehement rage"] = {
          {
            classes = 1,
            firstRankId = 15120,
            id = 2008,
            maxRank = 1,
            name = "Hastened Vehement Rage",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 800,
                    name = "Vehement Rage",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened veil of mindshadow"] = {
          {
            classes = 8192,
            firstRankId = 8031,
            id = 1121,
            maxRank = 9,
            name = "Hastened Veil of Mindshadow",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 791,
                    name = "Veil of Mindshadow",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened virulent paralysis"] = {
          {
            classes = 512,
            firstRankId = 6703,
            id = 860,
            maxRank = 9,
            name = "Hastened Virulent Paralysis",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 171,
                    name = "Virulent Paralysis",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened virulent talon"] = {
          {
            classes = 4096,
            firstRankId = 15207,
            id = 2063,
            maxRank = 1,
            name = "Hastened Virulent Talon",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 323,
                    name = "Virulent Talon",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened visage of death"] = {
          {
            classes = 16,
            firstRankId = 7757,
            id = 7757,
            maxRank = 7,
            name = "Hastened Visage of Death",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 9403,
                    name = "Visage of Death",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened wall of wind"] = {
          {
            classes = 32,
            firstRankId = 15403,
            id = 2057,
            maxRank = 1,
            name = "Hastened Wall of Wind",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 8604,
                    name = "Wall of Wind",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened war cry"] = {
          {
            classes = 32768,
            firstRankId = 1137,
            id = 369,
            maxRank = 3,
            name = "Hastened War Cry",
          },
        },
        ["hastened warder's gift"] = {
          {
            classes = 16384,
            firstRankId = 13463,
            id = 228,
            maxRank = 1,
            name = "Hastened Warder's Gift",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 458,
                    name = "Warder's Gift",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened warlord's bravery"] = {
          {
            classes = 1,
            firstRankId = 14037,
            id = 946,
            maxRank = 1,
            name = "Hastened Warlord's Bravery",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 804,
                    name = "Warlord's Bravery",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened warlord's tenacity"] = {
          {
            classes = 1,
            firstRankId = 14040,
            id = 947,
            maxRank = 1,
            name = "Hastened Warlord's Tenacity",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 300,
                    name = "Warlord's Tenacity",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened weapon shield"] = {
          {
            classes = 8,
            firstRankId = 6751,
            id = 871,
            maxRank = 7,
            name = "Hastened Weapon Shield",
          },
        },
        ["hastened whisperwind"] = {
          {
            classes = 1024,
            firstRankId = 7715,
            id = 7715,
            maxRank = 4,
            name = "Hastened Whisperwind",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 901,
                    name = "Whisperwind",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hastened wrath of the wild"] = {
          {
            classes = 32,
            firstRankId = 7664,
            id = 7109,
            maxRank = 11,
            name = "Hastened Wrath of the Wild",
            prerequisiteRules = {
              {
                maxRank = 11,
                minRank = 1,
                requires = {
                  {
                    id = 170,
                    name = "Wrath of the Wild",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["hastened zan fi's whistle"] = {
          {
            classes = 64,
            firstRankId = 14160,
            id = 806,
            maxRank = 1,
            name = "Hastened Zan Fi's Whistle",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7001,
                    name = "Zan Fi's Whistle",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hasty exit"] = {
          {
            classes = 256,
            firstRankId = 498,
            id = 166,
            maxRank = 9,
            name = "Hasty Exit",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 102,
                    name = "Escape",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hate step"] = {
          {
            classes = 16,
            firstRankId = 6644,
            id = 824,
            maxRank = 2,
            name = "Hate Step",
          },
        },
        ["hate's attraction"] = {
          {
            classes = 16,
            firstRankId = 10900,
            id = 9400,
            maxRank = 4,
            name = "Hate's Attraction",
          },
        },
        headshot = {
          {
            classes = 8,
            firstRankId = 644,
            id = 218,
            maxRank = 16,
            name = "Headshot",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 82,
                    name = "Archery Mastery",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["healing frenzy"] = {
          {
            classes = 2,
            firstRankId = 10450,
            id = 8500,
            maxRank = 7,
            name = "Healing Frenzy",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 19,
                    name = "Healing Gift",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["healing light"] = {
          {
            classes = 4,
            firstRankId = 6791,
            id = 891,
            maxRank = 10,
            name = "Healing Light",
          },
        },
        ["heart of flames"] = {
          {
            classes = 4096,
            firstRankId = 1251,
            id = 784,
            maxRank = 1,
            name = "Heart of Flames",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 61,
                    name = "Elemental Form: Fire",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["heart of ice"] = {
          {
            classes = 4096,
            firstRankId = 1253,
            id = 786,
            maxRank = 1,
            name = "Heart of Ice",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 62,
                    name = "Elemental Form: Water",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["heart of stone"] = {
          {
            classes = 4096,
            firstRankId = 1254,
            id = 787,
            maxRank = 1,
            name = "Heart of Stone",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 63,
                    name = "Elemental Form: Earth",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["heart of vapor"] = {
          {
            classes = 4096,
            firstRankId = 1252,
            id = 785,
            maxRank = 1,
            name = "Heart of Vapor",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 64,
                    name = "Elemental Form: Air",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["heel of brithrax"] = {
          {
            classes = 64,
            firstRankId = 14151,
            id = 718,
            maxRank = 1,
            name = "Heel of Brithrax",
          },
        },
        ["heightened awareness"] = {
          {
            classes = 64,
            firstRankId = 823,
            id = 275,
            maxRank = 5,
            name = "Heightened Awareness",
          },
        },
        ["helix of the undying"] = {
          {
            classes = 20,
            firstRankId = 15146,
            id = 2018,
            maxRank = 1,
            name = "Helix of the Undying",
          },
        },
        ["heroic leap"] = {
          {
            classes = 4,
            firstRankId = 15136,
            id = 2016,
            maxRank = 1,
            name = "Heroic Leap",
          },
        },
        ["hidden communion of the cheetah"] = {
          {
            classes = 32,
            firstRankId = 14265,
            id = 246,
            maxRank = 1,
            name = "Hidden Communion of the Cheetah",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 939,
                    name = "Communion of the Cheetah",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["hobble of spirits"] = {
          {
            classes = 16384,
            firstRankId = 289,
            id = 126,
            maxRank = 4,
            name = "Hobble of Spirits",
          },
        },
        ["hold the line"] = {
          {
            classes = 32833,
            firstRankId = 4742,
            id = 734,
            maxRank = 2,
            name = "Hold the Line",
          },
        },
        ["holy root"] = {
          {
            classes = 2,
            firstRankId = 6436,
            id = 3836,
            maxRank = 6,
            name = "Holy Root",
          },
        },
        ["holy shield"] = {
          {
            classes = 4,
            firstRankId = 10548,
            id = 914,
            maxRank = 1,
            name = "Holy Shield",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 605,
                    name = "Shield Specialist",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["holy steed"] = {
          {
            classes = 4,
            firstRankId = 194,
            id = 77,
            maxRank = 1,
            name = "Holy Steed",
          },
        },
        ["holy warhorse"] = {
          {
            classes = 4,
            firstRankId = 1643,
            grantOnly = true,
            id = 572,
            maxRank = 1,
            name = "Holy Warhorse",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 77,
                    name = "Holy Steed",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["host in the shell"] = {
          {
            classes = 4096,
            firstRankId = 8342,
            id = 8342,
            maxRank = 2,
            name = "Host in the Shell",
          },
        },
        ["host of the elements"] = {
          {
            classes = 4096,
            firstRankId = 616,
            id = 207,
            maxRank = 16,
            name = "Host of the Elements",
          },
        },
        ["howl of the warlord"] = {
          {
            classes = 1,
            firstRankId = 13169,
            id = 744,
            maxRank = 1,
            name = "Howl of the Warlord",
          },
        },
        ["hunter's attack power"] = {
          {
            classes = 8,
            firstRankId = 6546,
            id = 6002,
            maxRank = 34,
            name = "Hunter's Attack Power",
          },
        },
        ["hunter's fury"] = {
          {
            classes = 8,
            firstRankId = 5248,
            id = 661,
            maxRank = 10,
            name = "Hunter's Fury",
          },
        },
        ["hunter's return kick"] = {
          {
            classes = 8,
            firstRankId = 6269,
            id = 3725,
            maxRank = 3,
            name = "Hunter's Return Kick",
          },
        },
        ["hymn of the last stand"] = {
          {
            classes = 128,
            firstRankId = 5017,
            id = 668,
            maxRank = 10,
            name = "Hymn of the Last Stand",
          },
        },
        ["ice core"] = {
          {
            classes = 4096,
            firstRankId = 4909,
            id = 623,
            maxRank = 6,
            name = "Ice Core",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 786,
                    name = "Heart of Ice",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["illusions of grandeur"] = {
          {
            classes = 8192,
            firstRankId = 15481,
            id = 2202,
            maxRank = 1,
            name = "Illusions of Grandeur",
          },
        },
        ["illusory ally"] = {
          {
            classes = 8192,
            firstRankId = 15482,
            id = 2203,
            maxRank = 1,
            name = "Illusory Ally",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 261,
                    name = "Doppelganger",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["imbued ferocity"] = {
          {
            classes = 8,
            firstRankId = 10387,
            id = 2235,
            maxRank = 1,
            name = "Imbued Ferocity",
          },
        },
        ["imitate death"] = {
          {
            classes = 64,
            firstRankId = 1255,
            id = 420,
            maxRank = 1,
            name = "Imitate Death",
          },
        },
        ["immobilizing bash"] = {
          {
            classes = 20,
            firstRankId = 852,
            id = 283,
            maxRank = 13,
            name = "Immobilizing Bash",
          },
        },
        ["imperator's charge"] = {
          {
            classes = 1,
            firstRankId = 15130,
            id = 2012,
            maxRank = 1,
            name = "Imperator's Charge",
          },
        },
        ["imperator's command"] = {
          {
            classes = 1,
            firstRankId = 15129,
            id = 2011,
            maxRank = 1,
            name = "Imperator's Command",
          },
        },
        ["imperator's precision"] = {
          {
            classes = 1,
            firstRankId = 15131,
            id = 2013,
            maxRank = 1,
            name = "Imperator's Precision",
          },
        },
        ["improved atone"] = {
          {
            classes = 2,
            firstRankId = 10364,
            id = 3214,
            maxRank = 5,
            name = "Improved Atone",
          },
        },
        ["improved burst of life"] = {
          {
            classes = 2,
            firstRankId = 7765,
            id = 999,
            maxRank = 4,
            name = "Improved Burst of Life",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 7689,
                    name = "Burst of Life",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["improved death peace"] = {
          {
            classes = 1040,
            firstRankId = 12635,
            id = 933,
            maxRank = 1,
            name = "Improved Death Peace",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 428,
                    name = "Death Peace",
                    points = 2,
                  },
                },
              },
            },
          },
        },
        ["improved explosion of hatred"] = {
          {
            classes = 16,
            firstRankId = 15640,
            id = 1275,
            maxRank = 1,
            name = "Improved Explosion of Hatred",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 822,
                    name = "Explosion of Hatred",
                    points = 2,
                  },
                },
              },
            },
          },
        },
        ["improved explosion of spite"] = {
          {
            classes = 16,
            firstRankId = 15639,
            id = 1274,
            maxRank = 1,
            name = "Improved Explosion of Spite",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 749,
                    name = "Explosion of Spite",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["improved familiar"] = {
          {
            classes = 2048,
            firstRankId = 155,
            id = 52,
            maxRank = 7,
            name = "Improved Familiar",
          },
        },
        ["improved natural invisibility"] = {
          {
            classes = 16384,
            firstRankId = 10373,
            id = 8301,
            maxRank = 1,
            name = "Improved Natural Invisibility",
          },
        },
        ["improved reclaim energy"] = {
          {
            classes = 4096,
            firstRankId = 671,
            id = 229,
            maxRank = 1,
            name = "Improved Reclaim Energy",
          },
        },
        ["improved requiem of time"] = {
          {
            classes = 128,
            firstRankId = 15516,
            id = 1176,
            maxRank = 1,
            name = "Improved Requiem of Time",
          },
        },
        ["improved sanctuary"] = {
          {
            classes = 2,
            firstRankId = 10462,
            id = 8504,
            maxRank = 1,
            name = "Improved Sanctuary",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 396,
                    name = "Sanctuary",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["improved sustained destruction"] = {
          {
            classes = 2048,
            firstRankId = 12867,
            id = 493,
            maxRank = 1,
            name = "Improved Sustained Destruction",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 6106,
                    name = "Sustained Destruction",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["improved twincast"] = {
          {
            classes = 14370,
            firstRankId = 12893,
            id = 515,
            maxRank = 2,
            name = "Improved Twincast",
          },
        },
        ["inconspicuous totem"] = {
          {
            classes = 512,
            firstRankId = 10958,
            id = 9504,
            maxRank = 3,
            name = "Inconspicuous Totem",
          },
        },
        ["infused by rage"] = {
          {
            classes = 1,
            firstRankId = 6283,
            id = 3731,
            maxRank = 1,
            name = "Infused by Rage",
          },
        },
        ["infusion of thunder"] = {
          {
            classes = 64,
            firstRankId = 10346,
            id = 945,
            maxRank = 3,
            name = "Infusion of Thunder",
          },
        },
        ["innate camouflage"] = {
          {
            classes = 40,
            firstRankId = 197,
            id = 80,
            maxRank = 1,
            name = "Innate Camouflage",
          },
        },
        ["innate invis to undead"] = {
          {
            classes = 1026,
            firstRankId = 130,
            id = 37,
            maxRank = 1,
            name = "Innate Invis to Undead",
          },
        },
        ["inquisitor's judgement"] = {
          {
            classes = 4,
            firstRankId = 6492,
            id = 6492,
            maxRank = 10,
            name = "Inquisitor's Judgement",
          },
        },
        ["instrument mastery"] = {
          {
            classes = 128,
            firstRankId = 213,
            id = 90,
            maxRank = 4,
            name = "Instrument Mastery",
          },
        },
        ["intense hatred"] = {
          {
            classes = 16,
            firstRankId = 895,
            id = 296,
            maxRank = 20,
            name = "Intense Hatred",
          },
        },
        ["jam fest"] = {
          {
            classes = 128,
            firstRankId = 225,
            id = 94,
            maxRank = 3,
            name = "Jam Fest",
          },
        },
        ["juggernaut surge"] = {
          {
            classes = 32768,
            firstRankId = 6931,
            id = 961,
            maxRank = 3,
            name = "Juggernaut Surge",
          },
        },
        ["juggernaut's mastery of throwing"] = {
          {
            classes = 32768,
            firstRankId = 15564,
            id = 1250,
            maxRank = 1,
            name = "Juggernaut's Mastery of Throwing",
          },
        },
        ["keen blade"] = {
          {
            classes = 8,
            firstRankId = 6761,
            id = 875,
            maxRank = 8,
            name = "Keen Blade",
          },
        },
        ["kerafyrm's favor"] = {
          {
            classes = 2048,
            firstRankId = 12889,
            id = 509,
            maxRank = 2,
            name = "Kerafyrm's Favor",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 501,
                    name = "E'ci's Icy Blessing",
                    points = 1,
                  },
                },
              },
              {
                maxRank = 2,
                minRank = 2,
                requires = {
                  {
                    id = 507,
                    name = "Ro's Fiery Blessing",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["kerafyrm's prismatic familiar"] = {
          {
            classes = 2048,
            firstRankId = 12892,
            id = 510,
            maxRank = 1,
            name = "Kerafyrm's Prismatic Familiar",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 509,
                    name = "Kerafyrm's Favor",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["kick mastery"] = {
          {
            classes = 64,
            firstRankId = 820,
            id = 274,
            maxRank = 22,
            name = "Kick Mastery",
          },
        },
        ["knave's return strike"] = {
          {
            classes = 256,
            firstRankId = 6275,
            id = 3727,
            maxRank = 4,
            name = "Knave's Return Strike",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 790,
                    name = "Seized Opportunity",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["knee strike"] = {
          {
            classes = 1,
            firstRankId = 6610,
            id = 801,
            maxRank = 3,
            name = "Knee Strike",
          },
        },
        ["knight's advantage"] = {
          {
            classes = 20,
            firstRankId = 561,
            id = 188,
            maxRank = 6,
            name = "Knight's Advantage",
          },
        },
        ["languid bite"] = {
          {
            classes = 512,
            firstRankId = 6706,
            id = 861,
            maxRank = 7,
            name = "Languid Bite",
          },
        },
        ["large modulation shard"] = {
          {
            classes = 4096,
            firstRankId = 12965,
            id = 598,
            maxRank = 1,
            name = "Large Modulation Shard",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 597,
                    name = "Medium Modulation Shard",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["lasting bravery"] = {
          {
            classes = 1,
            firstRankId = 7033,
            id = 7033,
            maxRank = 4,
            name = "Lasting Bravery",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 804,
                    name = "Warlord's Bravery",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["lay on hands"] = {
          {
            classes = 4,
            firstRankId = 7850,
            id = 6001,
            maxRank = 21,
            name = "Lay on Hands",
          },
        },
        ["leap of faith"] = {
          {
            classes = 4,
            firstRankId = 13202,
            id = 741,
            maxRank = 2,
            name = "Leap of Faith",
          },
        },
        ["leech touch"] = {
          {
            classes = 16,
            firstRankId = 208,
            id = 87,
            maxRank = 1,
            name = "Leech Touch",
          },
        },
        levant = {
          {
            classes = 1024,
            firstRankId = 10700,
            id = 2899,
            maxRank = 1,
            name = "Levant",
          },
        },
        ["life burn"] = {
          {
            classes = 1024,
            firstRankId = 183,
            id = 68,
            maxRank = 1,
            name = "Life Burn",
          },
        },
        ["ligament slice"] = {
          {
            classes = 256,
            firstRankId = 5025,
            id = 672,
            maxRank = 3,
            name = "Ligament Slice",
          },
        },
        ["lightning strikes"] = {
          {
            classes = 8,
            firstRankId = 1616,
            id = 562,
            maxRank = 18,
            name = "Lightning Strikes",
          },
        },
        ["lingering death"] = {
          {
            classes = 1024,
            firstRankId = 13096,
            id = 613,
            maxRank = 4,
            name = "Lingering Death",
          },
        },
        ["living shield"] = {
          {
            classes = 1,
            firstRankId = 586,
            id = 197,
            maxRank = 6,
            name = "Living Shield",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 120,
                    name = "Physical Enhancement",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["lower element"] = {
          {
            classes = 2048,
            firstRankId = 15601,
            id = 1262,
            maxRank = 1,
            name = "Lower Element",
          },
        },
        ["lure of the siren's song"] = {
          {
            classes = 128,
            firstRankId = 13529,
            id = 244,
            maxRank = 1,
            name = "Lure of the Siren's Song",
          },
        },
        ["lyre leap"] = {
          {
            classes = 128,
            firstRankId = 10331,
            id = 8202,
            maxRank = 1,
            name = "Lyre Leap",
          },
        },
        ["lyrical prankster"] = {
          {
            classes = 128,
            firstRankId = 10333,
            id = 8204,
            maxRank = 7,
            name = "Lyrical Prankster",
          },
        },
        ["maestro's concentration"] = {
          {
            classes = 128,
            firstRankId = 6386,
            id = 3819,
            maxRank = 5,
            name = "Maestro's Concentration",
          },
        },
        malosinete = {
          {
            classes = 4608,
            firstRankId = 7903,
            id = 1041,
            maxRank = 3,
            name = "Malosinete",
          },
        },
        ["mana blast"] = {
          {
            classes = 2048,
            firstRankId = 1639,
            id = 793,
            maxRank = 1,
            name = "Mana Blast",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 565,
                    name = "Mana Burn",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["mana blaze"] = {
          {
            classes = 2048,
            firstRankId = 1640,
            id = 794,
            maxRank = 1,
            name = "Mana Blaze",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 793,
                    name = "Mana Blast",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["mana burn"] = {
          {
            classes = 2048,
            firstRankId = 1638,
            id = 565,
            maxRank = 1,
            name = "Mana Burn",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 224,
                    name = "Mental Clarity",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["mana draw"] = {
          {
            classes = 8192,
            firstRankId = 4890,
            id = 616,
            maxRank = 5,
            name = "Mana Draw",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 57,
                    name = "Gather Mana",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["mana overburn"] = {
          {
            classes = 8192,
            firstRankId = 6249,
            id = 3720,
            maxRank = 10,
            name = "Mana Overburn",
          },
        },
        ["mana reserve"] = {
          {
            classes = 4096,
            firstRankId = 15213,
            id = 2065,
            maxRank = 1,
            name = "Mana Reserve",
          },
        },
        ["mark of the mage hunter"] = {
          {
            classes = 1,
            firstRankId = 4849,
            id = 606,
            maxRank = 4,
            name = "Mark of the Mage Hunter",
          },
        },
        ["marr's gift"] = {
          {
            classes = 4,
            firstRankId = 15619,
            id = 1282,
            maxRank = 1,
            name = "Marr's Gift",
          },
        },
        ["marr's salvation"] = {
          {
            classes = 4,
            firstRankId = 13100,
            id = 769,
            maxRank = 2,
            name = "Marr's Salvation",
          },
        },
        ["mass enchant alaran metal"] = {
          {
            classes = 8192,
            firstRankId = 13272,
            grantOnly = true,
            id = 709,
            maxRank = 1,
            name = "Mass Enchant Alaran Metal",
          },
        },
        ["mass enchant cosgrite"] = {
          {
            classes = 8192,
            firstRankId = 7742,
            grantOnly = true,
            id = 3219,
            maxRank = 1,
            name = "Mass Enchant Cosgrite",
          },
        },
        ["mass enchant dwerium"] = {
          {
            classes = 8192,
            firstRankId = 7734,
            grantOnly = true,
            id = 3207,
            maxRank = 1,
            name = "Mass Enchant Dwerium",
          },
        },
        ["mass enchant feymetal"] = {
          {
            classes = 8192,
            firstRankId = 13261,
            grantOnly = true,
            id = 755,
            maxRank = 1,
            name = "Mass Enchant Feymetal",
          },
        },
        ["mass enchant palladium"] = {
          {
            classes = 8192,
            firstRankId = 7737,
            grantOnly = true,
            id = 3204,
            maxRank = 1,
            name = "Mass Enchant Palladium",
          },
        },
        ["mass enchant planar alloy"] = {
          {
            classes = 8192,
            firstRankId = 14374,
            grantOnly = true,
            id = 1801,
            maxRank = 1,
            name = "Mass Enchant Planar Alloy",
          },
        },
        ["mass enchant temporite"] = {
          {
            classes = 8192,
            firstRankId = 7740,
            grantOnly = true,
            id = 3210,
            maxRank = 1,
            name = "Mass Enchant Temporite",
          },
        },
        ["mass group buff"] = {
          {
            classes = 30254,
            firstRankId = 128,
            id = 35,
            maxRank = 1,
            name = "Mass Group Buff",
          },
        },
        ["massive strike"] = {
          {
            classes = 256,
            firstRankId = 10850,
            id = 9300,
            maxRank = 7,
            name = "Massive Strike",
          },
        },
        ["master of disguise"] = {
          {
            classes = 384,
            firstRankId = 1092,
            id = 353,
            maxRank = 1,
            name = "Master of Disguise",
          },
        },
        ["master's hastened combination"] = {
          {
            classes = 64,
            firstRankId = 6343,
            id = 3520,
            maxRank = 6,
            name = "Master's Hastened Combination",
          },
        },
        ["mastery of nature"] = {
          {
            classes = 32,
            firstRankId = 7980,
            id = 1090,
            maxRank = 3,
            name = "Mastery of Nature",
          },
        },
        ["medium modulation shard"] = {
          {
            classes = 4096,
            firstRankId = 12964,
            id = 597,
            maxRank = 1,
            name = "Medium Modulation Shard",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 596,
                    name = "Small Modulation Shard",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["mend companion"] = {
          {
            classes = 21504,
            firstRankId = 163,
            id = 58,
            maxRank = 1,
            name = "Mend Companion",
          },
        },
        ["mental contortion"] = {
          {
            classes = 8192,
            firstRankId = 12938,
            id = 602,
            maxRank = 1,
            name = "Mental Contortion",
          },
        },
        ["merciless blade"] = {
          {
            classes = 1,
            firstRankId = 14026,
            id = 928,
            maxRank = 1,
            name = "Merciless Blade",
          },
        },
        ["mercurial torment"] = {
          {
            classes = 1024,
            firstRankId = 12766,
            id = 430,
            maxRank = 2,
            name = "Mercurial Torment",
          },
        },
        ["mesmerization mastery"] = {
          {
            classes = 8192,
            firstRankId = 781,
            id = 263,
            maxRank = 4,
            name = "Mesmerization Mastery",
          },
        },
        ["mind crash"] = {
          {
            classes = 2048,
            firstRankId = 1334,
            id = 451,
            maxRank = 13,
            name = "Mind Crash",
          },
        },
        ["mind over matter"] = {
          {
            classes = 8192,
            firstRankId = 1242,
            id = 413,
            maxRank = 13,
            name = "Mind Over Matter",
            prerequisiteRules = {
              {
                maxRank = 13,
                minRank = 1,
                requires = {
                  {
                    id = 173,
                    name = "Eldritch Rune",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["mirrored pestilence"] = {
          {
            classes = 1552,
            firstRankId = 13684,
            id = 763,
            maxRank = 3,
            name = "Mirrored Pestilence",
          },
        },
        ["mithaniel's binding"] = {
          {
            classes = 32769,
            firstRankId = 537,
            id = 181,
            maxRank = 2,
            name = "Mithaniel's Binding",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 112,
                    name = "Bandage Wound",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["mortal coil"] = {
          {
            classes = 16,
            firstRankId = 5085,
            id = 697,
            maxRank = 12,
            name = "Mortal Coil",
          },
        },
        ["moving mountains"] = {
          {
            classes = 64,
            firstRankId = 13130,
            id = 797,
            maxRank = 1,
            name = "Moving Mountains",
          },
        },
        ["mrylokar's rigor"] = {
          {
            classes = 256,
            firstRankId = 15512,
            id = 1174,
            maxRank = 1,
            name = "Mrylokar's Rigor",
          },
        },
        ["natural invisibility"] = {
          {
            classes = 16384,
            firstRankId = 6970,
            id = 980,
            maxRank = 1,
            name = "Natural Invisibility",
          },
        },
        ["nature's blessing"] = {
          {
            classes = 32,
            firstRankId = 12655,
            id = 393,
            maxRank = 1,
            name = "Nature's Blessing",
          },
        },
        ["nature's boon"] = {
          {
            classes = 32,
            firstRankId = 757,
            id = 257,
            maxRank = 18,
            name = "Nature's Boon",
          },
        },
        ["nature's bounty"] = {
          {
            classes = 40,
            firstRankId = 1230,
            id = 406,
            maxRank = 6,
            name = "Nature's Bounty",
          },
        },
        ["nature's fury"] = {
          {
            classes = 32,
            firstRankId = 12661,
            id = 386,
            maxRank = 1,
            name = "Nature's Fury",
          },
        },
        ["nature's guardian"] = {
          {
            classes = 32,
            firstRankId = 1498,
            id = 520,
            maxRank = 16,
            name = "Nature's Guardian",
          },
        },
        ["nature's reprieve"] = {
          {
            classes = 8,
            firstRankId = 10388,
            id = 3211,
            maxRank = 2,
            name = "Nature's Reprieve",
          },
        },
        ["nature's salve"] = {
          {
            classes = 16384,
            firstRankId = 10377,
            id = 8303,
            maxRank = 4,
            name = "Nature's Salve",
          },
        },
        necropotence = {
          {
            classes = 1024,
            firstRankId = 18996,
            id = 17790,
            maxRank = 1,
            name = "Necropotence",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 792,
                    name = "Army of the Dead",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["nerves of steel"] = {
          {
            classes = 256,
            firstRankId = 1307,
            id = 440,
            maxRank = 11,
            name = "Nerves of Steel",
          },
        },
        ["neshika's blink"] = {
          {
            classes = 64,
            firstRankId = 7869,
            id = 1011,
            maxRank = 3,
            name = "Neshika's Blink",
          },
        },
        netherstep = {
          {
            classes = 2048,
            firstRankId = 11055,
            id = 9701,
            maxRank = 1,
            name = "Netherstep",
          },
        },
        ["nexus gate"] = {
          {
            classes = 2048,
            firstRankId = 156,
            id = 53,
            maxRank = 1,
            name = "Nexus Gate",
          },
        },
        ["nightmare stasis"] = {
          {
            classes = 8192,
            firstRankId = 4894,
            id = 748,
            maxRank = 10,
            name = "Nightmare Stasis",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 409,
                    name = "Stasis",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["nimble evasion"] = {
          {
            classes = 256,
            firstRankId = 606,
            id = 205,
            maxRank = 5,
            name = "Nimble Evasion",
          },
        },
        ["noteworthy disguise: drake"] = {
          {
            classes = 128,
            firstRankId = 14192,
            id = 772,
            maxRank = 1,
            name = "Noteworthy Disguise: Drake",
          },
        },
        ["outrider's accuracy"] = {
          {
            classes = 8,
            firstRankId = 6370,
            id = 3804,
            maxRank = 7,
            name = "Outrider's Accuracy",
          },
        },
        ["outrider's attack"] = {
          {
            classes = 8,
            firstRankId = 6754,
            id = 872,
            maxRank = 3,
            name = "Outrider's Attack",
          },
        },
        ["outrider's evasion"] = {
          {
            classes = 8,
            firstRankId = 6764,
            id = 876,
            maxRank = 3,
            name = "Outrider's Evasion",
          },
        },
        ["overpower undead"] = {
          {
            classes = 1024,
            firstRankId = 6822,
            id = 903,
            maxRank = 2,
            name = "Overpower Undead",
          },
        },
        ["overpowering strikes"] = {
          {
            classes = 6,
            firstRankId = 10453,
            id = 8501,
            maxRank = 4,
            name = "Overpowering Strikes",
          },
        },
        ["pack hunt"] = {
          {
            classes = 8,
            firstRankId = 6758,
            id = 874,
            maxRank = 7,
            name = "Pack Hunt",
          },
        },
        ["pact of the wolf"] = {
          {
            classes = 512,
            firstRankId = 5109,
            id = 707,
            maxRank = 5,
            name = "Pact of the Wolf",
          },
        },
        ["pact of the wurine"] = {
          {
            classes = 16384,
            firstRankId = 6218,
            id = 3709,
            maxRank = 3,
            name = "Pact of the Wurine",
          },
        },
        ["paragon of spirit"] = {
          {
            classes = 16384,
            firstRankId = 291,
            id = 128,
            maxRank = 17,
            name = "Paragon of Spirit",
          },
        },
        ["paralytic spores"] = {
          {
            classes = 544,
            firstRankId = 14264,
            id = 403,
            maxRank = 1,
            name = "Paralytic Spores",
          },
        },
        ["pathfinder's grace"] = {
          {
            classes = 8,
            firstRankId = 7748,
            id = 7748,
            maxRank = 3,
            name = "Pathfinder's Grace",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 13,
                    name = "Innate Run Speed",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        pathosis = {
          {
            classes = 512,
            firstRankId = 14232,
            id = 148,
            maxRank = 1,
            name = "Pathosis",
          },
        },
        ["peaceful convergence of spirits"] = {
          {
            classes = 32,
            firstRankId = 10427,
            id = 10427,
            maxRank = 1,
            name = "Peaceful Convergence of Spirits",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 519,
                    name = "Convergence of Spirits",
                    points = 15,
                  },
                },
              },
            },
          },
        },
        ["peaceful spirit of the wood"] = {
          {
            classes = 32,
            firstRankId = 10426,
            id = 10426,
            maxRank = 1,
            name = "Peaceful Spirit of the Wood",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 185,
                    name = "Spirit of the Wood",
                    points = 18,
                  },
                },
              },
            },
          },
        },
        ["perfected dead man floating"] = {
          {
            classes = 1024,
            firstRankId = 13692,
            id = 2709,
            maxRank = 1,
            name = "Perfected Dead Man Floating",
          },
        },
        ["perfected invisibility"] = {
          {
            classes = 14336,
            firstRankId = 7069,
            id = 3812,
            maxRank = 1,
            name = "Perfected Invisibility",
          },
        },
        ["perfected invisibility to undead"] = {
          {
            classes = 14336,
            firstRankId = 14282,
            id = 291,
            maxRank = 1,
            name = "Perfected Invisibility to Undead",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3812,
                    name = "Perfected Invisibility",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["permanent illusion"] = {
          {
            classes = 8192,
            firstRankId = 158,
            id = 55,
            maxRank = 1,
            name = "Permanent Illusion",
          },
        },
        ["pestilent paralysis"] = {
          {
            classes = 1024,
            firstRankId = 12770,
            id = 431,
            maxRank = 3,
            name = "Pestilent Paralysis",
          },
        },
        ["pet discipline"] = {
          {
            classes = 30256,
            firstRankId = 288,
            id = 125,
            maxRank = 1,
            name = "Pet Discipline",
          },
          {
            classes = 8192,
            firstRankId = 7733,
            id = 3202,
            maxRank = 1,
            name = "Pet Discipline",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 195,
                    name = "Animation Empathy",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["phantasmal opponent"] = {
          {
            classes = 8192,
            firstRankId = 8034,
            id = 1122,
            maxRank = 1,
            name = "Phantasmal Opponent",
          },
        },
        ["phantasmic reflex"] = {
          {
            classes = 8192,
            firstRankId = 10551,
            id = 8701,
            maxRank = 4,
            name = "Phantasmic Reflex",
          },
        },
        ["physical enhancement"] = {
          {
            classes = 49629,
            firstRankId = 279,
            id = 120,
            maxRank = 2,
            name = "Physical Enhancement",
          },
        },
        ["planar durability"] = {
          {
            classes = 1,
            firstRankId = 423,
            id = 143,
            maxRank = 3,
            name = "Planar Durability",
          },
          {
            classes = 32788,
            firstRankId = 952,
            id = 315,
            maxRank = 3,
            name = "Planar Durability",
          },
          {
            classes = 72,
            firstRankId = 6422,
            id = 3865,
            maxRank = 3,
            name = "Planar Durability",
          },
          {
            classes = 16768,
            firstRankId = 6467,
            id = 7106,
            maxRank = 3,
            name = "Planar Durability",
          },
        },
        ["playing possum"] = {
          {
            classes = 16384,
            firstRankId = 11073,
            id = 11073,
            maxRank = 2,
            name = "Playing Possum",
          },
        },
        ["poison arrows"] = {
          {
            classes = 8,
            firstRankId = 10736,
            id = 927,
            maxRank = 2,
            name = "Poison Arrows",
          },
        },
        ["powerful elixirs"] = {
          {
            classes = 2,
            firstRankId = 6113,
            id = 996,
            maxRank = 3,
            name = "Powerful Elixirs",
          },
        },
        ["precise blow"] = {
          {
            classes = 32768,
            firstRankId = 5776,
            id = 3525,
            maxRank = 7,
            name = "Precise Blow",
          },
        },
        ["precise strikes"] = {
          {
            classes = 256,
            firstRankId = 1543,
            id = 537,
            maxRank = 21,
            name = "Precise Strikes",
            prerequisiteRules = {
              {
                maxRank = 21,
                minRank = 1,
                requires = {
                  {
                    id = 439,
                    name = "Precision",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        precision = {
          {
            classes = 256,
            firstRankId = 1304,
            id = 439,
            maxRank = 15,
            name = "Precision",
          },
        },
        ["precision of axes"] = {
          {
            classes = 32768,
            firstRankId = 4809,
            id = 7060,
            maxRank = 7,
            name = "Precision of Axes",
          },
        },
        ["precision of the pathfinder"] = {
          {
            classes = 8,
            firstRankId = 864,
            id = 287,
            maxRank = 15,
            name = "Precision of the Pathfinder",
          },
        },
        preincarnation = {
          {
            classes = 544,
            firstRankId = 14233,
            id = 149,
            maxRank = 1,
            name = "Preincarnation",
          },
        },
        ["press the attack"] = {
          {
            classes = 1,
            firstRankId = 1351,
            id = 467,
            maxRank = 4,
            name = "Press the Attack",
          },
        },
        ["pressure points"] = {
          {
            classes = 64,
            firstRankId = 14157,
            id = 807,
            maxRank = 1,
            name = "Pressure Points",
          },
        },
        ["primal fury"] = {
          {
            classes = 16384,
            firstRankId = 13485,
            id = 242,
            maxRank = 1,
            name = "Primal Fury",
          },
        },
        ["profound visage"] = {
          {
            classes = 8192,
            firstRankId = 12920,
            id = 530,
            maxRank = 1,
            name = "Profound Visage",
          },
        },
        ["project illusion"] = {
          {
            classes = 8192,
            firstRankId = 643,
            id = 217,
            maxRank = 1,
            name = "Project Illusion",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 55,
                    name = "Permanent Illusion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["projection of doom"] = {
          {
            classes = 16,
            firstRankId = 10352,
            id = 3215,
            maxRank = 2,
            name = "Projection of Doom",
          },
        },
        ["projection of fury"] = {
          {
            classes = 1,
            firstRankId = 10351,
            id = 3213,
            maxRank = 2,
            name = "Projection of Fury",
          },
        },
        ["projection of piety"] = {
          {
            classes = 4,
            firstRankId = 10353,
            id = 3216,
            maxRank = 2,
            name = "Projection of Piety",
          },
        },
        ["prolonged destruction"] = {
          {
            classes = 2048,
            firstRankId = 1337,
            id = 452,
            maxRank = 7,
            name = "Prolonged Destruction",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 308,
                    name = "Frenzied Devastation",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["protection of direwood"] = {
          {
            classes = 32,
            firstRankId = 6232,
            id = 3714,
            maxRank = 2,
            name = "Protection of Direwood",
          },
        },
        ["protection of the spirit wolf"] = {
          {
            classes = 8,
            firstRankId = 5007,
            id = 778,
            maxRank = 14,
            name = "Protection of the Spirit Wolf",
          },
        },
        ["protection of the warder"] = {
          {
            classes = 16384,
            firstRankId = 10374,
            id = 8302,
            maxRank = 5,
            name = "Protection of the Warder",
          },
        },
        ["punch mastery"] = {
          {
            classes = 64,
            firstRankId = 6020,
            id = 3511,
            maxRank = 24,
            name = "Punch Mastery",
          },
        },
        ["purge poison"] = {
          {
            classes = 256,
            firstRankId = 254,
            id = 107,
            maxRank = 1,
            name = "Purge Poison",
          },
        },
        purification = {
          {
            classes = 4,
            firstRankId = 863,
            id = 286,
            maxRank = 1,
            name = "Purification",
          },
        },
        ["purified spirits"] = {
          {
            classes = 546,
            firstRankId = 13004,
            id = 626,
            maxRank = 2,
            name = "Purified Spirits",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 1,
                requires = {
                  {
                    id = 153,
                    name = "Radiant Cure",
                    points = 9,
                  },
                },
              },
            },
          },
        },
        ["purify body"] = {
          {
            classes = 64,
            firstRankId = 233,
            id = 98,
            maxRank = 1,
            name = "Purify Body",
          },
        },
        ["purify soul"] = {
          {
            classes = 2,
            firstRankId = 136,
            id = 41,
            maxRank = 2,
            name = "Purify Soul",
            prerequisiteRules = {
              {
                maxRank = 2,
                minRank = 2,
                requires = {
                  {
                    id = 19,
                    name = "Healing Gift",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["purity of death"] = {
          {
            classes = 16,
            firstRankId = 15177,
            id = 2031,
            maxRank = 1,
            name = "Purity of Death",
          },
        },
        pyromancy = {
          {
            classes = 2048,
            firstRankId = 1478,
            id = 514,
            maxRank = 13,
            name = "Pyromancy",
          },
        },
        ["quick damage"] = {
          {
            classes = 6176,
            firstRankId = 141,
            id = 44,
            maxRank = 5,
            name = "Quick Damage",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 23,
                    name = "Spell Casting Fury",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 1024,
            firstRankId = 15622,
            id = 1271,
            maxRank = 1,
            name = "Quick Damage",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 23,
                    name = "Spell Casting Fury",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["quick evacuation"] = {
          {
            classes = 2080,
            firstRankId = 137,
            id = 42,
            maxRank = 3,
            name = "Quick Evacuation",
          },
        },
        ["quick mass group buff"] = {
          {
            classes = 8192,
            firstRankId = 782,
            id = 264,
            maxRank = 3,
            name = "Quick Mass Group Buff",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 35,
                    name = "Mass Group Buff",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quick mezz"] = {
          {
            classes = 8192,
            firstRankId = 15493,
            id = 2208,
            maxRank = 1,
            name = "Quick Mezz",
          },
        },
        ["quick summoning"] = {
          {
            classes = 4096,
            firstRankId = 655,
            id = 223,
            maxRank = 3,
            name = "Quick Summoning",
          },
        },
        ["quick time"] = {
          {
            classes = 128,
            firstRankId = 6201,
            id = 3702,
            maxRank = 3,
            name = "Quick Time",
          },
        },
        ["quickened army of the dead"] = {
          {
            classes = 1024,
            firstRankId = 10434,
            id = 10434,
            maxRank = 3,
            name = "Quickened Army of the Dead",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 792,
                    name = "Army of the Dead",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened auspice of the hunter"] = {
          {
            classes = 8,
            firstRankId = 15253,
            id = 2036,
            maxRank = 1,
            name = "Quickened Auspice of the Hunter",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 462,
                    name = "Auspice of the Hunter",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened blessing of ressurection"] = {
          {
            classes = 2,
            firstRankId = 10456,
            id = 8502,
            maxRank = 3,
            name = "Quickened Blessing of Ressurection",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 3800,
                    name = "Blessing of Resurrection",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened blessing of ro"] = {
          {
            classes = 32,
            firstRankId = 15389,
            id = 2056,
            maxRank = 1,
            name = "Quickened Blessing of Ro",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 935,
                    name = "Blessing of Ro",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened blood of avoling"] = {
          {
            classes = 512,
            firstRankId = 7695,
            id = 7695,
            maxRank = 3,
            name = "Quickened Blood of Avoling",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 862,
                    name = "Quickened Blood of Nadox",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["quickened blood of nadox"] = {
          {
            classes = 512,
            firstRankId = 6709,
            id = 862,
            maxRank = 3,
            name = "Quickened Blood of Nadox",
          },
        },
        ["quickened call of the wild"] = {
          {
            classes = 544,
            firstRankId = 6514,
            id = 3824,
            maxRank = 3,
            name = "Quickened Call of the Wild",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 404,
                    name = "Call of the Wild",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened cover tracks"] = {
          {
            classes = 8,
            firstRankId = 15295,
            id = 2042,
            maxRank = 1,
            name = "Quickened Cover Tracks",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2234,
                    name = "Cover Tracks",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened death bloom"] = {
          {
            classes = 1024,
            firstRankId = 14318,
            id = 703,
            maxRank = 1,
            name = "Quickened Death Bloom",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7703,
                    name = "Death Bloom",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened demand for honor"] = {
          {
            classes = 4,
            firstRankId = 15150,
            id = 2020,
            maxRank = 1,
            name = "Quickened Demand For Honor",
          },
        },
        ["quickened focused paragon of spirit"] = {
          {
            classes = 16384,
            firstRankId = 15406,
            id = 2059,
            maxRank = 1,
            name = "Quickened Focused Paragon of Spirit",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3817,
                    name = "Focused Paragon of Spirits",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened frenzied burnout"] = {
          {
            classes = 4096,
            firstRankId = 14289,
            id = 297,
            maxRank = 1,
            name = "Quickened Frenzied Burnout",
          },
        },
        ["quickened harvest of druzzil"] = {
          {
            classes = 2048,
            firstRankId = 6503,
            id = 3821,
            maxRank = 4,
            name = "Quickened Harvest of Druzzil",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 172,
                    name = "Harvest of Druzzil",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened host of the elements"] = {
          {
            classes = 4096,
            firstRankId = 14292,
            id = 312,
            maxRank = 1,
            name = "Quickened Host of the Elements",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 207,
                    name = "Host of the Elements",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened levant"] = {
          {
            classes = 1024,
            firstRankId = 15591,
            id = 1258,
            maxRank = 1,
            name = "Quickened Levant",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2899,
                    name = "Levant",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened malosinete"] = {
          {
            classes = 512,
            firstRankId = 8335,
            id = 8335,
            maxRank = 5,
            name = "Quickened Malosinete",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 1041,
                    name = "Malosinete",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened nature's salve"] = {
          {
            classes = 16384,
            firstRankId = 12849,
            id = 460,
            maxRank = 1,
            name = "Quickened Nature's Salve",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 8303,
                    name = "Nature's Salve",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened paragon of spirit"] = {
          {
            classes = 16384,
            firstRankId = 12831,
            id = 457,
            maxRank = 1,
            name = "Quickened Paragon of Spirit",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 128,
                    name = "Paragon of Spirit",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened requiem of time"] = {
          {
            classes = 128,
            firstRankId = 15517,
            id = 1177,
            maxRank = 1,
            name = "Quickened Requiem of Time",
          },
        },
        ["quickened scent of terris"] = {
          {
            classes = 1024,
            firstRankId = 13689,
            id = 765,
            maxRank = 1,
            name = "Quickened Scent of Terris",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 751,
                    name = "Scent of Terris",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened scourge skin"] = {
          {
            classes = 16,
            firstRankId = 15179,
            id = 2032,
            maxRank = 1,
            name = "Quickened Scourge Skin",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7755,
                    name = "Scourge Skin",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened spirit calling"] = {
          {
            classes = 512,
            firstRankId = 14225,
            id = 140,
            maxRank = 1,
            name = "Quickened Spirit Calling",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 177,
                    name = "Spirit Call",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened stasis"] = {
          {
            classes = 8192,
            firstRankId = 14283,
            id = 293,
            maxRank = 1,
            name = "Quickened Stasis",
          },
        },
        ["quickened stuns"] = {
          {
            classes = 4,
            firstRankId = 14100,
            id = 663,
            maxRank = 1,
            name = "Quickened Stuns",
          },
        },
        ["quickened summon axes"] = {
          {
            classes = 32768,
            firstRankId = 6452,
            id = 3839,
            maxRank = 3,
            name = "Quickened Summon Axes",
          },
        },
        ["quickened suspend minion"] = {
          {
            classes = 30224,
            firstRankId = 6445,
            id = 3838,
            maxRank = 3,
            name = "Quickened Suspend Minion",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 176,
                    name = "Suspended Minion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickened turn undead"] = {
          {
            classes = 2,
            firstRankId = 10470,
            id = 991,
            maxRank = 3,
            name = "Quickened Turn Undead",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 558,
                    name = "Turn Undead",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["quickening of death"] = {
          {
            classes = 1024,
            firstRankId = 839,
            id = 279,
            maxRank = 20,
            name = "Quickening of Death",
          },
        },
        ["quiet miracle"] = {
          {
            classes = 2,
            firstRankId = 14206,
            id = 135,
            maxRank = 1,
            name = "Quiet Miracle",
          },
        },
        ["rabid bear"] = {
          {
            classes = 512,
            firstRankId = 153,
            id = 50,
            maxRank = 9,
            name = "Rabid Bear",
          },
        },
        ["rage of rallos zek"] = {
          {
            classes = 1,
            firstRankId = 8303,
            id = 131,
            maxRank = 1,
            name = "Rage of Rallos Zek",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["ragged bite of agony"] = {
          {
            classes = 16,
            firstRankId = 15646,
            id = 1279,
            maxRank = 1,
            name = "Ragged Bite of Agony",
          },
        },
        ["rake's deadly aim"] = {
          {
            classes = 256,
            firstRankId = 6322,
            id = 3513,
            maxRank = 3,
            name = "Rake's Deadly Aim",
          },
        },
        ["rake's powerful aim"] = {
          {
            classes = 256,
            firstRankId = 6334,
            id = 3517,
            maxRank = 3,
            name = "Rake's Powerful Aim",
          },
        },
        rampage = {
          {
            classes = 32769,
            firstRankId = 258,
            id = 109,
            maxRank = 2,
            name = "Rampage",
          },
        },
        ["ranged finesse"] = {
          {
            classes = 8,
            firstRankId = 6765,
            id = 877,
            maxRank = 9,
            name = "Ranged Finesse",
          },
        },
        ["rapid defiance"] = {
          {
            classes = 1,
            firstRankId = 6136,
            grantOnly = true,
            id = 3600,
            maxRank = 1,
            name = "Rapid Defiance",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 300,
                    name = "Warlord's Tenacity",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["rapid feign"] = {
          {
            classes = 64,
            firstRankId = 237,
            id = 100,
            maxRank = 3,
            name = "Rapid Feign",
          },
        },
        ["rapid strikes"] = {
          {
            classes = 64,
            firstRankId = 815,
            id = 273,
            maxRank = 19,
            name = "Rapid Strikes",
          },
        },
        ["raven's claw"] = {
          {
            classes = 16384,
            firstRankId = 6985,
            id = 987,
            maxRank = 4,
            name = "Raven's Claw",
          },
        },
        ["reactive rune"] = {
          {
            classes = 8192,
            firstRankId = 15496,
            id = 2209,
            maxRank = 1,
            name = "Reactive Rune",
          },
        },
        ["reckless abandon"] = {
          {
            classes = 32768,
            firstRankId = 6219,
            id = 3710,
            maxRank = 3,
            name = "Reckless Abandon",
          },
        },
        ["recourse of life"] = {
          {
            classes = 2,
            firstRankId = 6601,
            id = 3840,
            maxRank = 19,
            name = "Recourse of Life",
          },
        },
        ["rejuvenation of spirit"] = {
          {
            classes = 544,
            firstRankId = 15362,
            id = 2051,
            maxRank = 1,
            name = "Rejuvenation of Spirit",
          },
        },
        ["reluctant benevolence"] = {
          {
            classes = 1024,
            firstRankId = 10701,
            id = 9001,
            maxRank = 7,
            name = "Reluctant Benevolence",
          },
        },
        ["repel the wicked"] = {
          {
            classes = 2,
            firstRankId = 14207,
            id = 136,
            maxRank = 1,
            name = "Repel the Wicked",
          },
        },
        ["replenish companion"] = {
          {
            classes = 21504,
            firstRankId = 1126,
            id = 418,
            maxRank = 10,
            name = "Replenish Companion",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 58,
                    name = "Mend Companion",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["resounding dirge"] = {
          {
            classes = 128,
            firstRankId = 12737,
            id = 427,
            maxRank = 4,
            name = "Resounding Dirge",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 3701,
                    name = "Dirge of the Sleepwalker",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["resplendent glory"] = {
          {
            classes = 1,
            firstRankId = 8300,
            id = 130,
            maxRank = 4,
            name = "Resplendent Glory",
          },
        },
        ["rest the dead"] = {
          {
            classes = 1040,
            firstRankId = 15574,
            id = 1255,
            maxRank = 4,
            name = "Rest the Dead",
          },
        },
        ["restoration of life"] = {
          {
            classes = 4,
            firstRankId = 14010,
            id = 1023,
            maxRank = 1,
            name = "Restoration of Life",
          },
        },
        ["return bash"] = {
          {
            classes = 5,
            firstRankId = 6266,
            id = 3724,
            maxRank = 3,
            name = "Return Bash",
          },
        },
        ["return kick"] = {
          {
            classes = 64,
            firstRankId = 240,
            id = 101,
            maxRank = 3,
            name = "Return Kick",
          },
        },
        ["righteous zeal"] = {
          {
            classes = 2,
            firstRankId = 6082,
            id = 993,
            maxRank = 3,
            name = "Righteous Zeal",
          },
        },
        ["rise of bones"] = {
          {
            classes = 1024,
            firstRankId = 6815,
            id = 900,
            maxRank = 10,
            name = "Rise of Bones",
          },
        },
        ["ro's fiery blessing"] = {
          {
            classes = 2048,
            firstRankId = 12887,
            id = 507,
            maxRank = 1,
            name = "Ro's Fiery Blessing",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 303,
                    name = "Ro's Flaming Familiar",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["ro's flaming familiar"] = {
          {
            classes = 2048,
            firstRankId = 921,
            id = 303,
            maxRank = 5,
            name = "Ro's Flaming Familiar",
          },
        },
        ["roar of thunder"] = {
          {
            classes = 16384,
            firstRankId = 1119,
            id = 362,
            maxRank = 16,
            name = "Roar of Thunder",
          },
        },
        ["rogue triple attack skillup test"] = {
          {
            classes = 256,
            firstRankId = 10410,
            grantOnly = true,
            id = 10410,
            maxRank = 1,
            name = "Rogue Triple Attack Skillup Test",
          },
        },
        ["rogue's fury"] = {
          {
            classes = 256,
            firstRankId = 6325,
            id = 3514,
            maxRank = 6,
            name = "Rogue's Fury",
          },
        },
        ["rune of banishment"] = {
          {
            classes = 8192,
            firstRankId = 15475,
            id = 2200,
            maxRank = 1,
            name = "Rune of Banishment",
          },
        },
        ["rush to judgment"] = {
          {
            classes = 4,
            firstRankId = 583,
            id = 196,
            maxRank = 3,
            name = "Rush to Judgment",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 73,
                    name = "Divine Stun",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["sanctified blessing"] = {
          {
            classes = 2,
            firstRankId = 7948,
            id = 1064,
            maxRank = 7,
            name = "Sanctified Blessing",
          },
        },
        sanctuary = {
          {
            classes = 2,
            firstRankId = 1209,
            id = 396,
            maxRank = 1,
            name = "Sanctuary",
          },
        },
        ["sanguine mind crystal"] = {
          {
            classes = 8192,
            firstRankId = 4934,
            id = 632,
            maxRank = 4,
            name = "Sanguine Mind Crystal",
          },
        },
        ["savage spirit"] = {
          {
            classes = 32768,
            firstRankId = 1348,
            id = 465,
            maxRank = 7,
            name = "Savage Spirit",
          },
        },
        ["scent of terris"] = {
          {
            classes = 1024,
            firstRankId = 13225,
            id = 751,
            maxRank = 2,
            name = "Scent of Terris",
          },
        },
        ["scintillating beam"] = {
          {
            classes = 8192,
            firstRankId = 14346,
            id = 556,
            maxRank = 1,
            name = "Scintillating Beam",
          },
        },
        ["scourge skin"] = {
          {
            classes = 16,
            firstRankId = 7755,
            id = 7755,
            maxRank = 2,
            name = "Scourge Skin",
          },
        },
        ["scout's mastery of blunt weapons"] = {
          {
            classes = 8,
            firstRankId = 10821,
            id = 9207,
            maxRank = 5,
            name = "Scout's Mastery of Blunt Weapons",
          },
        },
        ["scout's mastery of fire"] = {
          {
            classes = 8,
            firstRankId = 10806,
            id = 9202,
            maxRank = 4,
            name = "Scout's Mastery of Fire",
          },
        },
        ["scout's mastery of ice"] = {
          {
            classes = 8,
            firstRankId = 10809,
            id = 9203,
            maxRank = 4,
            name = "Scout's Mastery of Ice",
          },
        },
        ["scout's mastery of piercing"] = {
          {
            classes = 256,
            firstRankId = 14141,
            id = 716,
            maxRank = 1,
            name = "Scout's Mastery of Piercing",
          },
          {
            classes = 8,
            firstRankId = 10818,
            id = 9206,
            maxRank = 5,
            name = "Scout's Mastery of Piercing",
          },
        },
        ["scout's mastery of slashing"] = {
          {
            classes = 8,
            firstRankId = 10815,
            id = 9205,
            maxRank = 5,
            name = "Scout's Mastery of Slashing",
          },
        },
        ["scribble notes"] = {
          {
            classes = 128,
            firstRankId = 286,
            id = 123,
            maxRank = 1,
            name = "Scribble Notes",
          },
        },
        ["second wind ward"] = {
          {
            classes = 21504,
            firstRankId = 15214,
            id = 2066,
            maxRank = 1,
            name = "Second Wind Ward",
          },
        },
        ["secondary recall"] = {
          {
            classes = 2080,
            firstRankId = 1229,
            id = 405,
            maxRank = 1,
            name = "Secondary Recall",
          },
        },
        ["seized opportunity"] = {
          {
            classes = 256,
            firstRankId = 878,
            id = 790,
            maxRank = 15,
            name = "Seized Opportunity",
          },
        },
        ["self preservation"] = {
          {
            classes = 32768,
            firstRankId = 10400,
            id = 8400,
            maxRank = 2,
            name = "Self Preservation",
          },
        },
        ["self stasis"] = {
          {
            classes = 8192,
            firstRankId = 8030,
            id = 1120,
            maxRank = 1,
            name = "Self Stasis",
          },
        },
        ["selo's enduring cadence"] = {
          {
            classes = 128,
            firstRankId = 1627,
            id = 560,
            maxRank = 3,
            name = "Selo's Enduring Cadence",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 13,
                    name = "Innate Run Speed",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["selo's kick"] = {
          {
            classes = 128,
            firstRankId = 10336,
            id = 8205,
            maxRank = 7,
            name = "Selo's Kick",
            prerequisiteRules = {
              {
                maxRank = 7,
                minRank = 1,
                requires = {
                  {
                    id = 941,
                    name = "Flurry",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["selo's sonata"] = {
          {
            classes = 128,
            firstRankId = 6205,
            id = 3704,
            maxRank = 1,
            name = "Selo's Sonata",
          },
        },
        ["sense the dead"] = {
          {
            classes = 1030,
            firstRankId = 10754,
            id = 9102,
            maxRank = 1,
            name = "Sense the Dead",
          },
        },
        ["servant of ro"] = {
          {
            classes = 4096,
            firstRankId = 520,
            id = 174,
            maxRank = 18,
            name = "Servant of Ro",
          },
        },
        ["sha's reprisal"] = {
          {
            classes = 16384,
            firstRankId = 15425,
            id = 1269,
            maxRank = 1,
            name = "Sha's Reprisal",
          },
        },
        ["shackles of tunare"] = {
          {
            classes = 4,
            firstRankId = 10393,
            id = 10393,
            maxRank = 1,
            name = "Shackles of Tunare",
          },
        },
        ["shadow curse"] = {
          {
            classes = 16,
            firstRankId = 18998,
            id = 17792,
            maxRank = 1,
            name = "Shadow Curse",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 442,
                    name = "Touch of the Cursed",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["shamanic tongues"] = {
          {
            classes = 512,
            firstRankId = 18999,
            id = 17793,
            maxRank = 1,
            name = "Shamanic Tongues",
          },
        },
        ["shared camouflage"] = {
          {
            classes = 40,
            firstRankId = 1494,
            id = 518,
            maxRank = 1,
            name = "Shared Camouflage",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 80,
                    name = "Innate Camouflage",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["shared health"] = {
          {
            classes = 4096,
            firstRankId = 785,
            id = 265,
            maxRank = 6,
            name = "Shared Health",
          },
        },
        ["shauri's sonorious clouding"] = {
          {
            classes = 128,
            firstRankId = 13527,
            id = 231,
            maxRank = 1,
            name = "Shauri's Sonorious Clouding",
          },
        },
        ["shield of brilliance"] = {
          {
            classes = 4,
            firstRankId = 14071,
            id = 657,
            maxRank = 1,
            name = "Shield of Brilliance",
          },
        },
        ["shield of notes"] = {
          {
            classes = 128,
            firstRankId = 1116,
            id = 361,
            maxRank = 19,
            name = "Shield of Notes",
          },
        },
        ["shield of reverence"] = {
          {
            classes = 2,
            firstRankId = 15338,
            id = 2045,
            maxRank = 1,
            name = "Shield of Reverence",
          },
        },
        ["shield of the elements"] = {
          {
            classes = 4096,
            firstRankId = 12971,
            id = 603,
            maxRank = 5,
            name = "Shield of the Elements",
          },
        },
        ["shield specialist"] = {
          {
            classes = 5,
            firstRankId = 4844,
            id = 605,
            maxRank = 13,
            name = "Shield Specialist",
            prerequisiteRules = {
              {
                maxRank = 13,
                minRank = 1,
                requires = {
                  {
                    id = 435,
                    name = "Shield Block",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 20,
            firstRankId = 4666,
            id = 4666,
            maxRank = 5,
            name = "Shield Specialist",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 435,
                    name = "Shield Block",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["shifting elements"] = {
          {
            classes = 4096,
            firstRankId = 5276,
            id = 757,
            maxRank = 4,
            name = "Shifting Elements",
          },
        },
        shrink = {
          {
            classes = 512,
            firstRankId = 14224,
            id = 675,
            maxRank = 1,
            name = "Shrink",
          },
        },
        ["shroud of stealth"] = {
          {
            classes = 256,
            firstRankId = 605,
            id = 204,
            maxRank = 1,
            name = "Shroud of Stealth",
          },
        },
        ["silent displacement"] = {
          {
            classes = 128,
            firstRankId = 15521,
            id = 1178,
            maxRank = 1,
            name = "Silent Displacement",
          },
        },
        ["silent presence"] = {
          {
            classes = 512,
            firstRankId = 6282,
            id = 3730,
            maxRank = 1,
            name = "Silent Presence",
          },
        },
        ["singing mastery"] = {
          {
            classes = 128,
            firstRankId = 275,
            id = 118,
            maxRank = 4,
            name = "Singing Mastery",
          },
        },
        ["sinister strikes"] = {
          {
            classes = 16841,
            firstRankId = 806,
            id = 270,
            maxRank = 1,
            name = "Sinister Strikes",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 81,
                    name = "Ambidexterity",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["sionachie's crescendo"] = {
          {
            classes = 128,
            firstRankId = 1018,
            id = 7925,
            maxRank = 1,
            name = "Sionachie's Crescendo",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 227,
                    name = "Extended Notes",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["slay undead"] = {
          {
            classes = 4,
            firstRankId = 190,
            id = 75,
            maxRank = 10,
            name = "Slay Undead",
            prerequisiteRules = {
              {
                maxRank = 10,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["sleight of hand"] = {
          {
            classes = 256,
            firstRankId = 6663,
            id = 841,
            maxRank = 6,
            name = "Sleight of Hand",
          },
        },
        ["small modulation shard"] = {
          {
            classes = 4096,
            firstRankId = 12963,
            id = 596,
            maxRank = 1,
            name = "Small Modulation Shard",
          },
        },
        ["sneering grin"] = {
          {
            classes = 1,
            firstRankId = 15096,
            id = 2001,
            maxRank = 1,
            name = "Sneering Grin",
          },
        },
        ["song of stone"] = {
          {
            classes = 128,
            firstRankId = 1569,
            id = 544,
            maxRank = 13,
            name = "Song of Stone",
          },
        },
        songwriting = {
          {
            classes = 128,
            firstRankId = 9001,
            id = 7801,
            maxRank = 10,
            name = "Songwriting",
          },
        },
        ["sonic displacement"] = {
          {
            classes = 128,
            firstRankId = 13528,
            id = 220,
            maxRank = 1,
            name = "Sonic Displacement",
          },
        },
        ["soothing words"] = {
          {
            classes = 8192,
            firstRankId = 1245,
            id = 414,
            maxRank = 4,
            name = "Soothing Words",
          },
        },
        ["soul abrasion"] = {
          {
            classes = 16,
            firstRankId = 210,
            id = 89,
            maxRank = 13,
            name = "Soul Abrasion",
          },
        },
        ["soul flay"] = {
          {
            classes = 16,
            firstRankId = 15643,
            id = 1278,
            maxRank = 1,
            name = "Soul Flay",
          },
        },
        ["soul seeker"] = {
          {
            classes = 1024,
            firstRankId = 4861,
            id = 612,
            maxRank = 12,
            name = "Soul Seeker",
            prerequisiteRules = {
              {
                maxRank = 12,
                minRank = 1,
                requires = {
                  {
                    id = 68,
                    name = "Life Burn",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["soul touch"] = {
          {
            classes = 16,
            firstRankId = 15642,
            id = 1277,
            maxRank = 1,
            name = "Soul Touch",
          },
        },
        ["speed of the knight"] = {
          {
            classes = 20,
            firstRankId = 602,
            id = 203,
            maxRank = 16,
            name = "Speed of the Knight",
          },
        },
        ["speed of the savior"] = {
          {
            classes = 4,
            firstRankId = 14080,
            id = 659,
            maxRank = 1,
            name = "Speed of the Savior",
          },
        },
        ["speed of the scoundrel"] = {
          {
            classes = 256,
            firstRankId = 12606,
            id = 12606,
            maxRank = 1,
            name = "Speed of the Scoundrel",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 13,
                    name = "Innate Run Speed",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["spell casting fury mastery"] = {
          {
            classes = 2048,
            firstRankId = 267,
            id = 114,
            maxRank = 15,
            name = "Spell Casting Fury Mastery",
            prerequisiteRules = {
              {
                maxRank = 15,
                minRank = 1,
                requires = {
                  {
                    id = 23,
                    name = "Spell Casting Fury",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["spirit call"] = {
          {
            classes = 512,
            firstRankId = 528,
            id = 177,
            maxRank = 18,
            name = "Spirit Call",
          },
        },
        ["spirit guardian"] = {
          {
            classes = 512,
            firstRankId = 5369,
            id = 614,
            maxRank = 1,
            name = "Spirit Guardian",
          },
        },
        ["spirit mastery"] = {
          {
            classes = 2,
            firstRankId = 7690,
            id = 7690,
            maxRank = 1,
            name = "Spirit Mastery",
          },
        },
        ["spirit of eagle"] = {
          {
            classes = 40,
            firstRankId = 10500,
            id = 8600,
            maxRank = 1,
            name = "Spirit of Eagle",
          },
        },
        ["spirit of the bear"] = {
          {
            classes = 32,
            firstRankId = 12651,
            id = 384,
            maxRank = 1,
            name = "Spirit of the Bear",
          },
        },
        ["spirit of the black wolf"] = {
          {
            classes = 32,
            firstRankId = 7986,
            id = 1092,
            maxRank = 5,
            name = "Spirit of the Black Wolf",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 705,
                    name = "Spirit of the White Wolf",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["spirit of the white wolf"] = {
          {
            classes = 32,
            firstRankId = 5105,
            id = 705,
            maxRank = 5,
            name = "Spirit of the White Wolf",
          },
        },
        ["spirit of the wood"] = {
          {
            classes = 32,
            firstRankId = 548,
            id = 185,
            maxRank = 19,
            name = "Spirit of the Wood",
          },
        },
        ["spirit walk"] = {
          {
            classes = 512,
            firstRankId = 6702,
            id = 859,
            maxRank = 1,
            name = "Spirit Walk",
          },
        },
        ["spirits of nature"] = {
          {
            classes = 32,
            firstRankId = 10503,
            id = 8603,
            maxRank = 4,
            name = "Spirits of Nature",
          },
        },
        ["spiritual blessing"] = {
          {
            classes = 512,
            firstRankId = 14234,
            id = 151,
            maxRank = 1,
            name = "Spiritual Blessing",
          },
        },
        ["spiritual channeling"] = {
          {
            classes = 512,
            firstRankId = 1323,
            id = 446,
            maxRank = 1,
            name = "Spiritual Channeling",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 47,
                    name = "Cannibalization",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["spiritual rebuke"] = {
          {
            classes = 512,
            firstRankId = 14231,
            id = 147,
            maxRank = 1,
            name = "Spiritual Rebuke",
          },
        },
        ["staff block"] = {
          {
            classes = 64,
            firstRankId = 9512,
            id = 1406,
            maxRank = 13,
            name = "Staff Block",
          },
        },
        ["stalwart endurance"] = {
          {
            classes = 0,
            firstRankId = 652,
            id = 222,
            maxRank = 3,
            name = "Stalwart Endurance",
          },
        },
        stasis = {
          {
            classes = 8192,
            firstRankId = 1233,
            id = 409,
            maxRank = 3,
            name = "Stasis",
          },
        },
        ["steadfast resolve"] = {
          {
            classes = 16384,
            firstRankId = 14275,
            id = 550,
            maxRank = 1,
            name = "Steadfast Resolve",
          },
        },
        ["steadfast will"] = {
          {
            classes = 32853,
            firstRankId = 1284,
            id = 434,
            maxRank = 8,
            name = "Steadfast Will",
          },
        },
        ["steady hands"] = {
          {
            classes = 128,
            firstRankId = 6202,
            id = 3703,
            maxRank = 3,
            name = "Steady Hands",
          },
        },
        ["stealthy getaway"] = {
          {
            classes = 256,
            firstRankId = 1477,
            id = 789,
            maxRank = 1,
            name = "Stealthy Getaway",
          },
        },
        ["steed of souls"] = {
          {
            classes = 16,
            firstRankId = 7754,
            id = 7754,
            maxRank = 1,
            name = "Steed of Souls",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 85,
                    name = "Unholy Steed",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["steel vengeance"] = {
          {
            classes = 4096,
            firstRankId = 15217,
            id = 2076,
            maxRank = 1,
            name = "Steel Vengeance",
          },
        },
        ["stomping leap"] = {
          {
            classes = 32769,
            firstRankId = 6930,
            id = 960,
            maxRank = 1,
            name = "Stomping Leap",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 611,
                    name = "Battle Leap",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["stone core"] = {
          {
            classes = 4096,
            firstRankId = 4912,
            id = 624,
            maxRank = 6,
            name = "Stone Core",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 787,
                    name = "Heart of Stone",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        stonefoot = {
          {
            classes = 64,
            firstRankId = 10340,
            id = 989,
            maxRank = 7,
            name = "Stonefoot",
          },
        },
        stonewall = {
          {
            classes = 64,
            firstRankId = 810,
            id = 272,
            maxRank = 11,
            name = "Stonewall",
          },
        },
        ["storm strike"] = {
          {
            classes = 32,
            firstRankId = 6278,
            id = 3728,
            maxRank = 13,
            name = "Storm Strike",
          },
        },
        ["strengthened strike"] = {
          {
            classes = 9,
            firstRankId = 915,
            id = 301,
            maxRank = 3,
            name = "Strengthened Strike",
          },
        },
        strikethrough = {
          {
            classes = 320,
            firstRankId = 807,
            id = 271,
            maxRank = 15,
            name = "Strikethrough",
          },
          {
            classes = 0,
            firstRankId = 10853,
            id = 9301,
            maxRank = 13,
            name = "Strikethrough",
          },
        },
        ["strong root"] = {
          {
            classes = 2048,
            firstRankId = 274,
            id = 117,
            maxRank = 1,
            name = "Strong Root",
          },
        },
        ["stunning kick"] = {
          {
            classes = 64,
            firstRankId = 1355,
            id = 469,
            maxRank = 19,
            name = "Stunning Kick",
          },
        },
        sturdiness = {
          {
            classes = 1,
            firstRankId = 907,
            id = 299,
            maxRank = 10,
            name = "Sturdiness",
          },
        },
        ["sturdy companion"] = {
          {
            classes = 30224,
            firstRankId = 9503,
            id = 1403,
            maxRank = 10,
            name = "Sturdy Companion",
          },
        },
        ["subtle blows"] = {
          {
            classes = 32768,
            firstRankId = 8325,
            id = 8325,
            maxRank = 7,
            name = "Subtle Blows",
          },
        },
        ["summon remains"] = {
          {
            classes = 1024,
            firstRankId = 9500,
            id = 7002,
            maxRank = 1,
            name = "Summon Remains",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 72,
                    name = "Call to Corpse",
                    points = 1,
                  },
                },
              },
            },
          },
          {
            classes = 16,
            firstRankId = 9501,
            id = 7007,
            maxRank = 1,
            name = "Summon Remains",
          },
        },
        ["summoner's beckon"] = {
          {
            classes = 4096,
            firstRankId = 5269,
            id = 667,
            maxRank = 1,
            name = "Summoner's Beckon",
          },
        },
        surreality = {
          {
            classes = 8192,
            firstRankId = 4887,
            id = 615,
            maxRank = 3,
            name = "Surreality",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 413,
                    name = "Mind Over Matter",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["sustained destruction"] = {
          {
            classes = 2048,
            firstRankId = 6106,
            id = 6106,
            maxRank = 6,
            name = "Sustained Destruction",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 308,
                    name = "Frenzied Devastation",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["swarm of decay"] = {
          {
            classes = 1024,
            firstRankId = 967,
            id = 320,
            maxRank = 16,
            name = "Swarm of Decay",
          },
        },
        ["swarm of fireflies"] = {
          {
            classes = 32,
            firstRankId = 13419,
            id = 699,
            maxRank = 1,
            name = "Swarm of Fireflies",
          },
        },
        ["tactical mastery"] = {
          {
            classes = 32769,
            firstRankId = 631,
            id = 213,
            maxRank = 9,
            name = "Tactical Mastery",
          },
          {
            classes = 16596,
            firstRankId = 12419,
            id = 1665,
            maxRank = 5,
            name = "Tactical Mastery",
          },
        },
        ["talisman of celerity"] = {
          {
            classes = 512,
            firstRankId = 15357,
            id = 2049,
            maxRank = 1,
            name = "Talisman of Celerity",
          },
        },
        ["taste of blood"] = {
          {
            classes = 16384,
            firstRankId = 5015,
            id = 666,
            maxRank = 5,
            name = "Taste of Blood",
          },
        },
        ["technique of master wu"] = {
          {
            classes = 64,
            firstRankId = 611,
            id = 206,
            maxRank = 15,
            name = "Technique of Master Wu",
          },
        },
        teleport = {
          {
            classes = 2048,
            firstRankId = 11058,
            id = 9704,
            maxRank = 1,
            name = "Teleport",
          },
        },
        ["teleport bind"] = {
          {
            classes = 2048,
            firstRankId = 1343,
            id = 456,
            maxRank = 1,
            name = "Teleport Bind",
          },
          {
            classes = 32,
            firstRankId = 1419,
            id = 7009,
            maxRank = 1,
            name = "Teleport Bind",
          },
        },
        ["the show must go on"] = {
          {
            classes = 128,
            firstRankId = 7010,
            id = 8262,
            maxRank = 7,
            name = "The Show Must Go On",
          },
        },
        ["theft of essence"] = {
          {
            classes = 4096,
            firstRankId = 7900,
            id = 1040,
            maxRank = 6,
            name = "Theft of Essence",
          },
        },
        ["theft of life"] = {
          {
            classes = 1040,
            firstRankId = 634,
            id = 214,
            maxRank = 20,
            name = "Theft of Life",
          },
        },
        ["thief's intuition"] = {
          {
            classes = 0,
            firstRankId = 1641,
            id = 568,
            maxRank = 1,
            name = "Thief's Intuition",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 121,
                    name = "Adv. Trap Negotiation",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 0,
            firstRankId = 1642,
            id = 569,
            maxRank = 1,
            name = "Thief's Intuition",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 121,
                    name = "Adv. Trap Negotiation",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["thought leech"] = {
          {
            classes = 16,
            firstRankId = 14052,
            id = 651,
            maxRank = 1,
            name = "Thought Leech",
          },
        },
        ["throwing mastery"] = {
          {
            classes = 32768,
            firstRankId = 1131,
            id = 367,
            maxRank = 8,
            name = "Throwing Mastery",
          },
        },
        thunderfoot = {
          {
            classes = 64,
            firstRankId = 15444,
            id = 1236,
            maxRank = 1,
            name = "Thunderfoot",
          },
        },
        ["tigir's insect swarm"] = {
          {
            classes = 512,
            firstRankId = 6691,
            id = 856,
            maxRank = 1,
            name = "Tigir's Insect Swarm",
          },
        },
        ["tireless sprint"] = {
          {
            classes = 32768,
            firstRankId = 1146,
            id = 372,
            maxRank = 3,
            name = "Tireless Sprint",
          },
        },
        ["total domination"] = {
          {
            classes = 8192,
            firstRankId = 649,
            id = 221,
            maxRank = 6,
            name = "Total Domination",
          },
          {
            classes = 128,
            firstRankId = 6879,
            id = 943,
            maxRank = 3,
            name = "Total Domination",
          },
        },
        ["touch of the cursed"] = {
          {
            classes = 16,
            firstRankId = 1313,
            id = 442,
            maxRank = 25,
            name = "Touch of the Cursed",
          },
        },
        ["touch of the divine"] = {
          {
            classes = 2,
            firstRankId = 962,
            id = 319,
            maxRank = 14,
            name = "Touch of the Divine",
          },
        },
        ["touch of the wicked"] = {
          {
            classes = 16,
            firstRankId = 596,
            id = 201,
            maxRank = 4,
            name = "Touch of the Wicked",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 6000,
                    name = "Harm Touch",
                    points = 11,
                  },
                },
              },
            },
          },
        },
        ["tracking mastery"] = {
          {
            classes = 8,
            firstRankId = 1296,
            id = 437,
            maxRank = 5,
            name = "Tracking Mastery",
          },
        },
        ["tranquil blessings"] = {
          {
            classes = 30254,
            firstRankId = 3676,
            id = 992,
            maxRank = 1,
            name = "Tranquil Blessings",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 35,
                    name = "Mass Group Buff",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        translocate = {
          {
            classes = 2048,
            firstRankId = 11057,
            id = 9703,
            maxRank = 1,
            name = "Translocate",
          },
        },
        ["translocational anchor"] = {
          {
            classes = 2048,
            firstRankId = 1630,
            id = 512,
            maxRank = 3,
            name = "Translocational Anchor",
          },
        },
        ["trick shot"] = {
          {
            classes = 8,
            firstRankId = 1608,
            id = 557,
            maxRank = 19,
            name = "Trick Shot",
            prerequisiteRules = {
              {
                maxRank = 19,
                minRank = 2,
                requires = {
                  {
                    id = 82,
                    name = "Archery Mastery",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["triple backstab"] = {
          {
            classes = 256,
            firstRankId = 846,
            id = 281,
            maxRank = 19,
            name = "Triple Backstab",
          },
        },
        ["troubadour's piercing mastery"] = {
          {
            classes = 128,
            firstRankId = 15546,
            id = 1247,
            maxRank = 1,
            name = "Troubadour's Piercing Mastery",
          },
        },
        ["troubadour's slashing mastery"] = {
          {
            classes = 128,
            firstRankId = 15540,
            id = 1245,
            maxRank = 1,
            name = "Troubadour's Slashing Mastery",
          },
        },
        ["troubadour's weapon mastery"] = {
          {
            classes = 128,
            firstRankId = 15543,
            id = 1246,
            maxRank = 1,
            name = "Troubadour's Weapon Mastery",
          },
        },
        tumble = {
          {
            classes = 256,
            firstRankId = 5028,
            id = 673,
            maxRank = 2,
            name = "Tumble",
          },
        },
        ["tune of pursuance"] = {
          {
            classes = 128,
            firstRankId = 695,
            id = 238,
            maxRank = 6,
            name = "Tune of Pursuance",
          },
        },
        ["turgur's swarm"] = {
          {
            classes = 512,
            firstRankId = 6281,
            id = 3729,
            maxRank = 2,
            name = "Turgur's Swarm",
          },
        },
        ["turn summoned"] = {
          {
            classes = 4096,
            firstRankId = 1462,
            id = 559,
            maxRank = 9,
            name = "Turn Summoned",
          },
        },
        ["turn undead"] = {
          {
            classes = 2,
            firstRankId = 1383,
            id = 558,
            maxRank = 11,
            name = "Turn Undead",
          },
        },
        twincast = {
          {
            classes = 32290,
            firstRankId = 9509,
            id = 1405,
            maxRank = 5,
            name = "Twincast",
          },
        },
        twinproc = {
          {
            classes = 32703,
            firstRankId = 12416,
            id = 1664,
            maxRank = 4,
            name = "Twinproc",
          },
        },
        ["twisted shank"] = {
          {
            classes = 256,
            firstRankId = 5021,
            id = 670,
            maxRank = 9,
            name = "Twisted Shank",
          },
        },
        ["two hands, no mercy!"] = {
          {
            classes = 32768,
            firstRankId = 11085,
            id = 11085,
            maxRank = 4,
            name = "Two Hands, No Mercy!",
          },
        },
        ["two-finger wasp touch"] = {
          {
            classes = 64,
            firstRankId = 15447,
            id = 1235,
            maxRank = 1,
            name = "Two-Finger Wasp Touch",
          },
        },
        ["unbridled strike of fear"] = {
          {
            classes = 16,
            firstRankId = 13108,
            id = 771,
            maxRank = 1,
            name = "Unbridled Strike of Fear",
          },
        },
        ["uncanny resilience"] = {
          {
            classes = 32768,
            firstRankId = 4854,
            id = 609,
            maxRank = 13,
            name = "Uncanny Resilience",
          },
        },
        ["undaunted fury"] = {
          {
            classes = 32768,
            firstRankId = 7407,
            id = 4001,
            maxRank = 1,
            name = "Undaunted Fury",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 31,
                    name = "Fear Resistance",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["unfailing divinity"] = {
          {
            classes = 2,
            firstRankId = 577,
            id = 194,
            maxRank = 3,
            name = "Unfailing Divinity",
          },
        },
        ["unflinching resolve"] = {
          {
            classes = 0,
            firstRankId = 1549,
            id = 539,
            maxRank = 3,
            name = "Unflinching Resolve",
          },
        },
        ["unholy steed"] = {
          {
            classes = 16,
            firstRankId = 206,
            id = 85,
            maxRank = 1,
            name = "Unholy Steed",
          },
        },
        ["unholy warhorse"] = {
          {
            classes = 16,
            firstRankId = 1644,
            grantOnly = true,
            id = 573,
            maxRank = 1,
            name = "Unholy Warhorse",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 85,
                    name = "Unholy Steed",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["union of spirits"] = {
          {
            classes = 512,
            firstRankId = 5251,
            id = 662,
            maxRank = 13,
            name = "Union of Spirits",
            prerequisiteRules = {
              {
                maxRank = 13,
                minRank = 1,
                requires = {
                  {
                    id = 447,
                    name = "Ancestral Aid",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 10478"] = {
          {
            classes = 8,
            firstRankId = 10478,
            id = 1003,
            maxRank = 1,
            name = "Unknown AA 10478",
          },
        },
        ["unknown aa 10481"] = {
          {
            classes = 1024,
            firstRankId = 10481,
            id = 1053,
            maxRank = 1,
            name = "Unknown AA 10481",
          },
        },
        ["unknown aa 15768"] = {
          {
            classes = 4,
            firstRankId = 15768,
            id = 345,
            maxRank = 1,
            name = "Unknown AA 15768",
          },
        },
        ["unknown aa 15798"] = {
          {
            classes = 8,
            firstRankId = 15798,
            id = 337,
            maxRank = 1,
            name = "Unknown AA 15798",
          },
        },
        ["unknown aa 15819"] = {
          {
            classes = 8,
            firstRankId = 15819,
            id = 306,
            maxRank = 1,
            name = "Unknown AA 15819",
          },
        },
        ["unknown aa 15833"] = {
          {
            classes = 2,
            firstRankId = 15833,
            id = 340,
            maxRank = 1,
            name = "Unknown AA 15833",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2045,
                    name = "Shield of Reverence",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 15836"] = {
          {
            classes = 2,
            firstRankId = 15836,
            id = 355,
            maxRank = 1,
            name = "Unknown AA 15836",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 463,
                    name = "Divine Guardian",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 15904"] = {
          {
            classes = 2080,
            firstRankId = 15904,
            id = 426,
            maxRank = 1,
            name = "Unknown AA 15904",
          },
        },
        ["unknown aa 15908"] = {
          {
            classes = 64,
            firstRankId = 15908,
            id = 429,
            maxRank = 3,
            name = "Unknown AA 15908",
          },
        },
        ["unknown aa 16016"] = {
          {
            classes = 1024,
            firstRankId = 16016,
            id = 533,
            maxRank = 1,
            name = "Unknown AA 16016",
          },
        },
        ["unknown aa 16071"] = {
          {
            classes = 8192,
            firstRankId = 16071,
            id = 542,
            maxRank = 1,
            name = "Unknown AA 16071",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2209,
                    name = "Reactive Rune",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16081"] = {
          {
            classes = 15360,
            firstRankId = 16081,
            id = 547,
            maxRank = 1,
            name = "Unknown AA 16081",
          },
        },
        ["unknown aa 16082"] = {
          {
            classes = 2080,
            firstRankId = 16082,
            id = 678,
            maxRank = 1,
            name = "Unknown AA 16082",
          },
        },
        ["unknown aa 16084"] = {
          {
            classes = 2048,
            firstRankId = 16084,
            id = 680,
            maxRank = 1,
            name = "Unknown AA 16084",
          },
        },
        ["unknown aa 16087"] = {
          {
            classes = 2048,
            firstRankId = 16087,
            id = 681,
            maxRank = 1,
            name = "Unknown AA 16087",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 53,
                    name = "Nexus Gate",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16096"] = {
          {
            classes = 8,
            firstRankId = 16096,
            id = 682,
            maxRank = 1,
            name = "Unknown AA 16096",
          },
        },
        ["unknown aa 16097"] = {
          {
            classes = 8,
            firstRankId = 16097,
            id = 683,
            maxRank = 1,
            name = "Unknown AA 16097",
          },
        },
        ["unknown aa 16103"] = {
          {
            classes = 1024,
            firstRankId = 16103,
            id = 1505,
            maxRank = 1,
            name = "Unknown AA 16103",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7703,
                    name = "Death Bloom",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16104"] = {
          {
            classes = 1,
            firstRankId = 16104,
            id = 684,
            maxRank = 1,
            name = "Unknown AA 16104",
          },
        },
        ["unknown aa 16105"] = {
          {
            classes = 1,
            firstRankId = 16105,
            id = 685,
            maxRank = 1,
            name = "Unknown AA 16105",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 684,
                    name = "Unknown AA 16104",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16106"] = {
          {
            classes = 1,
            firstRankId = 16106,
            id = 686,
            maxRank = 1,
            name = "Unknown AA 16106",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 684,
                    name = "Unknown AA 16104",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16107"] = {
          {
            classes = 1,
            firstRankId = 16107,
            id = 687,
            maxRank = 1,
            name = "Unknown AA 16107",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 684,
                    name = "Unknown AA 16104",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16108"] = {
          {
            classes = 1,
            firstRankId = 16108,
            id = 688,
            maxRank = 1,
            name = "Unknown AA 16108",
          },
        },
        ["unknown aa 16109"] = {
          {
            classes = 1,
            firstRankId = 16109,
            id = 690,
            maxRank = 1,
            name = "Unknown AA 16109",
          },
        },
        ["unknown aa 16113"] = {
          {
            classes = 1,
            firstRankId = 16113,
            id = 691,
            maxRank = 1,
            name = "Unknown AA 16113",
          },
        },
        ["unknown aa 16114"] = {
          {
            classes = 1,
            firstRankId = 16114,
            id = 692,
            maxRank = 1,
            name = "Unknown AA 16114",
          },
        },
        ["unknown aa 16117"] = {
          {
            classes = 1,
            firstRankId = 16117,
            id = 693,
            maxRank = 1,
            name = "Unknown AA 16117",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16120"] = {
          {
            classes = 1,
            firstRankId = 16120,
            id = 694,
            maxRank = 1,
            name = "Unknown AA 16120",
          },
        },
        ["unknown aa 16124"] = {
          {
            classes = 4,
            firstRankId = 16124,
            id = 725,
            maxRank = 1,
            name = "Unknown AA 16124",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3711,
                    name = "Gift of Resurrection",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16128"] = {
          {
            classes = 4,
            firstRankId = 16128,
            id = 726,
            maxRank = 1,
            name = "Unknown AA 16128",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3711,
                    name = "Gift of Resurrection",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16131"] = {
          {
            classes = 4,
            firstRankId = 16131,
            id = 727,
            maxRank = 1,
            name = "Unknown AA 16131",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 73,
                    name = "Divine Stun",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16137"] = {
          {
            classes = 4,
            firstRankId = 16137,
            id = 728,
            maxRank = 1,
            name = "Unknown AA 16137",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 10394,
                    name = "Beacon of the Righteous",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16140"] = {
          {
            classes = 6,
            firstRankId = 16140,
            id = 729,
            maxRank = 1,
            name = "Unknown AA 16140",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 489,
                    name = "Yaulp",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16146"] = {
          {
            classes = 2,
            firstRankId = 16146,
            id = 567,
            maxRank = 1,
            name = "Unknown AA 16146",
          },
        },
        ["unknown aa 16149"] = {
          {
            classes = 2,
            firstRankId = 16149,
            id = 674,
            maxRank = 1,
            name = "Unknown AA 16149",
          },
        },
        ["unknown aa 16152"] = {
          {
            classes = 2,
            firstRankId = 16152,
            id = 695,
            maxRank = 1,
            name = "Unknown AA 16152",
          },
        },
        ["unknown aa 16156"] = {
          {
            classes = 2,
            firstRankId = 16156,
            id = 696,
            maxRank = 1,
            name = "Unknown AA 16156",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 137,
                    name = "Beacon of Life",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16159"] = {
          {
            classes = 2,
            firstRankId = 16159,
            id = 700,
            maxRank = 1,
            name = "Unknown AA 16159",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2045,
                    name = "Shield of Reverence",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16160"] = {
          {
            classes = 2,
            firstRankId = 16160,
            id = 706,
            maxRank = 1,
            name = "Unknown AA 16160",
          },
        },
        ["unknown aa 16162"] = {
          {
            classes = 2,
            firstRankId = 16162,
            id = 711,
            maxRank = 1,
            name = "Unknown AA 16162",
          },
        },
        ["unknown aa 16163"] = {
          {
            classes = 8,
            firstRankId = 16163,
            id = 838,
            maxRank = 1,
            name = "Unknown AA 16163",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 260,
                    name = "Glacial Arrow",
                    points = 1,
                  },
                  {
                    id = 7747,
                    name = "Volatile Arrow",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16176"] = {
          {
            classes = 8,
            firstRankId = 16176,
            id = 357,
            maxRank = 1,
            name = "Unknown AA 16176",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 337,
                    name = "Unknown AA 15798",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16179"] = {
          {
            classes = 8,
            firstRankId = 16179,
            id = 363,
            maxRank = 1,
            name = "Unknown AA 16179",
          },
        },
        ["unknown aa 16180"] = {
          {
            classes = 8,
            firstRankId = 16180,
            id = 399,
            maxRank = 1,
            name = "Unknown AA 16180",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 584,
                    name = "Grasp of Sylvan Spirits",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16185"] = {
          {
            classes = 8,
            firstRankId = 16185,
            id = 723,
            maxRank = 1,
            name = "Unknown AA 16185",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 9202,
                    name = "Scout's Mastery of Fire",
                    points = 1,
                  },
                  {
                    id = 9203,
                    name = "Scout's Mastery of Ice",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16186"] = {
          {
            classes = 9,
            firstRankId = 16186,
            id = 730,
            maxRank = 1,
            name = "Unknown AA 16186",
          },
        },
        ["unknown aa 16188"] = {
          {
            classes = 16,
            firstRankId = 16188,
            id = 731,
            maxRank = 1,
            name = "Unknown AA 16188",
          },
        },
        ["unknown aa 16195"] = {
          {
            classes = 16,
            firstRankId = 16195,
            id = 732,
            maxRank = 1,
            name = "Unknown AA 16195",
          },
        },
        ["unknown aa 16196"] = {
          {
            classes = 16,
            firstRankId = 16196,
            id = 742,
            maxRank = 1,
            name = "Unknown AA 16196",
          },
        },
        ["unknown aa 16197"] = {
          {
            classes = 16,
            firstRankId = 16197,
            id = 746,
            maxRank = 1,
            name = "Unknown AA 16197",
          },
        },
        ["unknown aa 16200"] = {
          {
            classes = 16,
            firstRankId = 16200,
            id = 747,
            maxRank = 1,
            name = "Unknown AA 16200",
          },
        },
        ["unknown aa 16203"] = {
          {
            classes = 544,
            firstRankId = 16203,
            id = 760,
            maxRank = 1,
            name = "Unknown AA 16203",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 403,
                    name = "Paralytic Spores",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16208"] = {
          {
            classes = 552,
            firstRankId = 16208,
            id = 761,
            maxRank = 1,
            name = "Unknown AA 16208",
          },
        },
        ["unknown aa 16211"] = {
          {
            classes = 512,
            firstRankId = 16211,
            id = 767,
            maxRank = 1,
            name = "Unknown AA 16211",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 152,
                    name = "Communion of the Cheetah",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16215"] = {
          {
            classes = 32,
            firstRankId = 16215,
            id = 768,
            maxRank = 1,
            name = "Unknown AA 16215",
          },
        },
        ["unknown aa 16218"] = {
          {
            classes = 544,
            firstRankId = 16218,
            id = 811,
            maxRank = 1,
            name = "Unknown AA 16218",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 403,
                    name = "Paralytic Spores",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16221"] = {
          {
            classes = 32,
            firstRankId = 16221,
            id = 812,
            maxRank = 1,
            name = "Unknown AA 16221",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 393,
                    name = "Nature's Blessing",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16222"] = {
          {
            classes = 32,
            firstRankId = 16222,
            id = 813,
            maxRank = 1,
            name = "Unknown AA 16222",
          },
        },
        ["unknown aa 16225"] = {
          {
            classes = 32,
            firstRankId = 16225,
            id = 814,
            maxRank = 1,
            name = "Unknown AA 16225",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 219,
                    name = "Entrap",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16230"] = {
          {
            classes = 16384,
            firstRankId = 16230,
            id = 815,
            maxRank = 1,
            name = "Unknown AA 16230",
          },
        },
        ["unknown aa 16235"] = {
          {
            classes = 16384,
            firstRankId = 16235,
            id = 816,
            maxRank = 1,
            name = "Unknown AA 16235",
          },
        },
        ["unknown aa 16238"] = {
          {
            classes = 16384,
            firstRankId = 16238,
            id = 817,
            maxRank = 1,
            name = "Unknown AA 16238",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 443,
                    name = "Bestial Bloodrage",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16257"] = {
          {
            classes = 64,
            firstRankId = 16257,
            id = 818,
            maxRank = 1,
            name = "Unknown AA 16257",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 470,
                    name = "Eye Gouge",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16260"] = {
          {
            classes = 64,
            firstRankId = 16260,
            id = 828,
            maxRank = 1,
            name = "Unknown AA 16260",
          },
        },
        ["unknown aa 16263"] = {
          {
            classes = 256,
            firstRankId = 16263,
            id = 829,
            maxRank = 1,
            name = "Unknown AA 16263",
          },
        },
        ["unknown aa 16272"] = {
          {
            classes = 256,
            firstRankId = 16272,
            id = 830,
            maxRank = 1,
            name = "Unknown AA 16272",
          },
        },
        ["unknown aa 16276"] = {
          {
            classes = 256,
            firstRankId = 16276,
            id = 831,
            maxRank = 1,
            name = "Unknown AA 16276",
          },
        },
        ["unknown aa 16287"] = {
          {
            classes = 128,
            firstRankId = 16287,
            id = 832,
            maxRank = 1,
            name = "Unknown AA 16287",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 669,
                    name = "Bladed Song",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16296"] = {
          {
            classes = 128,
            firstRankId = 16296,
            id = 834,
            maxRank = 1,
            name = "Unknown AA 16296",
          },
        },
        ["unknown aa 16300"] = {
          {
            classes = 128,
            firstRankId = 16300,
            id = 835,
            maxRank = 1,
            name = "Unknown AA 16300",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 668,
                    name = "Hymn of the Last Stand",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16310"] = {
          {
            classes = 32768,
            firstRankId = 16310,
            id = 836,
            maxRank = 1,
            name = "Unknown AA 16310",
          },
        },
        ["unknown aa 16317"] = {
          {
            classes = 32768,
            firstRankId = 16317,
            id = 782,
            maxRank = 1,
            name = "Unknown AA 16317",
          },
        },
        ["unknown aa 16330"] = {
          {
            classes = 32768,
            firstRankId = 16330,
            id = 837,
            maxRank = 1,
            name = "Unknown AA 16330",
          },
        },
        ["unknown aa 16336"] = {
          {
            classes = 1024,
            firstRankId = 16336,
            id = 1169,
            maxRank = 1,
            name = "Unknown AA 16336",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1257,
                    name = "Hand of Death",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16339"] = {
          {
            classes = 1024,
            firstRankId = 16339,
            id = 1170,
            maxRank = 1,
            name = "Unknown AA 16339",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 773,
                    name = "Death's Effigy",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16342"] = {
          {
            classes = 1024,
            firstRankId = 16342,
            id = 775,
            maxRank = 1,
            name = "Unknown AA 16342",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1257,
                    name = "Hand of Death",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16360"] = {
          {
            classes = 2080,
            firstRankId = 16360,
            id = 839,
            maxRank = 1,
            name = "Unknown AA 16360",
          },
        },
        ["unknown aa 16363"] = {
          {
            classes = 2048,
            firstRankId = 16363,
            id = 840,
            maxRank = 1,
            name = "Unknown AA 16363",
          },
        },
        ["unknown aa 16366"] = {
          {
            classes = 2048,
            firstRankId = 16366,
            id = 850,
            maxRank = 1,
            name = "Unknown AA 16366",
          },
        },
        ["unknown aa 16369"] = {
          {
            classes = 2048,
            firstRankId = 16369,
            id = 851,
            maxRank = 1,
            name = "Unknown AA 16369",
          },
        },
        ["unknown aa 16370"] = {
          {
            classes = 4096,
            firstRankId = 16370,
            id = 852,
            maxRank = 1,
            name = "Unknown AA 16370",
          },
        },
        ["unknown aa 16371"] = {
          {
            classes = 4096,
            firstRankId = 16371,
            id = 853,
            maxRank = 1,
            name = "Unknown AA 16371",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 60,
                    name = "Frenzied Burnout",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16380"] = {
          {
            classes = 4096,
            firstRankId = 16380,
            id = 868,
            maxRank = 1,
            name = "Unknown AA 16380",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2061,
                    name = "Cloak of Shadows",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16386"] = {
          {
            classes = 4608,
            firstRankId = 16386,
            id = 869,
            maxRank = 1,
            name = "Unknown AA 16386",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2064,
                    name = "Wind of Malosinete",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16392"] = {
          {
            classes = 8192,
            firstRankId = 16392,
            id = 880,
            maxRank = 1,
            name = "Unknown AA 16392",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2202,
                    name = "Illusions of Grandeur",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16395"] = {
          {
            classes = 10248,
            firstRankId = 16395,
            id = 881,
            maxRank = 1,
            name = "Unknown AA 16395",
          },
        },
        ["unknown aa 16396"] = {
          {
            classes = 8192,
            firstRankId = 16396,
            id = 882,
            maxRank = 1,
            name = "Unknown AA 16396",
          },
        },
        ["unknown aa 16644"] = {
          {
            classes = 16,
            firstRankId = 16644,
            id = 799,
            maxRank = 1,
            name = "Unknown AA 16644",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 747,
                    name = "Unknown AA 16200",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16666"] = {
          {
            classes = 16,
            firstRankId = 16666,
            id = 819,
            maxRank = 1,
            name = "Unknown AA 16666",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 742,
                    name = "Unknown AA 16196",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 16745"] = {
          {
            classes = 2,
            firstRankId = 16745,
            id = 827,
            maxRank = 1,
            name = "Unknown AA 16745",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 706,
                    name = "Unknown AA 16160",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17209"] = {
          {
            classes = 1,
            firstRankId = 17209,
            id = 884,
            maxRank = 1,
            name = "Unknown AA 17209",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 111,
                    name = "War Cry",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17215"] = {
          {
            classes = 1,
            firstRankId = 17215,
            id = 1021,
            maxRank = 1,
            name = "Unknown AA 17215",
          },
        },
        ["unknown aa 17218"] = {
          {
            classes = 1,
            firstRankId = 17218,
            id = 886,
            maxRank = 1,
            name = "Unknown AA 17218",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 744,
                    name = "Howl of the Warlord",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17229"] = {
          {
            classes = 4,
            firstRankId = 17229,
            id = 889,
            maxRank = 1,
            name = "Unknown AA 17229",
          },
        },
        ["unknown aa 17235"] = {
          {
            classes = 4,
            firstRankId = 17235,
            id = 890,
            maxRank = 1,
            name = "Unknown AA 17235",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3826,
                    name = "Force of Disruption",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17238"] = {
          {
            classes = 4,
            firstRankId = 17238,
            id = 1017,
            maxRank = 1,
            name = "Unknown AA 17238",
          },
        },
        ["unknown aa 17242"] = {
          {
            classes = 4,
            firstRankId = 17242,
            id = 894,
            maxRank = 1,
            name = "Unknown AA 17242",
          },
        },
        ["unknown aa 17245"] = {
          {
            classes = 16,
            firstRankId = 17245,
            id = 895,
            maxRank = 1,
            name = "Unknown AA 17245",
          },
        },
        ["unknown aa 17248"] = {
          {
            classes = 4,
            firstRankId = 17248,
            id = 1019,
            maxRank = 1,
            name = "Unknown AA 17248",
          },
        },
        ["unknown aa 17249"] = {
          {
            classes = 16,
            firstRankId = 17249,
            id = 896,
            maxRank = 1,
            name = "Unknown AA 17249",
          },
        },
        ["unknown aa 17252"] = {
          {
            classes = 16,
            firstRankId = 17252,
            id = 833,
            maxRank = 1,
            name = "Unknown AA 17252",
          },
        },
        ["unknown aa 17256"] = {
          {
            classes = 16,
            firstRankId = 17256,
            id = 854,
            maxRank = 1,
            name = "Unknown AA 17256",
          },
        },
        ["unknown aa 17257"] = {
          {
            classes = 16,
            firstRankId = 17257,
            id = 865,
            maxRank = 1,
            name = "Unknown AA 17257",
          },
        },
        ["unknown aa 17267"] = {
          {
            classes = 16,
            firstRankId = 17267,
            id = 898,
            maxRank = 1,
            name = "Unknown AA 17267",
          },
        },
        ["unknown aa 17273"] = {
          {
            classes = 128,
            firstRankId = 17273,
            id = 899,
            maxRank = 1,
            name = "Unknown AA 17273",
          },
        },
        ["unknown aa 17280"] = {
          {
            classes = 128,
            firstRankId = 17280,
            id = 910,
            maxRank = 1,
            name = "Unknown AA 17280",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 8205,
                    name = "Selo's Kick",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17281"] = {
          {
            classes = 128,
            firstRankId = 17281,
            id = 915,
            maxRank = 1,
            name = "Unknown AA 17281",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 359,
                    name = "Dance of Blades",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17289"] = {
          {
            classes = 2,
            firstRankId = 17289,
            id = 932,
            maxRank = 1,
            name = "Unknown AA 17289",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1062,
                    name = "Group Purify Soul",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17307"] = {
          {
            classes = 2,
            firstRankId = 17307,
            id = 934,
            maxRank = 1,
            name = "Unknown AA 17307",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 2047,
                    name = "Call of the Herald",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17317"] = {
          {
            classes = 512,
            firstRankId = 17317,
            id = 937,
            maxRank = 1,
            name = "Unknown AA 17317",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1270,
                    name = "Crippling Spirit",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17328"] = {
          {
            classes = 512,
            firstRankId = 17328,
            id = 948,
            maxRank = 1,
            name = "Unknown AA 17328",
          },
        },
        ["unknown aa 17329"] = {
          {
            classes = 512,
            firstRankId = 17329,
            id = 949,
            maxRank = 1,
            name = "Unknown AA 17329",
          },
        },
        ["unknown aa 17336"] = {
          {
            classes = 512,
            firstRankId = 17336,
            id = 950,
            maxRank = 1,
            name = "Unknown AA 17336",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 148,
                    name = "Pathosis",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17339"] = {
          {
            classes = 544,
            firstRankId = 17339,
            id = 951,
            maxRank = 1,
            name = "Unknown AA 17339",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 760,
                    name = "Unknown AA 16203",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17342"] = {
          {
            classes = 512,
            firstRankId = 17342,
            id = 952,
            maxRank = 1,
            name = "Unknown AA 17342",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 148,
                    name = "Pathosis",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17344"] = {
          {
            classes = 32,
            firstRankId = 17344,
            id = 953,
            maxRank = 1,
            name = "Unknown AA 17344",
          },
        },
        ["unknown aa 17347"] = {
          {
            classes = 32,
            firstRankId = 17347,
            id = 954,
            maxRank = 1,
            name = "Unknown AA 17347",
          },
        },
        ["unknown aa 17361"] = {
          {
            classes = 2080,
            firstRankId = 17361,
            id = 956,
            maxRank = 1,
            name = "Unknown AA 17361",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 405,
                    name = "Secondary Recall",
                    points = 1,
                  },
                  {
                    id = 426,
                    name = "Unknown AA 15904",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17364"] = {
          {
            classes = 32,
            firstRankId = 17364,
            id = 957,
            maxRank = 1,
            name = "Unknown AA 17364",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 935,
                    name = "Blessing of Ro",
                    points = 4,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17370"] = {
          {
            classes = 32,
            firstRankId = 17370,
            id = 958,
            maxRank = 1,
            name = "Unknown AA 17370",
          },
        },
        ["unknown aa 17372"] = {
          {
            classes = 32,
            firstRankId = 17372,
            id = 959,
            maxRank = 1,
            name = "Unknown AA 17372",
          },
        },
        ["unknown aa 17373"] = {
          {
            classes = 16384,
            firstRankId = 17373,
            id = 966,
            maxRank = 1,
            name = "Unknown AA 17373",
          },
        },
        ["unknown aa 17375"] = {
          {
            classes = 16384,
            firstRankId = 17375,
            id = 968,
            maxRank = 1,
            name = "Unknown AA 17375",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1239,
                    name = "Consumption of Spirit",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17384"] = {
          {
            classes = 16384,
            firstRankId = 17384,
            id = 972,
            maxRank = 1,
            name = "Unknown AA 17384",
          },
        },
        ["unknown aa 17409"] = {
          {
            classes = 256,
            firstRankId = 17409,
            id = 974,
            maxRank = 1,
            name = "Unknown AA 17409",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 120,
                    name = "Physical Enhancement",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17414"] = {
          {
            classes = 256,
            firstRankId = 17414,
            id = 975,
            maxRank = 1,
            name = "Unknown AA 17414",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 673,
                    name = "Tumble",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17418"] = {
          {
            classes = 32768,
            firstRankId = 17418,
            id = 976,
            maxRank = 1,
            name = "Unknown AA 17418",
          },
        },
        ["unknown aa 17428"] = {
          {
            classes = 32768,
            firstRankId = 17428,
            id = 978,
            maxRank = 1,
            name = "Unknown AA 17428",
          },
        },
        ["unknown aa 17436"] = {
          {
            classes = 32768,
            firstRankId = 17436,
            id = 979,
            maxRank = 1,
            name = "Unknown AA 17436",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 372,
                    name = "Tireless Sprint",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17439"] = {
          {
            classes = 32768,
            firstRankId = 17439,
            id = 1000,
            maxRank = 1,
            name = "Unknown AA 17439",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 372,
                    name = "Tireless Sprint",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17445"] = {
          {
            classes = 32768,
            firstRankId = 17445,
            id = 1001,
            maxRank = 1,
            name = "Unknown AA 17445",
          },
        },
        ["unknown aa 17448"] = {
          {
            classes = 32768,
            firstRankId = 17448,
            id = 1002,
            maxRank = 1,
            name = "Unknown AA 17448",
          },
        },
        ["unknown aa 17492"] = {
          {
            classes = 2048,
            firstRankId = 17492,
            id = 1004,
            maxRank = 1,
            name = "Unknown AA 17492",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 840,
                    name = "Unknown AA 16363",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17495"] = {
          {
            classes = 2048,
            firstRankId = 17495,
            id = 1005,
            maxRank = 1,
            name = "Unknown AA 17495",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 9702,
                    name = "Beam of Displacement",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17515"] = {
          {
            classes = 4096,
            firstRankId = 17515,
            id = 1006,
            maxRank = 1,
            name = "Unknown AA 17515",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 3841,
                    name = "Call Hither",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17517"] = {
          {
            classes = 5120,
            firstRankId = 17517,
            id = 1007,
            maxRank = 1,
            name = "Unknown AA 17517",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 441,
                    name = "Aegis of Kildrukaun",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17522"] = {
          {
            classes = 1024,
            firstRankId = 17522,
            id = 1008,
            maxRank = 1,
            name = "Unknown AA 17522",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 764,
                    name = "Embrace The Decay",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17533"] = {
          {
            classes = 1024,
            firstRankId = 17533,
            id = 1009,
            maxRank = 1,
            name = "Unknown AA 17533",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 677,
                    name = "Gift of Deathly Resolve",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17538"] = {
          {
            classes = 1024,
            firstRankId = 17538,
            id = 1014,
            maxRank = 1,
            name = "Unknown AA 17538",
          },
        },
        ["unknown aa 17547"] = {
          {
            classes = 8192,
            firstRankId = 17547,
            id = 1015,
            maxRank = 1,
            name = "Unknown AA 17547",
          },
        },
        ["unknown aa 17549"] = {
          {
            classes = 8192,
            firstRankId = 17549,
            id = 1016,
            maxRank = 1,
            name = "Unknown AA 17549",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 8700,
                    name = "Beam of Slumber",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["unknown aa 17553"] = {
          {
            classes = 8192,
            firstRankId = 17553,
            id = 1018,
            maxRank = 1,
            name = "Unknown AA 17553",
          },
        },
        ["unknown aa 17554"] = {
          {
            classes = 32768,
            firstRankId = 17554,
            id = 919,
            maxRank = 1,
            name = "Unknown AA 17554",
          },
        },
        ["unknown aa 17639"] = {
          {
            classes = 1,
            firstRankId = 17639,
            id = 1054,
            maxRank = 1,
            name = "Unknown AA 17639",
          },
        },
        ["untamed rage"] = {
          {
            classes = 32768,
            firstRankId = 1150,
            id = 374,
            maxRank = 3,
            name = "Untamed Rage",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 189,
                    name = "Ferocity",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["vainglorious shout"] = {
          {
            classes = 128,
            firstRankId = 10330,
            id = 8201,
            maxRank = 3,
            name = "Vainglorious Shout",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 199,
                    name = "Boastful Bellow",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["valiant steed"] = {
          {
            classes = 4,
            firstRankId = 1645,
            id = 570,
            maxRank = 1,
            name = "Valiant Steed",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 77,
                    name = "Holy Steed",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["valorous rage"] = {
          {
            classes = 4,
            firstRankId = 10711,
            id = 920,
            maxRank = 4,
            name = "Valorous Rage",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["vapor core"] = {
          {
            classes = 4096,
            firstRankId = 4906,
            id = 622,
            maxRank = 6,
            name = "Vapor Core",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 785,
                    name = "Heart of Vapor",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["vehement rage"] = {
          {
            classes = 32769,
            firstRankId = 6607,
            id = 800,
            maxRank = 4,
            name = "Vehement Rage",
          },
        },
        ["veil of mindshadow"] = {
          {
            classes = 8192,
            firstRankId = 4931,
            id = 791,
            maxRank = 16,
            name = "Veil of Mindshadow",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 173,
                    name = "Eldritch Rune",
                    points = 8,
                  },
                },
              },
            },
          },
        },
        ["veil of the underbrush"] = {
          {
            classes = 32,
            firstRankId = 14262,
            id = 232,
            maxRank = 1,
            name = "Veil of the Underbrush",
          },
        },
        ["vengeful spirits"] = {
          {
            classes = 9776,
            firstRankId = 13017,
            id = 637,
            maxRank = 4,
            name = "Vengeful Spirits",
            prerequisiteRules = {
              {
                maxRank = 4,
                minRank = 1,
                requires = {
                  {
                    id = 3815,
                    name = "Destructive Cascade",
                    points = 10,
                  },
                },
              },
            },
          },
        },
        ["veteran's wrath"] = {
          {
            classes = 0,
            firstRankId = 1047,
            id = 314,
            maxRank = 14,
            name = "Veteran's Wrath",
            prerequisiteRules = {
              {
                maxRank = 14,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 3,
                  },
                },
              },
            },
          },
          {
            classes = 0,
            firstRankId = 1044,
            id = 339,
            maxRank = 16,
            name = "Veteran's Wrath",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 6,
                  },
                },
              },
            },
          },
          {
            classes = 49629,
            firstRankId = 1050,
            id = 341,
            maxRank = 13,
            name = "Veteran's Wrath",
            prerequisiteRules = {
              {
                maxRank = 13,
                minRank = 1,
                requires = {
                  {
                    id = 309,
                    name = "Combat Fury",
                    points = 6,
                  },
                },
              },
            },
          },
        },
        ["veturika's perseverance"] = {
          {
            classes = 2,
            firstRankId = 14229,
            id = 798,
            maxRank = 1,
            name = "Veturika's Perseverance",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 135,
                    name = "Quiet Miracle",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["vicious bite of chaos"] = {
          {
            classes = 16,
            firstRankId = 6645,
            id = 825,
            maxRank = 3,
            name = "Vicious Bite of Chaos",
          },
        },
        ["vicious smash"] = {
          {
            classes = 20,
            firstRankId = 855,
            id = 284,
            maxRank = 16,
            name = "Vicious Smash",
          },
        },
        ["virulent paralysis"] = {
          {
            classes = 512,
            firstRankId = 513,
            id = 171,
            maxRank = 9,
            name = "Virulent Paralysis",
          },
        },
        ["virulent talon"] = {
          {
            classes = 4096,
            firstRankId = 14307,
            id = 323,
            maxRank = 1,
            name = "Virulent Talon",
          },
        },
        ["virulent venom"] = {
          {
            classes = 256,
            firstRankId = 888,
            id = 294,
            maxRank = 6,
            name = "Virulent Venom",
          },
        },
        ["visage of death"] = {
          {
            classes = 16,
            firstRankId = 10912,
            id = 9403,
            maxRank = 6,
            name = "Visage of Death",
          },
        },
        ["viscid roots"] = {
          {
            classes = 32,
            firstRankId = 567,
            id = 190,
            maxRank = 3,
            name = "Viscid Roots",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 45,
                    name = "Enhanced Root",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["vivace of conflict"] = {
          {
            classes = 128,
            firstRankId = 14186,
            id = 810,
            maxRank = 1,
            name = "Vivace of Conflict",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 809,
                    name = "Allegretto of Battle",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["voice of thule"] = {
          {
            classes = 16,
            firstRankId = 6639,
            id = 7000,
            maxRank = 2,
            name = "Voice of Thule",
          },
        },
        ["volatile arrow"] = {
          {
            classes = 8,
            firstRankId = 7747,
            id = 7747,
            maxRank = 1,
            name = "Volatile Arrow",
          },
        },
        ["volatile mana blaze"] = {
          {
            classes = 2048,
            firstRankId = 4915,
            id = 625,
            maxRank = 9,
            name = "Volatile Mana Blaze",
            prerequisiteRules = {
              {
                maxRank = 9,
                minRank = 1,
                requires = {
                  {
                    id = 794,
                    name = "Mana Blaze",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["wake the dead"] = {
          {
            classes = 1024,
            firstRankId = 523,
            id = 175,
            maxRank = 3,
            name = "Wake the Dead",
          },
        },
        ["wall of wind"] = {
          {
            classes = 32,
            firstRankId = 10506,
            id = 8604,
            maxRank = 4,
            name = "Wall of Wind",
          },
        },
        ["war cry"] = {
          {
            classes = 1,
            firstRankId = 260,
            id = 111,
            maxRank = 6,
            name = "War Cry",
            prerequisiteRules = {
              {
                maxRank = 6,
                minRank = 1,
                requires = {
                  {
                    id = 31,
                    name = "Fear Resistance",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["war cry of the braxi"] = {
          {
            classes = 32768,
            firstRankId = 13872,
            id = 1013,
            maxRank = 1,
            name = "War Cry of the Braxi",
          },
        },
        ["ward of destruction"] = {
          {
            classes = 2048,
            firstRankId = 926,
            id = 307,
            maxRank = 7,
            name = "Ward of Destruction",
          },
        },
        ["ward of purity"] = {
          {
            classes = 2,
            firstRankId = 1459,
            id = 506,
            maxRank = 12,
            name = "Ward of Purity",
            prerequisiteRules = {
              {
                maxRank = 12,
                minRank = 1,
                requires = {
                  {
                    id = 255,
                    name = "Exquisite Benediction",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["warder's alacrity"] = {
          {
            classes = 16384,
            firstRankId = 729,
            id = 249,
            maxRank = 21,
            name = "Warder's Alacrity",
          },
        },
        ["warder's fury"] = {
          {
            classes = 16384,
            firstRankId = 724,
            id = 248,
            maxRank = 21,
            name = "Warder's Fury",
          },
        },
        ["warder's gift"] = {
          {
            classes = 16384,
            firstRankId = 12837,
            id = 458,
            maxRank = 1,
            name = "Warder's Gift",
          },
        },
        ["warlord's bravery"] = {
          {
            classes = 1,
            firstRankId = 6617,
            id = 804,
            maxRank = 2,
            name = "Warlord's Bravery",
          },
        },
        ["warlord's deadly aim"] = {
          {
            classes = 1,
            firstRankId = 6511,
            id = 3823,
            maxRank = 3,
            name = "Warlord's Deadly Aim",
          },
        },
        ["warlord's fury"] = {
          {
            classes = 1,
            firstRankId = 10546,
            id = 912,
            maxRank = 1,
            name = "Warlord's Fury",
          },
        },
        ["warlord's grasp"] = {
          {
            classes = 1,
            firstRankId = 15099,
            id = 2002,
            maxRank = 1,
            name = "Warlord's Grasp",
          },
        },
        ["warlord's resolve"] = {
          {
            classes = 1,
            firstRankId = 14032,
            id = 930,
            maxRank = 1,
            name = "Warlord's Resolve",
          },
        },
        ["warlord's resurgence"] = {
          {
            classes = 1,
            firstRankId = 10545,
            id = 911,
            maxRank = 1,
            name = "Warlord's Resurgence",
          },
        },
        ["warlord's return kick"] = {
          {
            classes = 1,
            firstRankId = 6287,
            id = 3733,
            maxRank = 3,
            name = "Warlord's Return Kick",
          },
        },
        ["warlord's tenacity"] = {
          {
            classes = 1,
            firstRankId = 912,
            id = 300,
            maxRank = 13,
            name = "Warlord's Tenacity",
          },
        },
        ["wars sheol's heroic blade"] = {
          {
            classes = 1,
            firstRankId = 15119,
            id = 2007,
            maxRank = 1,
            name = "Wars Sheol's Heroic Blade",
          },
        },
        ["way of steel"] = {
          {
            classes = 64,
            firstRankId = 12706,
            id = 410,
            maxRank = 4,
            name = "Way of Steel",
          },
          {
            classes = 0,
            firstRankId = 12706,
            id = 17787,
            maxRank = 4,
            name = "Way of Steel",
          },
        },
        ["way of the katori"] = {
          {
            classes = 64,
            firstRankId = 15429,
            id = 1232,
            maxRank = 1,
            name = "Way of the Katori",
          },
        },
        ["weightless steps"] = {
          {
            classes = 64,
            firstRankId = 1552,
            id = 540,
            maxRank = 3,
            name = "Weightless Steps",
            prerequisiteRules = {
              {
                maxRank = 3,
                minRank = 1,
                requires = {
                  {
                    id = 13,
                    name = "Innate Run Speed",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        whisperwind = {
          {
            classes = 1024,
            firstRankId = 6818,
            id = 901,
            maxRank = 1,
            name = "Whisperwind",
          },
        },
        ["wicked steed"] = {
          {
            classes = 16,
            firstRankId = 13674,
            id = 1504,
            maxRank = 1,
            name = "Wicked Steed",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 7754,
                    name = "Steed of Souls",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["willful death"] = {
          {
            classes = 1040,
            firstRankId = 1528,
            id = 532,
            maxRank = 11,
            name = "Willful Death",
          },
        },
        ["wind of malosinete"] = {
          {
            classes = 4608,
            firstRankId = 15210,
            id = 2064,
            maxRank = 1,
            name = "Wind of Malosinete",
            prerequisiteRules = {
              {
                maxRank = 1,
                minRank = 1,
                requires = {
                  {
                    id = 1041,
                    name = "Malosinete",
                    points = 1,
                  },
                },
              },
            },
          },
        },
        ["wrath of the forest walker"] = {
          {
            classes = 32,
            firstRankId = 14244,
            id = 178,
            maxRank = 1,
            name = "Wrath of the Forest Walker",
          },
        },
        ["wrath of the wild"] = {
          {
            classes = 32,
            firstRankId = 510,
            id = 170,
            maxRank = 10,
            name = "Wrath of the Wild",
          },
        },
        yaulp = {
          {
            classes = 6,
            firstRankId = 13389,
            id = 489,
            maxRank = 1,
            name = "Yaulp",
          },
        },
        ["zan fi's whistle"] = {
          {
            classes = 64,
            firstRankId = 7872,
            id = 7001,
            maxRank = 10,
            name = "Zan Fi's Whistle",
          },
        },
      },
      idIndex = {
        ["100"] = "rapid feign",
        ["1000"] = "unknown aa 17439",
        ["1001"] = "unknown aa 17445",
        ["1002"] = "unknown aa 17448",
        ["1003"] = "unknown aa 10478",
        ["1004"] = "unknown aa 17492",
        ["1005"] = "unknown aa 17495",
        ["1006"] = "unknown aa 17515",
        ["1007"] = "unknown aa 17517",
        ["1008"] = "unknown aa 17522",
        ["1009"] = "unknown aa 17533",
        ["101"] = "return kick",
        ["1011"] = "neshika's blink",
        ["1012"] = "five point palm",
        ["1013"] = "war cry of the braxi",
        ["1014"] = "unknown aa 17538",
        ["1015"] = "unknown aa 17547",
        ["1016"] = "unknown aa 17549",
        ["1017"] = "unknown aa 17238",
        ["1018"] = "unknown aa 17553",
        ["1019"] = "unknown aa 17248",
        ["102"] = "escape",
        ["1021"] = "unknown aa 17215",
        ["1023"] = "restoration of life",
        ["1024"] = "hastened leap of faith",
        ["1025"] = "hastened beacon of the righteous",
        ["10389"] = "extended trickery",
        ["10393"] = "shackles of tunare",
        ["10394"] = "beacon of the righteous",
        ["10395"] = "bobbing corpse",
        ["10396"] = "group spirit of the white wolf",
        ["10397"] = "group spirit of the black wolf",
        ["1040"] = "theft of essence",
        ["10405"] = "hastened deflection discipline",
        ["1041"] = "malosinete",
        ["10410"] = "rogue triple attack skillup test",
        ["10413"] = "hastened host of the elements",
        ["10424"] = "hand of ro",
        ["10425"] = "fixation of ro",
        ["10426"] = "peaceful spirit of the wood",
        ["10427"] = "peaceful convergence of spirits",
        ["10434"] = "quickened army of the dead",
        ["1053"] = "unknown aa 10481",
        ["1054"] = "unknown aa 17639",
        ["1060"] = "hastened turn undead",
        ["1061"] = "cascading divine aura",
        ["1062"] = "group purify soul",
        ["1063"] = "hastened renewal",
        ["1064"] = "sanctified blessing",
        ["1065"] = "focused celestial regeneration",
        ["107"] = "purge poison",
        ["108"] = "flurry",
        ["109"] = "rampage",
        ["1090"] = "mastery of nature",
        ["1091"] = "hastened nature's guardian",
        ["1092"] = "spirit of the black wolf",
        ["1093"] = "hastened lycan soul",
        ["110"] = "area taunt",
        ["11073"] = "playing possum",
        ["11074"] = "cat-like reflexes",
        ["11077"] = "hastened bite of the asp",
        ["11078"] = "hastened gorilla smash",
        ["11079"] = "hastened raven's claw",
        ["11080"] = "chameleon strike",
        ["11085"] = "two hands, no mercy!",
        ["11088"] = "hastened cry of battle",
        ["111"] = "war cry",
        ["1113"] = "hastened mass group buff",
        ["112"] = "bandage wound",
        ["1120"] = "self stasis",
        ["1121"] = "hastened veil of mindshadow",
        ["1122"] = "phantasmal opponent",
        ["1123"] = "hastened edict of command",
        ["1124"] = "fog of memories",
        ["1125"] = "bite of tashani",
        ["114"] = "spell casting fury mastery",
        ["1150"] = "fury of druzzil",
        ["1151"] = "fury of eci",
        ["1152"] = "fury of ro",
        ["1153"] = "fortified entanglement",
        ["1154"] = "force of will",
        ["1155"] = "atol's shackles",
        ["1156"] = "hastened manaburn",
        ["1157"] = "hastened call of xuzl",
        ["1158"] = "divine steed",
        ["1159"] = "hastened leap",
        ["116"] = "dragon punch",
        ["1169"] = "unknown aa 16336",
        ["117"] = "strong root",
        ["1170"] = "unknown aa 16339",
        ["1171"] = "hastened counterattack discipline",
        ["1173"] = "hastened onslaught",
        ["1174"] = "mrylokar's rigor",
        ["1175"] = "absorbing agent",
        ["1176"] = "improved requiem of time",
        ["1177"] = "quickened requiem of time",
        ["1178"] = "silent displacement",
        ["118"] = "singing mastery",
        ["119"] = "body and mind rejuvenation",
        ["120"] = "physical enhancement",
        ["1210"] = "group perfected invisibility",
        ["1211"] = "focus of arcanum",
        ["122"] = "acrobatics",
        ["123"] = "scribble notes",
        ["1232"] = "way of the katori",
        ["1233"] = "harmony of battle",
        ["1234"] = "hastened ironfist",
        ["1235"] = "two-finger wasp touch",
        ["1236"] = "thunderfoot",
        ["1237"] = "extended bloodlust",
        ["1239"] = "consumption of spirit",
        ["124"] = "chaotic stab",
        ["1240"] = "frenzied swipes",
        ["1242"] = "hastened synergy",
        ["1243"] = "hastened crane stance",
        ["1244"] = "hastened eye gouge",
        ["1245"] = "troubadour's slashing mastery",
        ["1246"] = "troubadour's weapon mastery",
        ["1247"] = "troubadour's piercing mastery",
        ["1248"] = "hastened lure of the siren's song",
        ["1249"] = "frenzied axe of rallos",
        ["125"] = "pet discipline",
        ["1250"] = "juggernaut's mastery of throwing",
        ["1251"] = "furious rampage",
        ["1252"] = "battle stomp",
        ["1253"] = "communion of blood",
        ["1254"] = "hastened dying grasp",
        ["1255"] = "rest the dead",
        ["1256"] = "extended encroaching darkness",
        ["1257"] = "hand of death",
        ["1258"] = "quickened levant",
        ["1259"] = "cascade of decay",
        ["126"] = "hobble of spirits",
        ["12600"] = "hastened frenzied stabbing",
        ["12603"] = "extended frenzied stabbing discipline",
        ["12606"] = "speed of the scoundrel",
        ["12607"] = "hastened pinpoint",
        ["1261"] = "hastened fury of the gods",
        ["12615"] = "hastened twisted chance discipline",
        ["1262"] = "lower element",
        ["1263"] = "destructive adept",
        ["1264"] = "arcane fusion",
        ["1265"] = "arcane destruction",
        ["1266"] = "force of flame",
        ["1267"] = "force of ice",
        ["1269"] = "sha's reprisal",
        ["127"] = "frenzy of spirit",
        ["1270"] = "crippling spirit",
        ["1271"] = "quick damage",
        ["1272"] = "assassin's wrath",
        ["1273"] = "hastened swiftblade",
        ["1274"] = "improved explosion of spite",
        ["1275"] = "improved explosion of hatred",
        ["1277"] = "soul touch",
        ["1278"] = "soul flay",
        ["1279"] = "ragged bite of agony",
        ["128"] = "paragon of spirit",
        ["1281"] = "everburn",
        ["1282"] = "marr's gift",
        ["129"] = "chains of purity",
        ["130"] = "resplendent glory",
        ["1300"] = "fundament of intellect",
        ["1301"] = "fundament of intellect",
        ["1302"] = "fundament of intellect",
        ["1303"] = "fundament of intellect",
        ["1304"] = "fundament of wisdom",
        ["1305"] = "fundament of wisdom",
        ["1306"] = "fundament of wisdom",
        ["1307"] = "fundament of power",
        ["1308"] = "fundament of power",
        ["1309"] = "fundament of power",
        ["131"] = "rage of rallos zek",
        ["1310"] = "fundament of power",
        ["1311"] = "fundament of power",
        ["1312"] = "fundament of combat",
        ["1313"] = "fundament of combat",
        ["1314"] = "fundament of combat",
        ["1315"] = "fundament of combat",
        ["132"] = "enhanced area taunt",
        ["133"] = "decapitation",
        ["134"] = "hastened berserking disciplines",
        ["135"] = "quiet miracle",
        ["1350"] = "fundament: first spire of arcanum",
        ["1351"] = "fundament: second spire of arcanum",
        ["1352"] = "fundament: third spire of arcanum",
        ["136"] = "repel the wicked",
        ["1360"] = "fundament: first spire of the sensei",
        ["1361"] = "fundament: second spire of the sensei",
        ["1362"] = "fundament: third spire of the sensei",
        ["137"] = "beacon of life",
        ["1370"] = "fundament: first spire of the elements",
        ["1371"] = "fundament: second spire of the elements",
        ["1372"] = "fundament: third spire of the elements",
        ["138"] = "blessed chains",
        ["1380"] = "fundament: first spire of enchantment",
        ["1381"] = "fundament: second spire of enchantment",
        ["1382"] = "fundament: third spire of enchantment",
        ["139"] = "hastened focused celestial regeneration",
        ["1390"] = "fundament: first spire of necromancy",
        ["1391"] = "fundament: second spire of necromancy",
        ["1392"] = "fundament: third spire of necromancy",
        ["140"] = "quickened spirit calling",
        ["1400"] = "fundament: first spire of the warlord",
        ["1401"] = "fundament: second spire of the warlord",
        ["1402"] = "fundament: third spire of the warlord",
        ["1403"] = "sturdy companion",
        ["1404"] = "extended swarm",
        ["1405"] = "twincast",
        ["1406"] = "staff block",
        ["1410"] = "fundament: first spire of the rake",
        ["1411"] = "fundament: second spire of the rake",
        ["1412"] = "fundament: third spire of the rake",
        ["1420"] = "fundament: first spire of the minstrels",
        ["1421"] = "fundament: second spire of the minstrels",
        ["1422"] = "fundament: third spire of the minstrels",
        ["143"] = "planar durability",
        ["1430"] = "fundament: first spire of the savage lord",
        ["1431"] = "fundament: second spire of the savage lord",
        ["1432"] = "fundament: third spire of the savage lord",
        ["1440"] = "fundament: first spire of holiness",
        ["1441"] = "fundament: second spire of holiness",
        ["1442"] = "fundament: third spire of holiness",
        ["1450"] = "fundament: first spire of the reavers",
        ["1451"] = "fundament: second spire of the reavers",
        ["1452"] = "fundament: third spire of the reavers",
        ["1460"] = "fundament: first spire of the pathfinders",
        ["1461"] = "fundament: second spire of the pathfinders",
        ["1462"] = "fundament: third spire of the pathfinders",
        ["147"] = "spiritual rebuke",
        ["1470"] = "fundament: first spire of divinity",
        ["1471"] = "fundament: second spire of divinity",
        ["1472"] = "fundament: third spire of divinity",
        ["148"] = "pathosis",
        ["1480"] = "fundament: first spire of nature",
        ["1481"] = "fundament: second spire of nature",
        ["1482"] = "fundament: third spire of nature",
        ["149"] = "preincarnation",
        ["1490"] = "fundament: first spire of ancestors",
        ["1491"] = "fundament: second spire of ancestors",
        ["1492"] = "fundament: third spire of ancestors",
        ["1500"] = "fundament: first spire of savagery",
        ["1501"] = "fundament: second spire of savagery",
        ["1502"] = "fundament: third spire of savagery",
        ["1503"] = "hallowed steed",
        ["1504"] = "wicked steed",
        ["1505"] = "unknown aa 16103",
        ["151"] = "spiritual blessing",
        ["152"] = "communion of the cheetah",
        ["154"] = "hastened divinity",
        ["156"] = "hastened purification of the soul",
        ["157"] = "hastened gathering",
        ["158"] = "hastened rabidity",
        ["159"] = "hastened exodus",
        ["160"] = "hastened root",
        ["16001"] = "dimensional armory",
        ["161"] = "hastened mending",
        ["163"] = "hastened instigation",
        ["164"] = "hastened rampage",
        ["165"] = "hastened purification of the body",
        ["166"] = "hasty exit",
        ["1664"] = "twinproc",
        ["1665"] = "tactical mastery",
        ["1668"] = "acute focus of arcanum",
        ["1669"] = "flurry",
        ["167"] = "hastened purification",
        ["168"] = "hastened nature's fury",
        ["1680"] = "hastened flash of anger",
        ["1681"] = "hastened bazu roar",
        ["1682"] = "hastened scowl",
        ["1683"] = "hastened mark of the mage hunter",
        ["1686"] = "brace for impact",
        ["169"] = "divine arbitration",
        ["170"] = "wrath of the wild",
        ["171"] = "virulent paralysis",
        ["172"] = "harvest of druzzil",
        ["173"] = "eldritch rune",
        ["174"] = "servant of ro",
        ["175"] = "wake the dead",
        ["177"] = "spirit call",
        ["17787"] = "way of steel",
        ["17790"] = "necropotence",
        ["17791"] = "beeeees!",
        ["17792"] = "shadow curse",
        ["17793"] = "shamanic tongues",
        ["178"] = "wrath of the forest walker",
        ["179"] = "gift of sylvan spirits",
        ["180"] = "hand of piety",
        ["1800"] = "enchant planar alloy",
        ["1801"] = "mass enchant planar alloy",
        ["181"] = "mithaniel's binding",
        ["183"] = "extended vinelash cascade",
        ["184"] = "guardian of the forest",
        ["185"] = "spirit of the wood",
        ["186"] = "bestial frenzy",
        ["187"] = "harmonious attack",
        ["188"] = "knight's advantage",
        ["190"] = "viscid roots",
        ["193"] = "feigned minion",
        ["194"] = "unfailing divinity",
        ["195"] = "animation empathy",
        ["196"] = "rush to judgment",
        ["197"] = "living shield",
        ["198"] = "consumption of the soul",
        ["199"] = "boastful bellow",
        ["200"] = "fervent blessing",
        ["2001"] = "sneering grin",
        ["2002"] = "warlord's grasp",
        ["2003"] = "hastened press the attack",
        ["2004"] = "hastened rage of rallos zek",
        ["2005"] = "hastened unbroken attention",
        ["2006"] = "extended resplendant glory",
        ["2007"] = "wars sheol's heroic blade",
        ["2008"] = "hastened vehement rage",
        ["2009"] = "hastened barbed tongue",
        ["201"] = "touch of the wicked",
        ["2010"] = "hastened shield topple",
        ["2011"] = "imperator's command",
        ["2012"] = "imperator's charge",
        ["2013"] = "imperator's precision",
        ["2014"] = "hastened divine call",
        ["2015"] = "extended divine call",
        ["2016"] = "heroic leap",
        ["2018"] = "helix of the undying",
        ["2019"] = "group armor of the inquisitor",
        ["2020"] = "quickened demand for honor",
        ["2021"] = "extended sanctification",
        ["2022"] = "extended speed of the savior",
        ["2023"] = "extended preservation of marr",
        ["2024"] = "extended shield of brilliance",
        ["2025"] = "extended blessing of the faithful",
        ["2026"] = "hastened speed of the savior",
        ["2028"] = "hastened shield of brilliance",
        ["203"] = "speed of the knight",
        ["2031"] = "purity of death",
        ["2032"] = "quickened scourge skin",
        ["2034"] = "gift of the quick spear",
        ["2035"] = "extended provocation for power",
        ["2036"] = "quickened auspice of the hunter",
        ["2037"] = "chameleon's gift",
        ["204"] = "shroud of stealth",
        ["2040"] = "hastened enraging kicks",
        ["2041"] = "close combat mastery",
        ["2042"] = "quickened cover tracks",
        ["2045"] = "shield of reverence",
        ["2046"] = "extended healing frenzy",
        ["2047"] = "call of the herald",
        ["2048"] = "covenant of spirit",
        ["2049"] = "talisman of celerity",
        ["205"] = "nimble evasion",
        ["2050"] = "extended spiritual blessing",
        ["2051"] = "rejuvenation of spirit",
        ["2053"] = "hastened turgur's swarm",
        ["2055"] = "hastened lunar healing",
        ["2056"] = "quickened blessing of ro",
        ["2057"] = "hastened wall of wind",
        ["2059"] = "quickened focused paragon of spirit",
        ["206"] = "technique of master wu",
        ["2060"] = "elemental ward",
        ["2061"] = "cloak of shadows",
        ["2062"] = "hastened elemental union",
        ["2063"] = "hastened virulent talon",
        ["2064"] = "wind of malosinete",
        ["2065"] = "mana reserve",
        ["2066"] = "second wind ward",
        ["207"] = "host of the elements",
        ["2076"] = "steel vengeance",
        ["2077"] = "extended vapor core",
        ["2078"] = "extended stone core",
        ["2079"] = "extended fire core",
        ["208"] = "call of xuzl",
        ["2080"] = "extended ice core",
        ["2081"] = "flames of power",
        ["209"] = "hastened stealth",
        ["211"] = "fleet of foot",
        ["212"] = "fading memories",
        ["213"] = "tactical mastery",
        ["214"] = "theft of life",
        ["216"] = "extended spirit of the bear",
        ["217"] = "project illusion",
        ["218"] = "headshot",
        ["219"] = "entrap",
        ["220"] = "sonic displacement",
        ["2200"] = "rune of banishment",
        ["2201"] = "hastened glyph spray",
        ["2202"] = "illusions of grandeur",
        ["2203"] = "illusory ally",
        ["2204"] = "gracious gift of mana",
        ["2205"] = "chromatic haze",
        ["2206"] = "blanket of forgetfulness",
        ["2207"] = "ethereal manipulation",
        ["2208"] = "quick mezz",
        ["2209"] = "reactive rune",
        ["221"] = "total domination",
        ["222"] = "stalwart endurance",
        ["223"] = "quick summoning",
        ["2234"] = "cover tracks",
        ["2235"] = "imbued ferocity",
        ["227"] = "extended notes",
        ["228"] = "hastened warder's gift",
        ["229"] = "improved reclaim energy",
        ["230"] = "hastened possum",
        ["231"] = "shauri's sonorious clouding",
        ["232"] = "veil of the underbrush",
        ["238"] = "tune of pursuance",
        ["239"] = "hastened companion's sacrifice",
        ["240"] = "cheetah's pounce",
        ["241"] = "bloodlust",
        ["242"] = "primal fury",
        ["244"] = "lure of the siren's song",
        ["245"] = "bestial alignment",
        ["246"] = "hidden communion of the cheetah",
        ["247"] = "feral swipe",
        ["248"] = "warder's fury",
        ["249"] = "warder's alacrity",
        ["254"] = "divine avatar",
        ["255"] = "exquisite benediction",
        ["257"] = "nature's boon",
        ["258"] = "advanced tracking",
        ["260"] = "glacial arrow",
        ["261"] = "doppelganger",
        ["262"] = "enhanced forgetfulness",
        ["263"] = "mesmerization mastery",
        ["264"] = "quick mass group buff",
        ["265"] = "shared health",
        ["266"] = "elemental fury",
        ["267"] = "elemental alacrity",
        ["268"] = "elemental agility",
        ["269"] = "elemental durability",
        ["270"] = "sinister strikes",
        ["2709"] = "perfected dead man floating",
        ["271"] = "strikethrough",
        ["272"] = "stonewall",
        ["273"] = "rapid strikes",
        ["274"] = "kick mastery",
        ["275"] = "heightened awareness",
        ["276"] = "destructive force",
        ["278"] = "death's fury",
        ["279"] = "quickening of death",
        ["280"] = "group perfected invisibility to undead",
        ["281"] = "triple backstab",
        ["282"] = "hastened piety",
        ["283"] = "immobilizing bash",
        ["284"] = "vicious smash",
        ["286"] = "purification",
        ["287"] = "precision of the pathfinder",
        ["288"] = "coat of thistles",
        ["289"] = "flaming arrows",
        ["2899"] = "levant",
        ["290"] = "frost arrows",
        ["291"] = "perfected invisibility to undead",
        ["293"] = "quickened stasis",
        ["294"] = "virulent venom",
        ["295"] = "extended dreary deeds",
        ["296"] = "intense hatred",
        ["297"] = "quickened frenzied burnout",
        ["299"] = "sturdiness",
        ["300"] = "warlord's tenacity",
        ["3000"] = "auroria mastery",
        ["301"] = "strengthened strike",
        ["303"] = "ro's flaming familiar",
        ["304"] = "e'ci's icy familiar",
        ["305"] = "druzzil's mystical familiar",
        ["306"] = "unknown aa 15819",
        ["307"] = "ward of destruction",
        ["308"] = "frenzied devastation",
        ["310"] = "combat fury",
        ["311"] = "combat fury",
        ["312"] = "quickened host of the elements",
        ["313"] = "hastened companion's relocation",
        ["314"] = "veteran's wrath",
        ["315"] = "planar durability",
        ["317"] = "dire charm (animal)",
        ["318"] = "dire charm",
        ["319"] = "touch of the divine",
        ["320"] = "swarm of decay",
        ["3202"] = "pet discipline",
        ["3203"] = "enchant palladium trio",
        ["3204"] = "mass enchant palladium",
        ["3205"] = "greater mass enchant palladium",
        ["3206"] = "enchant dwerium",
        ["3207"] = "mass enchant dwerium",
        ["3208"] = "enchant palladium",
        ["3209"] = "enchant temporite",
        ["321"] = "call of the ancients",
        ["3210"] = "mass enchant temporite",
        ["3211"] = "nature's reprieve",
        ["3212"] = "hastened divine intervention",
        ["3213"] = "projection of fury",
        ["3214"] = "improved atone",
        ["3215"] = "projection of doom",
        ["3216"] = "projection of piety",
        ["3217"] = "hastened jolting kicks",
        ["3218"] = "enchant cosgrite",
        ["3219"] = "mass enchant cosgrite",
        ["323"] = "virulent talon",
        ["337"] = "unknown aa 15798",
        ["339"] = "veteran's wrath",
        ["340"] = "unknown aa 15833",
        ["341"] = "veteran's wrath",
        ["343"] = "hastened pestilent paralysis",
        ["344"] = "hastened mercurial torment",
        ["345"] = "unknown aa 15768",
        ["35"] = "mass group buff",
        ["350"] = "death's malaise",
        ["3500"] = "blessing of light",
        ["3506"] = "fierce eye",
        ["351"] = "dying grasp",
        ["3511"] = "punch mastery",
        ["3513"] = "rake's deadly aim",
        ["3514"] = "rogue's fury",
        ["3515"] = "envenomed blades",
        ["3516"] = "companion of necessity",
        ["3517"] = "rake's powerful aim",
        ["3518"] = "hastened cacophony",
        ["3519"] = "hastened funeral dirge",
        ["3520"] = "master's hastened combination",
        ["3525"] = "precise blow",
        ["353"] = "master of disguise",
        ["355"] = "unknown aa 15836",
        ["3550"] = "beguiler's banishment",
        ["3551"] = "beguiler's directed banishment",
        ["357"] = "unknown aa 16176",
        ["359"] = "dance of blades",
        ["36"] = "divine resurrection",
        ["360"] = "bloodthirsty blade",
        ["3600"] = "rapid defiance",
        ["361"] = "shield of notes",
        ["362"] = "roar of thunder",
        ["363"] = "unknown aa 16179",
        ["3646"] = "blast of anger",
        ["365"] = "a hole in space",
        ["366"] = "advanced pet discipline",
        ["367"] = "throwing mastery",
        ["3676"] = "gift of life",
        ["368"] = "blur of axes",
        ["369"] = "hastened war cry",
        ["37"] = "innate invis to undead",
        ["370"] = "dead aim",
        ["3701"] = "dirge of the sleepwalker",
        ["3702"] = "quick time",
        ["3703"] = "steady hands",
        ["3704"] = "selo's sonata",
        ["3706"] = "hastened bestial alignment",
        ["3709"] = "pact of the wurine",
        ["371"] = "frenzied defense",
        ["3710"] = "reckless abandon",
        ["3711"] = "gift of resurrection",
        ["3713"] = "hastened call of the wild",
        ["3714"] = "protection of direwood",
        ["3716"] = "clinging root",
        ["372"] = "tireless sprint",
        ["3720"] = "mana overburn",
        ["3724"] = "return bash",
        ["3725"] = "hunter's return kick",
        ["3726"] = "hastened ligament slice",
        ["3727"] = "knave's return strike",
        ["3728"] = "storm strike",
        ["3729"] = "turgur's swarm",
        ["373"] = "desperation",
        ["3730"] = "silent presence",
        ["3731"] = "infused by rage",
        ["3732"] = "gut punch",
        ["3733"] = "warlord's return kick",
        ["3734"] = "arcomancy",
        ["374"] = "untamed rage",
        ["375"] = "echoing cries",
        ["376"] = "distant strike",
        ["38"] = "celestial regeneration",
        ["3800"] = "blessing of resurrection",
        ["3803"] = "hastened trueshot",
        ["3804"] = "outrider's accuracy",
        ["3805"] = "hastened mend",
        ["3812"] = "perfected invisibility",
        ["3815"] = "destructive cascade",
        ["3816"] = "companion's relocation",
        ["3817"] = "focused paragon of spirits",
        ["3818"] = "companion's agility",
        ["3819"] = "maestro's concentration",
        ["3820"] = "blessing of life",
        ["3821"] = "quickened harvest of druzzil",
        ["3822"] = "chattering bones",
        ["3823"] = "warlord's deadly aim",
        ["3824"] = "quickened call of the wild",
        ["3826"] = "force of disruption",
        ["383"] = "extended spirit of the wood",
        ["3830"] = "hastened divine avatar",
        ["3831"] = "hastened purification",
        ["3832"] = "beastlords feral kick",
        ["3836"] = "holy root",
        ["3838"] = "quickened suspend minion",
        ["3839"] = "quickened summon axes",
        ["384"] = "spirit of the bear",
        ["3840"] = "recourse of life",
        ["3841"] = "call hither",
        ["3842"] = "fortified survival",
        ["3843"] = "fortified intervention",
        ["386"] = "nature's fury",
        ["3865"] = "planar durability",
        ["387"] = "blood pact",
        ["3890"] = "hastened force of will",
        ["3891"] = "hastened burnout",
        ["3892"] = "hastened rumbling servant",
        ["3893"] = "extended rumbling servant",
        ["3899"] = "furious leap",
        ["39"] = "bestow divine aura",
        ["390"] = "elemental union",
        ["391"] = "celestial hammer",
        ["392"] = "divine retribution",
        ["393"] = "nature's blessing",
        ["394"] = "extended convergence of spirit",
        ["395"] = "hastened storm strike",
        ["396"] = "sanctuary",
        ["399"] = "unknown aa 16180",
        ["400"] = "hastened improved twincast",
        ["4001"] = "undaunted fury",
        ["4002"] = "frenzied volley",
        ["401"] = "extended heel of kanji",
        ["402"] = "extended scaledfist",
        ["403"] = "paralytic spores",
        ["404"] = "call of the wild",
        ["405"] = "secondary recall",
        ["406"] = "nature's bounty",
        ["407"] = "extended speed focus",
        ["408"] = "extended crystalpalm",
        ["409"] = "stasis",
        ["41"] = "purify soul",
        ["410"] = "way of steel",
        ["411"] = "extended deftdance",
        ["412"] = "color shock",
        ["413"] = "mind over matter",
        ["414"] = "soothing words",
        ["415"] = "hastened deftdance",
        ["416"] = "hastened lyre leap",
        ["417"] = "hastened quick time",
        ["418"] = "replenish companion",
        ["419"] = "extended quick time",
        ["42"] = "quick evacuation",
        ["420"] = "imitate death",
        ["424"] = "extended fierce eye",
        ["425"] = "hastened fierce eye",
        ["426"] = "unknown aa 15904",
        ["427"] = "resounding dirge",
        ["428"] = "death peace",
        ["429"] = "unknown aa 15908",
        ["43"] = "exodus",
        ["430"] = "mercurial torment",
        ["431"] = "pestilent paralysis",
        ["432"] = "hastened divine companion aura",
        ["433"] = "embalmer's carapace",
        ["434"] = "steadfast will",
        ["436"] = "hastened encroaching darkness",
        ["437"] = "tracking mastery",
        ["438"] = "expanding darkness",
        ["439"] = "precision",
        ["44"] = "quick damage",
        ["440"] = "nerves of steel",
        ["441"] = "aegis of kildrukaun",
        ["442"] = "touch of the cursed",
        ["443"] = "bestial bloodrage",
        ["444"] = "companion's sacrifice",
        ["446"] = "spiritual channeling",
        ["447"] = "ancestral aid",
        ["448"] = "extended feralgia",
        ["45"] = "enhanced root",
        ["450"] = "hastened protective spirit",
        ["451"] = "mind crash",
        ["452"] = "prolonged destruction",
        ["454"] = "hastened empathic fury",
        ["455"] = "convergence of spirits",
        ["456"] = "teleport bind",
        ["457"] = "quickened paragon of spirit",
        ["458"] = "warder's gift",
        ["459"] = "gelid rending",
        ["46"] = "dire charm",
        ["460"] = "quickened nature's salve",
        ["462"] = "auspice of the hunter",
        ["463"] = "divine guardian",
        ["464"] = "divine peace",
        ["465"] = "savage spirit",
        ["4666"] = "shield specialist",
        ["467"] = "press the attack",
        ["468"] = "crippling strike",
        ["469"] = "stunning kick",
        ["47"] = "cannibalization",
        ["470"] = "eye gouge",
        ["489"] = "yaulp",
        ["490"] = "abscond",
        ["491"] = "atol's unresistable shackles",
        ["492"] = "dimensional shield",
        ["493"] = "improved sustained destruction",
        ["496"] = "field dressing",
        ["499"] = "cascading rage",
        ["50"] = "rabid bear",
        ["501"] = "e'ci's icy blessing",
        ["503"] = "hastened thunder",
        ["504"] = "conservation",
        ["505"] = "cry of battle",
        ["506"] = "ward of purity",
        ["507"] = "ro's fiery blessing",
        ["508"] = "druzzil's mystical blessing",
        ["509"] = "kerafyrm's favor",
        ["510"] = "kerafyrm's prismatic familiar",
        ["512"] = "translocational anchor",
        ["513"] = "hastened phantasmal opponent",
        ["514"] = "pyromancy",
        ["515"] = "improved twincast",
        ["517"] = "hastened first spire of enchantment",
        ["518"] = "shared camouflage",
        ["519"] = "convergence of spirits",
        ["52"] = "improved familiar",
        ["520"] = "nature's guardian",
        ["521"] = "edict of command",
        ["522"] = "extended burnout",
        ["523"] = "hastened second spire of enchantment",
        ["524"] = "blood magic",
        ["525"] = "graverobbing",
        ["526"] = "affliction mastery",
        ["527"] = "hastened third spire of enchantment",
        ["528"] = "ancestral guard",
        ["529"] = "cloak of light",
        ["53"] = "nexus gate",
        ["530"] = "profound visage",
        ["531"] = "cloak of shadows",
        ["532"] = "willful death",
        ["533"] = "unknown aa 16016",
        ["534"] = "calculated insanity",
        ["535"] = "crippling aurora",
        ["536"] = "appraisal",
        ["537"] = "precise strikes",
        ["538"] = "hastened death",
        ["539"] = "unflinching resolve",
        ["540"] = "weightless steps",
        ["541"] = "hastened blades",
        ["542"] = "unknown aa 16071",
        ["543"] = "diminutive companion",
        ["544"] = "song of stone",
        ["545"] = "deep sleep",
        ["546"] = "companion's gift",
        ["547"] = "unknown aa 16081",
        ["548"] = "hastened defiance",
        ["549"] = "dauntless perseverance",
        ["55"] = "permanent illusion",
        ["550"] = "steadfast resolve",
        ["551"] = "hastened mind crash",
        ["552"] = "call of challenge",
        ["553"] = "cacophony",
        ["554"] = "hastened nightmare stasis",
        ["555"] = "anatomy",
        ["556"] = "scintillating beam",
        ["557"] = "trick shot",
        ["558"] = "turn undead",
        ["559"] = "turn summoned",
        ["560"] = "selo's enduring cadence",
        ["561"] = "hastened harvest of druzzil",
        ["562"] = "lightning strikes",
        ["565"] = "mana burn",
        ["567"] = "unknown aa 16146",
        ["568"] = "thief's intuition",
        ["569"] = "thief's intuition",
        ["57"] = "gather mana",
        ["570"] = "valiant steed",
        ["571"] = "abyssal steed",
        ["572"] = "holy warhorse",
        ["573"] = "unholy warhorse",
        ["577"] = "concussive intuition",
        ["578"] = "glyph spray",
        ["58"] = "mend companion",
        ["580"] = "hastened outrider's accuracy",
        ["583"] = "hastened outrider's evasion",
        ["584"] = "grasp of sylvan spirits",
        ["596"] = "small modulation shard",
        ["597"] = "medium modulation shard",
        ["598"] = "large modulation shard",
        ["599"] = "hastened malosinete",
        ["60"] = "frenzied burnout",
        ["6000"] = "harm touch",
        ["6001"] = "lay on hands",
        ["6002"] = "hunter's attack power",
        ["601"] = "grappling strike",
        ["602"] = "mental contortion",
        ["603"] = "shield of the elements",
        ["604"] = "extended malosinete",
        ["605"] = "shield specialist",
        ["606"] = "mark of the mage hunter",
        ["609"] = "uncanny resilience",
        ["61"] = "elemental form: fire",
        ["610"] = "blinding fury",
        ["6106"] = "sustained destruction",
        ["611"] = "battle leap",
        ["612"] = "soul seeker",
        ["613"] = "lingering death",
        ["614"] = "spirit guardian",
        ["615"] = "surreality",
        ["616"] = "mana draw",
        ["617"] = "doppelganger's beckon",
        ["618"] = "armor of ancestral spirits",
        ["619"] = "group pact of the wolf",
        ["62"] = "elemental form: water",
        ["620"] = "hastened inconspicuous totem",
        ["621"] = "fire core",
        ["622"] = "vapor core",
        ["623"] = "ice core",
        ["624"] = "stone core",
        ["625"] = "volatile mana blaze",
        ["626"] = "purified spirits",
        ["627"] = "group spirit walk",
        ["628"] = "greater blood tithe",
        ["629"] = "gathering dusk",
        ["63"] = "elemental form: earth",
        ["630"] = "group silent presence",
        ["6302"] = "hastened reckless abandon",
        ["631"] = "double attack",
        ["632"] = "sanguine mind crystal",
        ["633"] = "azure mind crystal",
        ["634"] = "hastened cannibalization",
        ["635"] = "hastened spirit channeling",
        ["636"] = "arcane whisper",
        ["6362"] = "hastened recklessness",
        ["637"] = "vengeful spirits",
        ["638"] = "crippling apparition",
        ["639"] = "dimensional instability",
        ["64"] = "elemental form: air",
        ["640"] = "cryomancy",
        ["641"] = "hastened self preservation",
        ["642"] = "binding axe",
        ["643"] = "agony of absolution",
        ["644"] = "hastened absolution",
        ["645"] = "hastened calculated insanity",
        ["646"] = "hastened mental contortion",
        ["647"] = "hastened crippling aurora",
        ["6478"] = "hastened blessing of resurrection",
        ["6481"] = "hastened divine resurrection",
        ["6488"] = "flurry of life",
        ["6489"] = "hastened holyforge",
        ["649"] = "hastened leech touch",
        ["6492"] = "inquisitor's judgement",
        ["650"] = "bony grasp of death",
        ["651"] = "thought leech",
        ["652"] = "hastened leechcurse discipline",
        ["653"] = "hastened unholy aura discipline",
        ["654"] = "hastened harmshield",
        ["655"] = "hastened projection of doom",
        ["656"] = "hastened projection of piety",
        ["657"] = "shield of brilliance",
        ["658"] = "hastened sanctification discipline",
        ["659"] = "speed of the savior",
        ["660"] = "divine call",
        ["661"] = "hunter's fury",
        ["662"] = "union of spirits",
        ["663"] = "quickened stuns",
        ["664"] = "extended outrider's attack",
        ["665"] = "death's wrath",
        ["666"] = "taste of blood",
        ["667"] = "summoner's beckon",
        ["668"] = "hymn of the last stand",
        ["669"] = "bladed song",
        ["67"] = "elemental pact",
        ["670"] = "twisted shank",
        ["671"] = "dirty fighting",
        ["672"] = "ligament slice",
        ["673"] = "tumble",
        ["674"] = "unknown aa 16149",
        ["675"] = "shrink",
        ["676"] = "convergence",
        ["677"] = "gift of deathly resolve",
        ["678"] = "unknown aa 16082",
        ["68"] = "life burn",
        ["680"] = "unknown aa 16084",
        ["681"] = "unknown aa 16087",
        ["682"] = "unknown aa 16096",
        ["683"] = "unknown aa 16097",
        ["684"] = "unknown aa 16104",
        ["685"] = "unknown aa 16105",
        ["686"] = "unknown aa 16106",
        ["687"] = "unknown aa 16107",
        ["688"] = "unknown aa 16108",
        ["689"] = "combat medic",
        ["69"] = "dead mesmerization",
        ["690"] = "unknown aa 16109",
        ["691"] = "unknown aa 16113",
        ["692"] = "unknown aa 16114",
        ["693"] = "unknown aa 16117",
        ["694"] = "unknown aa 16120",
        ["695"] = "unknown aa 16152",
        ["696"] = "unknown aa 16156",
        ["697"] = "mortal coil",
        ["698"] = "hastened purified spirits",
        ["6988"] = "extended group bestial alignment",
        ["699"] = "swarm of fireflies",
        ["70"] = "fear storm",
        ["700"] = "unknown aa 16159",
        ["7000"] = "voice of thule",
        ["7001"] = "zan fi's whistle",
        ["7002"] = "summon remains",
        ["7007"] = "summon remains",
        ["7009"] = "teleport bind",
        ["701"] = "armor of the inquisitor",
        ["702"] = "hand of disruption",
        ["703"] = "quickened death bloom",
        ["7033"] = "lasting bravery",
        ["7036"] = "hastened blast of anger",
        ["705"] = "spirit of the white wolf",
        ["7050"] = "call of the hero",
        ["706"] = "unknown aa 16160",
        ["7060"] = "precision of axes",
        ["707"] = "pact of the wolf",
        ["7070"] = "hastened distraction attack",
        ["708"] = "enchant alaran metal",
        ["709"] = "mass enchant alaran metal",
        ["71"] = "flesh to bone",
        ["710"] = "funeral pyre",
        ["7105"] = "deathly pact",
        ["7106"] = "planar durability",
        ["7107"] = "hastened getaway",
        ["7108"] = "divine aura",
        ["7109"] = "hastened wrath of the wild",
        ["711"] = "unknown aa 16162",
        ["712"] = "hastened sanctuary",
        ["713"] = "etherium blades",
        ["714"] = "hastened assassination disciplines",
        ["715"] = "cunning disguise: shissar",
        ["716"] = "scout's mastery of piercing",
        ["717"] = "extended envenomed blades",
        ["718"] = "heel of brithrax",
        ["719"] = "extended zan fi's whistle",
        ["72"] = "call to corpse",
        ["720"] = "hastened marr's salvation",
        ["721"] = "hastened armor of the inquisitor",
        ["722"] = "hastened drape of shadows",
        ["723"] = "unknown aa 16185",
        ["724"] = "hastened eldritch rune",
        ["725"] = "unknown aa 16124",
        ["726"] = "unknown aa 16128",
        ["727"] = "unknown aa 16131",
        ["728"] = "unknown aa 16137",
        ["729"] = "unknown aa 16140",
        ["73"] = "divine stun",
        ["730"] = "unknown aa 16186",
        ["731"] = "unknown aa 16188",
        ["732"] = "unknown aa 16195",
        ["734"] = "hold the line",
        ["735"] = "battle frenzy",
        ["739"] = "balefire burst",
        ["740"] = "blood tithe",
        ["741"] = "leap of faith",
        ["742"] = "unknown aa 16196",
        ["743"] = "hastened explosion of hatred",
        ["744"] = "howl of the warlord",
        ["745"] = "hastened tune in your head",
        ["746"] = "unknown aa 16197",
        ["747"] = "unknown aa 16200",
        ["748"] = "nightmare stasis",
        ["749"] = "explosion of spite",
        ["75"] = "slay undead",
        ["751"] = "scent of terris",
        ["752"] = "bloodfury",
        ["753"] = "dreary deeds",
        ["754"] = "enchant feymetal",
        ["755"] = "mass enchant feymetal",
        ["756"] = "enlightened focus of arcanum",
        ["757"] = "shifting elements",
        ["758"] = "extended silent casting",
        ["759"] = "fury of kerafyrm",
        ["76"] = "act of valor",
        ["760"] = "unknown aa 16203",
        ["761"] = "unknown aa 16208",
        ["763"] = "mirrored pestilence",
        ["764"] = "embrace the decay",
        ["765"] = "quickened scent of terris",
        ["766"] = "frenzy of the dead",
        ["767"] = "unknown aa 16211",
        ["768"] = "unknown aa 16215",
        ["7689"] = "burst of life",
        ["769"] = "marr's salvation",
        ["7690"] = "spirit mastery",
        ["7695"] = "quickened blood of avoling",
        ["7698"] = "dead man floating",
        ["7699"] = "dread incarnate",
        ["77"] = "holy steed",
        ["770"] = "blessing of the faithful",
        ["7700"] = "flurry",
        ["7703"] = "death bloom",
        ["771"] = "unbridled strike of fear",
        ["7712"] = "disruptive persecution",
        ["7715"] = "hastened whisperwind",
        ["772"] = "noteworthy disguise: drake",
        ["773"] = "death's effigy",
        ["774"] = "empowered focus of arcanum",
        ["7743"] = "hastened guardian of the forest",
        ["7746"] = "hastened flusterbolt",
        ["7747"] = "volatile arrow",
        ["7748"] = "pathfinder's grace",
        ["775"] = "unknown aa 16342",
        ["7751"] = "hastened cover tracks",
        ["7754"] = "steed of souls",
        ["7755"] = "scourge skin",
        ["7756"] = "death's effigy",
        ["7757"] = "hastened visage of death",
        ["776"] = "arcane overkill",
        ["7760"] = "hastened hate step",
        ["777"] = "funeral dirge",
        ["778"] = "protection of the spirit wolf",
        ["779"] = "hastened juggernaut surge",
        ["78"] = "fearless",
        ["780"] = "hastened resilience",
        ["7801"] = "songwriting",
        ["781"] = "hastened blood pact",
        ["782"] = "unknown aa 16317",
        ["784"] = "heart of flames",
        ["785"] = "heart of vapor",
        ["786"] = "heart of ice",
        ["787"] = "heart of stone",
        ["789"] = "stealthy getaway",
        ["79"] = "2 hand bash",
        ["790"] = "seized opportunity",
        ["791"] = "veil of mindshadow",
        ["792"] = "army of the dead",
        ["7925"] = "sionachie's crescendo",
        ["793"] = "mana blast",
        ["794"] = "mana blaze",
        ["796"] = "hastened five point palm",
        ["797"] = "moving mountains",
        ["798"] = "veturika's perseverance",
        ["799"] = "unknown aa 16644",
        ["80"] = "innate camouflage",
        ["800"] = "vehement rage",
        ["801"] = "knee strike",
        ["802"] = "hastened fortitude discipline",
        ["803"] = "hastened furious discipline",
        ["804"] = "warlord's bravery",
        ["805"] = "hastened speed focus",
        ["806"] = "hastened zan fi's whistle",
        ["807"] = "pressure points",
        ["808"] = "hastened thunder",
        ["809"] = "allegretto of battle",
        ["81"] = "ambidexterity",
        ["810"] = "vivace of conflict",
        ["811"] = "unknown aa 16218",
        ["812"] = "unknown aa 16221",
        ["813"] = "unknown aa 16222",
        ["814"] = "unknown aa 16225",
        ["815"] = "unknown aa 16230",
        ["816"] = "unknown aa 16235",
        ["817"] = "unknown aa 16238",
        ["818"] = "unknown aa 16257",
        ["819"] = "unknown aa 16666",
        ["82"] = "archery mastery",
        ["820"] = "death's revenge",
        ["8200"] = "hastened dirge of the sleepwalker",
        ["8201"] = "vainglorious shout",
        ["8202"] = "lyre leap",
        ["8203"] = "domination mastery",
        ["8204"] = "lyrical prankster",
        ["8205"] = "selo's kick",
        ["821"] = "harmshield",
        ["822"] = "explosion of hatred",
        ["823"] = "cascading theft of defense",
        ["824"] = "hate step",
        ["825"] = "vicious bite of chaos",
        ["826"] = "encroaching darkness",
        ["8261"] = "a tune stuck in your head",
        ["8262"] = "the show must go on",
        ["827"] = "unknown aa 16745",
        ["828"] = "unknown aa 16260",
        ["829"] = "unknown aa 16263",
        ["830"] = "unknown aa 16272",
        ["8301"] = "improved natural invisibility",
        ["8302"] = "protection of the warder",
        ["8303"] = "nature's salve",
        ["8304"] = "focus of animus",
        ["831"] = "unknown aa 16276",
        ["8314"] = "fluid march",
        ["8317"] = "hastened selo's kick",
        ["8319"] = "hastened bellow",
        ["832"] = "unknown aa 16287",
        ["8322"] = "belltone mind",
        ["8325"] = "subtle blows",
        ["833"] = "unknown aa 17252",
        ["8331"] = "enhanced thief's eyes",
        ["8332"] = "extended languid bite",
        ["8335"] = "quickened malosinete",
        ["834"] = "unknown aa 16296",
        ["8341"] = "drape of shadows",
        ["8342"] = "host in the shell",
        ["8347"] = "hastened mana draw",
        ["835"] = "unknown aa 16300",
        ["8350"] = "hastened mezmerization",
        ["836"] = "unknown aa 16310",
        ["837"] = "unknown aa 16330",
        ["838"] = "unknown aa 16163",
        ["839"] = "unknown aa 16360",
        ["84"] = "endless quiver",
        ["840"] = "unknown aa 16363",
        ["8400"] = "self preservation",
        ["8401"] = "hastened frenzy",
        ["8402"] = "extended havoc",
        ["841"] = "sleight of hand",
        ["842"] = "enduring vision",
        ["843"] = "expertise of blades",
        ["844"] = "cunning disguise: human",
        ["845"] = "cunning disguise: half-elf",
        ["846"] = "cunning disguise: barbarian",
        ["847"] = "cunning disguise: erudite",
        ["848"] = "cunning disguise: troll",
        ["849"] = "cunning disguise: goblin",
        ["85"] = "unholy steed",
        ["850"] = "unknown aa 16366",
        ["8500"] = "healing frenzy",
        ["8501"] = "overpowering strikes",
        ["8502"] = "quickened blessing of ressurection",
        ["8503"] = "hastened atonement",
        ["8504"] = "improved sanctuary",
        ["8505"] = "blessing of sanctuary",
        ["8506"] = "hastened celestial hammer",
        ["851"] = "unknown aa 16369",
        ["852"] = "unknown aa 16370",
        ["853"] = "unknown aa 16371",
        ["854"] = "unknown aa 17256",
        ["856"] = "tigir's insect swarm",
        ["857"] = "dampen resistance",
        ["858"] = "hastened dampen resistance",
        ["859"] = "spirit walk",
        ["860"] = "hastened virulent paralysis",
        ["8600"] = "spirit of eagle",
        ["8601"] = "flight of eagles",
        ["8602"] = "egress",
        ["8603"] = "spirits of nature",
        ["8604"] = "wall of wind",
        ["8605"] = "hastened spirit of the wood",
        ["8606"] = "hastened convergence of spirits",
        ["861"] = "languid bite",
        ["862"] = "quickened blood of nadox",
        ["863"] = "hastened spirit call",
        ["864"] = "hastened thousand blades",
        ["865"] = "unknown aa 17257",
        ["866"] = "extended dance of blades",
        ["867"] = "extended thousand blades",
        ["868"] = "unknown aa 16380",
        ["869"] = "unknown aa 16386",
        ["87"] = "leech touch",
        ["870"] = "harmonious arrow",
        ["8700"] = "beam of slumber",
        ["8701"] = "phantasmic reflex",
        ["8702"] = "friendly stasis",
        ["8703"] = "hastened self stasis",
        ["8704"] = "forceful banishment",
        ["8708"] = "hastened cascading rage",
        ["871"] = "hastened weapon shield",
        ["872"] = "outrider's attack",
        ["873"] = "group guardian of the forest",
        ["874"] = "pack hunt",
        ["875"] = "keen blade",
        ["876"] = "outrider's evasion",
        ["877"] = "ranged finesse",
        ["878"] = "bow mastery",
        ["880"] = "unknown aa 16392",
        ["8800"] = "force of elements",
        ["8801"] = "aspect of zomm",
        ["8802"] = "extended shared health",
        ["881"] = "unknown aa 16395",
        ["882"] = "unknown aa 16396",
        ["884"] = "unknown aa 17209",
        ["886"] = "unknown aa 17218",
        ["889"] = "unknown aa 17229",
        ["89"] = "soul abrasion",
        ["890"] = "unknown aa 17235",
        ["8900"] = "agile feet",
        ["8901"] = "hastened defensive poses",
        ["8902"] = "extended impenetrable discipline",
        ["8903"] = "hastened destructive force",
        ["891"] = "healing light",
        ["892"] = "halt the dead",
        ["894"] = "unknown aa 17242",
        ["895"] = "unknown aa 17245",
        ["896"] = "unknown aa 17249",
        ["898"] = "unknown aa 17267",
        ["899"] = "unknown aa 17273",
        ["90"] = "instrument mastery",
        ["900"] = "rise of bones",
        ["9001"] = "reluctant benevolence",
        ["901"] = "whisperwind",
        ["902"] = "hastened blood magic",
        ["903"] = "overpower undead",
        ["904"] = "hastened swarm of decay",
        ["905"] = "gift of the grave",
        ["906"] = "hastened gut punch",
        ["907"] = "hastened first spire of the warlord",
        ["908"] = "hastened second spire of the warlord",
        ["909"] = "hastened third spire of the warlord",
        ["910"] = "unknown aa 17280",
        ["9100"] = "bestow divine aura",
        ["9101"] = "blessing of purification",
        ["9102"] = "sense the dead",
        ["911"] = "warlord's resurgence",
        ["912"] = "warlord's fury",
        ["914"] = "holy shield",
        ["915"] = "unknown aa 17281",
        ["917"] = "hastened grappling strike",
        ["918"] = "furious refrain",
        ["919"] = "unknown aa 17554",
        ["920"] = "valorous rage",
        ["9200"] = "hastened auspice of the hunter",
        ["9201"] = "clenched jaw",
        ["9202"] = "scout's mastery of fire",
        ["9203"] = "scout's mastery of ice",
        ["9205"] = "scout's mastery of slashing",
        ["9206"] = "scout's mastery of piercing",
        ["9207"] = "scout's mastery of blunt weapons",
        ["921"] = "hastened group guardian of the forest",
        ["922"] = "hastened outrider's attack",
        ["923"] = "hastened protection of the spirit wolf",
        ["924"] = "hastened imbued ferocity",
        ["925"] = "hastened harmonious arrow",
        ["926"] = "hastened entrap",
        ["927"] = "poison arrows",
        ["928"] = "merciless blade",
        ["929"] = "combatant's pact",
        ["930"] = "warlord's resolve",
        ["9300"] = "massive strike",
        ["9301"] = "strikethrough",
        ["931"] = "hastened hate's attraction",
        ["932"] = "unknown aa 17289",
        ["933"] = "improved death peace",
        ["934"] = "unknown aa 17307",
        ["935"] = "blessing of ro",
        ["936"] = "extended wild growth",
        ["937"] = "unknown aa 17317",
        ["939"] = "communion of the cheetah",
        ["94"] = "jam fest",
        ["940"] = "hastened song of stone",
        ["9400"] = "hate's attraction",
        ["9401"] = "feigned minion",
        ["9402"] = "hastened summon remains",
        ["9403"] = "visage of death",
        ["9404"] = "cascading theft of life",
        ["941"] = "flurry",
        ["942"] = "destructive cascade",
        ["943"] = "total domination",
        ["944"] = "enhanced forgetfulness",
        ["945"] = "infusion of thunder",
        ["946"] = "hastened warlord's bravery",
        ["947"] = "hastened warlord's tenacity",
        ["948"] = "unknown aa 17328",
        ["949"] = "unknown aa 17329",
        ["950"] = "unknown aa 17336",
        ["9500"] = "extended sloth",
        ["9501"] = "hastened ancestral aid",
        ["9502"] = "hastened union of spirits",
        ["9503"] = "group shrink",
        ["9504"] = "inconspicuous totem",
        ["9505"] = "extended pestilence",
        ["951"] = "unknown aa 17339",
        ["952"] = "unknown aa 17342",
        ["953"] = "unknown aa 17344",
        ["954"] = "unknown aa 17347",
        ["956"] = "unknown aa 17361",
        ["957"] = "unknown aa 17364",
        ["958"] = "unknown aa 17370",
        ["959"] = "unknown aa 17372",
        ["960"] = "stomping leap",
        ["9600"] = "hastened taunt",
        ["9601"] = "extended shield reflect",
        ["9602"] = "extended commanding voice",
        ["961"] = "juggernaut surge",
        ["962"] = "distraction attack",
        ["963"] = "hastened savage spirit",
        ["964"] = "dying blow",
        ["965"] = "hastened projection of fury",
        ["966"] = "unknown aa 17373",
        ["967"] = "blade guardian",
        ["968"] = "unknown aa 17375",
        ["97"] = "critical mend",
        ["9700"] = "hastened destruction",
        ["9701"] = "netherstep",
        ["9702"] = "beam of displacement",
        ["9703"] = "translocate",
        ["9704"] = "teleport",
        ["972"] = "unknown aa 17384",
        ["974"] = "unknown aa 17409",
        ["975"] = "unknown aa 17414",
        ["976"] = "unknown aa 17418",
        ["978"] = "unknown aa 17428",
        ["979"] = "unknown aa 17436",
        ["98"] = "purify body",
        ["980"] = "natural invisibility",
        ["981"] = "attack of the warders",
        ["982"] = "hastened feral attacks",
        ["983"] = "hastened focused paragon",
        ["984"] = "hastened paragon",
        ["985"] = "group bestial alignment",
        ["986"] = "bite of the asp",
        ["987"] = "raven's claw",
        ["988"] = "gorilla smash",
        ["989"] = "stonefoot",
        ["990"] = "hastened stunning kick",
        ["991"] = "quickened turn undead",
        ["992"] = "tranquil blessings",
        ["993"] = "righteous zeal",
        ["994"] = "hastened divine retribution",
        ["996"] = "powerful elixirs",
        ["997"] = "celestial rapidity",
        ["998"] = "hastened celestial regeneration",
        ["999"] = "improved burst of life",
      },
    },
    general = {
      byName = {
        ["alchemy mastery"] = {
          {
            classes = 512,
            firstRankId = 150,
            id = 49,
            maxRank = 3,
            name = "Alchemy Mastery",
          },
        },
        ["baking mastery"] = {
          {
            classes = 65535,
            firstRankId = 982,
            id = 325,
            maxRank = 3,
            name = "Baking Mastery",
          },
        },
        ["bandage wounds"] = {
          {
            classes = 32766,
            firstRankId = 1420,
            id = 497,
            maxRank = 5,
            name = "Bandage Wounds",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 17,
                    name = "First Aid",
                    points = 3,
                  },
                },
              },
            },
          },
        },
        ["battle ready"] = {
          {
            classes = 65535,
            firstRankId = 4699,
            id = 582,
            maxRank = 4,
            name = "Battle Ready",
          },
        },
        ["blacksmithing mastery"] = {
          {
            classes = 65535,
            firstRankId = 979,
            id = 324,
            maxRank = 3,
            name = "Blacksmithing Mastery",
          },
        },
        ["brewing mastery"] = {
          {
            classes = 65535,
            firstRankId = 985,
            id = 326,
            maxRank = 3,
            name = "Brewing Mastery",
          },
        },
        ["combat agility"] = {
          {
            classes = 65535,
            firstRankId = 125,
            id = 34,
            maxRank = 40,
            name = "Combat Agility",
          },
        },
        ["combat medic"] = {
          {
            classes = 32766,
            firstRankId = 4688,
            id = 579,
            maxRank = 5,
            name = "Combat Medic",
            prerequisiteRules = {
              {
                maxRank = 5,
                minRank = 1,
                requires = {
                  {
                    id = 497,
                    name = "Bandage Wounds",
                    points = 5,
                  },
                },
              },
            },
          },
        },
        ["combat stability"] = {
          {
            classes = 65535,
            firstRankId = 122,
            id = 33,
            maxRank = 39,
            name = "Combat Stability",
          },
        },
        ["delay death"] = {
          {
            classes = 65535,
            firstRankId = 1026,
            id = 335,
            maxRank = 31,
            name = "Delay Death",
          },
        },
        ["discordant defiance"] = {
          {
            classes = 65535,
            firstRankId = 1006,
            id = 333,
            maxRank = 16,
            name = "Discordant Defiance",
          },
        },
        ["earthen alacrity"] = {
          {
            classes = 65535,
            firstRankId = 8273,
            id = 378,
            maxRank = 16,
            name = "Earthen Alacrity",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 142,
                    name = "Planar Power",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["earthen allure"] = {
          {
            classes = 65535,
            firstRankId = 8293,
            id = 382,
            maxRank = 16,
            name = "Earthen Allure",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 142,
                    name = "Planar Power",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["earthen artistry"] = {
          {
            classes = 65535,
            firstRankId = 8278,
            id = 379,
            maxRank = 16,
            name = "Earthen Artistry",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 142,
                    name = "Planar Power",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["earthen brawn"] = {
          {
            classes = 65535,
            firstRankId = 8263,
            id = 336,
            maxRank = 16,
            name = "Earthen Brawn",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 142,
                    name = "Planar Power",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["earthen brilliance"] = {
          {
            classes = 65535,
            firstRankId = 8288,
            id = 381,
            maxRank = 16,
            name = "Earthen Brilliance",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 142,
                    name = "Planar Power",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["earthen sagacity"] = {
          {
            classes = 65535,
            firstRankId = 8283,
            id = 380,
            maxRank = 16,
            name = "Earthen Sagacity",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 142,
                    name = "Planar Power",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["earthen stability"] = {
          {
            classes = 65535,
            firstRankId = 8268,
            id = 377,
            maxRank = 16,
            name = "Earthen Stability",
            prerequisiteRules = {
              {
                maxRank = 16,
                minRank = 1,
                requires = {
                  {
                    id = 142,
                    name = "Planar Power",
                    points = 20,
                  },
                },
              },
            },
          },
        },
        ["energetic attunement"] = {
          {
            classes = 65535,
            firstRankId = 1056,
            id = 783,
            maxRank = 16,
            name = "Energetic Attunement",
          },
        },
        ["eyes wide open"] = {
          {
            classes = 65535,
            firstRankId = 12636,
            id = 938,
            maxRank = 8,
            name = "Eyes Wide Open",
          },
        },
        ["first aid"] = {
          {
            classes = 65535,
            firstRankId = 74,
            id = 17,
            maxRank = 3,
            name = "First Aid",
          },
        },
        ["fletching mastery"] = {
          {
            classes = 65535,
            firstRankId = 988,
            id = 327,
            maxRank = 3,
            name = "Fletching Mastery",
          },
        },
        foraging = {
          {
            classes = 65535,
            firstRankId = 7062,
            id = 5005,
            maxRank = 1,
            name = "Foraging",
          },
        },
        ["general sturdiness"] = {
          {
            classes = 65535,
            firstRankId = 6119,
            id = 3801,
            maxRank = 21,
            name = "General Sturdiness",
          },
        },
        ["innate agility"] = {
          {
            classes = 65535,
            firstRankId = 12,
            id = 3,
            maxRank = 15,
            name = "Innate Agility",
          },
        },
        ["innate charisma"] = {
          {
            classes = 65535,
            firstRankId = 32,
            id = 7,
            maxRank = 15,
            name = "Innate Charisma",
          },
        },
        ["innate cold protection"] = {
          {
            classes = 65535,
            firstRankId = 42,
            id = 9,
            maxRank = 15,
            name = "Innate Cold Protection",
          },
        },
        ["innate corruption protection"] = {
          {
            classes = 65535,
            firstRankId = 1662,
            id = 795,
            maxRank = 5,
            name = "Innate Corruption Protection",
          },
        },
        ["innate dexterity"] = {
          {
            classes = 65535,
            firstRankId = 17,
            id = 4,
            maxRank = 15,
            name = "Innate Dexterity",
          },
        },
        ["innate disease protection"] = {
          {
            classes = 65535,
            firstRankId = 57,
            id = 12,
            maxRank = 15,
            name = "Innate Disease Protection",
          },
        },
        ["innate fire protection"] = {
          {
            classes = 65535,
            firstRankId = 37,
            id = 8,
            maxRank = 15,
            name = "Innate Fire Protection",
          },
        },
        ["innate intelligence"] = {
          {
            classes = 65535,
            firstRankId = 22,
            id = 5,
            maxRank = 15,
            name = "Innate Intelligence",
          },
        },
        ["innate lung capacity"] = {
          {
            classes = 65535,
            firstRankId = 71,
            id = 16,
            maxRank = 6,
            name = "Innate Lung Capacity",
          },
        },
        ["innate magic protection"] = {
          {
            classes = 65535,
            firstRankId = 47,
            id = 10,
            maxRank = 15,
            name = "Innate Magic Protection",
          },
        },
        ["innate metabolism"] = {
          {
            classes = 65535,
            firstRankId = 68,
            id = 15,
            maxRank = 3,
            name = "Innate Metabolism",
          },
        },
        ["innate poison protection"] = {
          {
            classes = 65535,
            firstRankId = 52,
            id = 11,
            maxRank = 15,
            name = "Innate Poison Protection",
          },
        },
        ["innate regeneration"] = {
          {
            classes = 65535,
            firstRankId = 661,
            id = 225,
            maxRank = 31,
            name = "Innate Regeneration",
          },
        },
        ["innate run speed"] = {
          {
            classes = 65535,
            firstRankId = 62,
            id = 13,
            maxRank = 5,
            name = "Innate Run Speed",
          },
        },
        ["innate see invis"] = {
          {
            classes = 65535,
            firstRankId = 1388,
            id = 322,
            maxRank = 1,
            name = "Innate See Invis",
          },
        },
        ["innate stamina"] = {
          {
            classes = 65535,
            firstRankId = 7,
            id = 2,
            maxRank = 15,
            name = "Innate Stamina",
          },
        },
        ["innate strength"] = {
          {
            classes = 65535,
            firstRankId = 2,
            id = 1,
            maxRank = 15,
            name = "Innate Strength",
          },
        },
        ["innate wisdom"] = {
          {
            classes = 65535,
            firstRankId = 27,
            id = 6,
            maxRank = 15,
            name = "Innate Wisdom",
          },
        },
        ["jewel craft mastery"] = {
          {
            classes = 8192,
            firstRankId = 159,
            id = 56,
            maxRank = 3,
            name = "Jewel Craft Mastery",
          },
          {
            classes = 57343,
            firstRankId = 4675,
            id = 576,
            maxRank = 3,
            name = "Jewel Craft Mastery",
          },
        },
        ["mental fortitude"] = {
          {
            classes = 65535,
            firstRankId = 8228,
            id = 1216,
            maxRank = 3,
            name = "Mental Fortitude",
          },
        },
        ["mystical attuning"] = {
          {
            classes = 65535,
            firstRankId = 1021,
            id = 334,
            maxRank = 25,
            name = "Mystical Attuning",
          },
        },
        ["mystical shield"] = {
          {
            classes = 65535,
            firstRankId = 5045,
            id = 1115,
            maxRank = 1,
            name = "Mystical Shield",
          },
        },
        ["natural durability"] = {
          {
            classes = 65535,
            firstRankId = 107,
            id = 28,
            maxRank = 6,
            name = "Natural Durability",
          },
        },
        ["new tanaan crafting mastery"] = {
          {
            classes = 65535,
            firstRankId = 412,
            id = 141,
            maxRank = 6,
            name = "New Tanaan Crafting Mastery",
          },
        },
        packrat = {
          {
            classes = 65535,
            firstRankId = 678,
            id = 233,
            maxRank = 11,
            name = "Packrat",
          },
        },
        ["planar power"] = {
          {
            classes = 65535,
            firstRankId = 418,
            id = 142,
            maxRank = 20,
            name = "Planar Power",
          },
        },
        ["poison mastery"] = {
          {
            classes = 256,
            firstRankId = 244,
            id = 103,
            maxRank = 4,
            name = "Poison Mastery",
          },
        },
        ["pottery mastery"] = {
          {
            classes = 65535,
            firstRankId = 991,
            id = 328,
            maxRank = 3,
            name = "Pottery Mastery",
          },
        },
        ["quick draw"] = {
          {
            classes = 65535,
            firstRankId = 4698,
            id = 581,
            maxRank = 2,
            name = "Quick Draw",
          },
        },
        salvage = {
          {
            classes = 65535,
            firstRankId = 997,
            id = 330,
            maxRank = 6,
            name = "Salvage",
          },
        },
        ["situational awareness"] = {
          {
            classes = 65535,
            firstRankId = 18973,
            grantOnly = true,
            id = 17786,
            maxRank = 5,
            name = "Situational Awareness",
          },
        },
        ["tailoring mastery"] = {
          {
            classes = 65535,
            firstRankId = 994,
            id = 329,
            maxRank = 3,
            name = "Tailoring Mastery",
          },
        },
        ["tinkering mastery"] = {
          {
            classes = 15639,
            firstRankId = 4672,
            id = 575,
            maxRank = 3,
            name = "Tinkering Mastery",
          },
        },
        ["unknown aa 15771"] = {
          {
            classes = 65535,
            firstRankId = 15771,
            id = 346,
            maxRank = 1,
            name = "Unknown AA 15771",
          },
        },
      },
      idIndex = {
        ["1"] = "innate strength",
        ["10"] = "innate magic protection",
        ["103"] = "poison mastery",
        ["11"] = "innate poison protection",
        ["1115"] = "mystical shield",
        ["12"] = "innate disease protection",
        ["1216"] = "mental fortitude",
        ["13"] = "innate run speed",
        ["141"] = "new tanaan crafting mastery",
        ["142"] = "planar power",
        ["15"] = "innate metabolism",
        ["16"] = "innate lung capacity",
        ["17"] = "first aid",
        ["17786"] = "situational awareness",
        ["2"] = "innate stamina",
        ["225"] = "innate regeneration",
        ["233"] = "packrat",
        ["28"] = "natural durability",
        ["3"] = "innate agility",
        ["322"] = "innate see invis",
        ["324"] = "blacksmithing mastery",
        ["325"] = "baking mastery",
        ["326"] = "brewing mastery",
        ["327"] = "fletching mastery",
        ["328"] = "pottery mastery",
        ["329"] = "tailoring mastery",
        ["33"] = "combat stability",
        ["330"] = "salvage",
        ["333"] = "discordant defiance",
        ["334"] = "mystical attuning",
        ["335"] = "delay death",
        ["336"] = "earthen brawn",
        ["34"] = "combat agility",
        ["346"] = "unknown aa 15771",
        ["377"] = "earthen stability",
        ["378"] = "earthen alacrity",
        ["379"] = "earthen artistry",
        ["380"] = "earthen sagacity",
        ["3801"] = "general sturdiness",
        ["381"] = "earthen brilliance",
        ["382"] = "earthen allure",
        ["4"] = "innate dexterity",
        ["49"] = "alchemy mastery",
        ["497"] = "bandage wounds",
        ["5"] = "innate intelligence",
        ["5005"] = "foraging",
        ["56"] = "jewel craft mastery",
        ["575"] = "tinkering mastery",
        ["576"] = "jewel craft mastery",
        ["579"] = "combat medic",
        ["581"] = "quick draw",
        ["582"] = "battle ready",
        ["6"] = "innate wisdom",
        ["7"] = "innate charisma",
        ["783"] = "energetic attunement",
        ["795"] = "innate corruption protection",
        ["8"] = "innate fire protection",
        ["9"] = "innate cold protection",
        ["938"] = "eyes wide open",
      },
    },
    special = {
      byName = {
        ["alternately advanced firework"] = {
          {
            classes = 65535,
            firstRankId = 18994,
            id = 17788,
            maxRank = 1,
            name = "Alternately Advanced Firework",
          },
        },
        ["armor of experience"] = {
          {
            classes = 65535,
            firstRankId = 4700,
            grantOnly = true,
            id = 2000,
            maxRank = 1,
            name = "Armor of Experience",
          },
        },
        banestrike = {
          {
            classes = 65535,
            firstRankId = 15073,
            grantOnly = true,
            id = 15073,
            maxRank = 1,
            name = "Banestrike",
          },
        },
        ["bazaar and back"] = {
          {
            classes = 65535,
            firstRankId = 1000,
            id = 331,
            maxRank = 1,
            name = "Bazaar and Back",
          },
        },
        ["blessing of the devoted"] = {
          {
            classes = 65535,
            firstRankId = 9033,
            grantOnly = true,
            id = 600,
            maxRank = 1,
            name = "Blessing of the Devoted",
          },
        },
        ["breath of atathus"] = {
          {
            classes = 65535,
            firstRankId = 5150,
            grantOnly = true,
            id = 590,
            maxRank = 1,
            name = "Breath of Atathus",
          },
        },
        ["breath of draton'ra"] = {
          {
            classes = 65535,
            firstRankId = 5165,
            grantOnly = true,
            id = 591,
            maxRank = 1,
            name = "Breath of Draton'ra",
          },
        },
        ["breath of keikolin"] = {
          {
            classes = 65535,
            firstRankId = 5225,
            grantOnly = true,
            id = 595,
            maxRank = 1,
            name = "Breath of Keikolin",
          },
        },
        ["breath of mysaphar"] = {
          {
            classes = 65535,
            firstRankId = 5210,
            grantOnly = true,
            id = 594,
            maxRank = 1,
            name = "Breath of Mysaphar",
          },
        },
        ["breath of osh'vir"] = {
          {
            classes = 65535,
            firstRankId = 5180,
            grantOnly = true,
            id = 592,
            maxRank = 1,
            name = "Breath of Osh'vir",
          },
        },
        ["breath of venesh"] = {
          {
            classes = 65535,
            firstRankId = 5195,
            grantOnly = true,
            id = 593,
            maxRank = 1,
            name = "Breath of Venesh",
          },
        },
        ["chaotic jester"] = {
          {
            classes = 65535,
            firstRankId = 1373,
            grantOnly = true,
            id = 483,
            maxRank = 1,
            name = "Chaotic Jester",
          },
        },
        ["consume experience"] = {
          {
            classes = 65535,
            firstRankId = 18995,
            id = 17789,
            maxRank = 1,
            name = "Consume Experience",
          },
        },
        ["consume item"] = {
          {
            classes = 65535,
            firstRankId = 17785,
            id = 17785,
            maxRank = 1,
            name = "Consume Item",
          },
        },
        ["curse of blood"] = {
          {
            classes = 65535,
            firstRankId = 1378,
            grantOnly = true,
            id = 488,
            maxRank = 3,
            name = "Curse of Blood",
          },
        },
        ["embrace of the dark reign"] = {
          {
            classes = 65535,
            firstRankId = 1363,
            grantOnly = true,
            id = 473,
            maxRank = 1,
            name = "Embrace of the Dark Reign",
          },
        },
        ["embrace of the keepers"] = {
          {
            classes = 65535,
            firstRankId = 1368,
            grantOnly = true,
            id = 478,
            maxRank = 1,
            name = "Embrace of the Keepers",
          },
        },
        ["expedient recovery"] = {
          {
            classes = 65535,
            firstRankId = 1374,
            grantOnly = true,
            id = 484,
            maxRank = 1,
            name = "Expedient Recovery",
          },
        },
        ["fervor of the dark reign"] = {
          {
            classes = 65535,
            firstRankId = 1365,
            grantOnly = true,
            id = 475,
            maxRank = 1,
            name = "Fervor of the Dark Reign",
          },
        },
        ["gift of the dark reign"] = {
          {
            classes = 65535,
            firstRankId = 1361,
            grantOnly = true,
            id = 471,
            maxRank = 1,
            name = "Gift of the Dark Reign",
          },
        },
        ["gift of the keepers"] = {
          {
            classes = 65535,
            firstRankId = 1366,
            grantOnly = true,
            id = 476,
            maxRank = 1,
            name = "Gift of the Keepers",
          },
        },
        ["glyph of angry thoughts"] = {
          {
            classes = 65535,
            firstRankId = 7004,
            id = 5004,
            maxRank = 1,
            name = "Glyph of Angry Thoughts",
          },
        },
        ["glyph of arcane secrets"] = {
          {
            classes = 32318,
            firstRankId = 4704,
            id = 587,
            maxRank = 1,
            name = "Glyph of Arcane Secrets",
          },
        },
        ["glyph of courage"] = {
          {
            classes = 65535,
            firstRankId = 7000,
            id = 5000,
            maxRank = 1,
            name = "Glyph of Courage",
          },
        },
        ["glyph of destruction"] = {
          {
            classes = 65535,
            firstRankId = 4706,
            id = 589,
            maxRank = 1,
            name = "Glyph of Destruction",
          },
        },
        ["glyph of draconic potential"] = {
          {
            classes = 65535,
            firstRankId = 4705,
            id = 588,
            maxRank = 1,
            name = "Glyph of Draconic Potential",
          },
        },
        ["glyph of dragon scales"] = {
          {
            classes = 65535,
            firstRankId = 4702,
            id = 585,
            maxRank = 1,
            name = "Glyph of Dragon Scales",
          },
        },
        ["glyph of frantic infusion"] = {
          {
            classes = 30224,
            firstRankId = 7003,
            id = 5003,
            maxRank = 1,
            name = "Glyph of Frantic Infusion",
          },
        },
        ["glyph of genari might"] = {
          {
            classes = 65535,
            firstRankId = 7018,
            id = 7018,
            maxRank = 1,
            name = "Glyph of Genari Might",
          },
        },
        ["glyph of indeterminable reward"] = {
          {
            classes = 65535,
            firstRankId = 13788,
            id = 586,
            maxRank = 1,
            name = "Glyph of Indeterminable Reward",
          },
        },
        ["glyph of lost secrets"] = {
          {
            classes = 32318,
            firstRankId = 7017,
            id = 7017,
            maxRank = 1,
            name = "Glyph of Lost Secrets",
          },
        },
        ["glyph of stored life"] = {
          {
            classes = 65535,
            firstRankId = 7002,
            id = 5002,
            maxRank = 1,
            name = "Glyph of Stored Life",
          },
        },
        ["glyph of the cataclysm"] = {
          {
            classes = 65535,
            firstRankId = 7019,
            id = 7019,
            maxRank = 1,
            name = "Glyph of the Cataclysm",
          },
        },
        ["glyph of the master"] = {
          {
            classes = 65535,
            firstRankId = 7016,
            id = 7016,
            maxRank = 1,
            name = "Glyph of the Master",
          },
        },
        ["harmonic dissonance"] = {
          {
            classes = 65535,
            firstRankId = 1647,
            grantOnly = true,
            id = 574,
            maxRank = 1,
            name = "Harmonic Dissonance",
          },
        },
        ["hastened banestrike"] = {
          {
            classes = 65535,
            firstRankId = 15074,
            grantOnly = true,
            id = 15074,
            maxRank = 1,
            name = "Hastened Banestrike",
          },
        },
        ["hero's barracks"] = {
          {
            classes = 65535,
            firstRankId = 14367,
            grantOnly = true,
            id = 704,
            maxRank = 1,
            name = "Hero's Barracks",
          },
        },
        ["infusion of the faithful"] = {
          {
            classes = 65535,
            firstRankId = 1372,
            grantOnly = true,
            id = 482,
            maxRank = 1,
            name = "Infusion of the Faithful",
          },
        },
        ["intensity of the resolute"] = {
          {
            classes = 65535,
            firstRankId = 1377,
            grantOnly = true,
            id = 487,
            maxRank = 1,
            name = "Intensity of the Resolute",
          },
        },
        ["knowledge of alaran culture"] = {
          {
            classes = 65535,
            firstRankId = 14017,
            id = 1684,
            maxRank = 1,
            name = "Knowledge of Alaran Culture",
          },
        },
        ["knowledge of alaran culture - advanced"] = {
          {
            classes = 65535,
            firstRankId = 14018,
            id = 1685,
            maxRank = 1,
            name = "Knowledge of Alaran Culture - Advanced",
          },
        },
        ["lesson of the devoted"] = {
          {
            classes = 65535,
            firstRankId = 1371,
            grantOnly = true,
            id = 481,
            maxRank = 1,
            name = "Lesson of the Devoted",
          },
        },
        ["power of the dark reign"] = {
          {
            classes = 65535,
            firstRankId = 1364,
            grantOnly = true,
            id = 474,
            maxRank = 1,
            name = "Power of the Dark Reign",
          },
        },
        ["power of the keepers"] = {
          {
            classes = 65535,
            firstRankId = 1369,
            grantOnly = true,
            id = 479,
            maxRank = 1,
            name = "Power of the Keepers",
          },
        },
        ["sanctity of the keepers"] = {
          {
            classes = 65535,
            firstRankId = 1370,
            grantOnly = true,
            id = 480,
            maxRank = 1,
            name = "Sanctity of the Keepers",
          },
        },
        ["staunch recovery"] = {
          {
            classes = 65535,
            firstRankId = 1376,
            grantOnly = true,
            id = 486,
            maxRank = 1,
            name = "Staunch Recovery",
          },
        },
        ["steadfast servant"] = {
          {
            classes = 65535,
            firstRankId = 1375,
            grantOnly = true,
            id = 485,
            maxRank = 1,
            name = "Steadfast Servant",
          },
        },
        ["summon clockwork banker"] = {
          {
            classes = 65535,
            firstRankId = 9031,
            grantOnly = true,
            id = 8130,
            maxRank = 1,
            name = "Summon Clockwork Banker",
          },
        },
        ["summon permutation peddler"] = {
          {
            classes = 65535,
            firstRankId = 9032,
            grantOnly = true,
            id = 453,
            maxRank = 1,
            name = "Summon Permutation Peddler",
          },
        },
        ["summon personal tribute master"] = {
          {
            classes = 65535,
            firstRankId = 5006,
            grantOnly = true,
            id = 182,
            maxRank = 1,
            name = "Summon Personal Tribute Master",
          },
        },
        ["summon resupply agent"] = {
          {
            classes = 65535,
            firstRankId = 9000,
            grantOnly = true,
            id = 8081,
            maxRank = 1,
            name = "Summon Resupply Agent",
          },
        },
        ["summon tome of the hero's journey"] = {
          {
            classes = 65535,
            firstRankId = 14371,
            grantOnly = true,
            id = 1687,
            maxRank = 1,
            name = "Summon Tome of the Hero's Journey",
          },
        },
        ["tenacity of the dark reign"] = {
          {
            classes = 65535,
            firstRankId = 1362,
            grantOnly = true,
            id = 472,
            maxRank = 1,
            name = "Tenacity of the Dark Reign",
          },
        },
        ["throne of heroes"] = {
          {
            classes = 65535,
            firstRankId = 4665,
            grantOnly = true,
            id = 511,
            maxRank = 1,
            name = "Throne of Heroes",
          },
        },
        ["trials of mata muram"] = {
          {
            classes = 65535,
            firstRankId = 1011,
            grantOnly = true,
            id = 466,
            maxRank = 6,
            name = "Trials of Mata Muram",
          },
        },
        ["unknown aa 17199"] = {
          {
            classes = 65535,
            firstRankId = 17199,
            id = 897,
            maxRank = 1,
            name = "Unknown AA 17199",
          },
        },
        ["valor of the keepers"] = {
          {
            classes = 65535,
            firstRankId = 1367,
            grantOnly = true,
            id = 477,
            maxRank = 1,
            name = "Valor of the Keepers",
          },
        },
      },
      idIndex = {
        ["15073"] = "banestrike",
        ["15074"] = "hastened banestrike",
        ["1684"] = "knowledge of alaran culture",
        ["1685"] = "knowledge of alaran culture - advanced",
        ["1687"] = "summon tome of the hero's journey",
        ["17785"] = "consume item",
        ["17788"] = "alternately advanced firework",
        ["17789"] = "consume experience",
        ["182"] = "summon personal tribute master",
        ["2000"] = "armor of experience",
        ["331"] = "bazaar and back",
        ["453"] = "summon permutation peddler",
        ["466"] = "trials of mata muram",
        ["471"] = "gift of the dark reign",
        ["472"] = "tenacity of the dark reign",
        ["473"] = "embrace of the dark reign",
        ["474"] = "power of the dark reign",
        ["475"] = "fervor of the dark reign",
        ["476"] = "gift of the keepers",
        ["477"] = "valor of the keepers",
        ["478"] = "embrace of the keepers",
        ["479"] = "power of the keepers",
        ["480"] = "sanctity of the keepers",
        ["481"] = "lesson of the devoted",
        ["482"] = "infusion of the faithful",
        ["483"] = "chaotic jester",
        ["484"] = "expedient recovery",
        ["485"] = "steadfast servant",
        ["486"] = "staunch recovery",
        ["487"] = "intensity of the resolute",
        ["488"] = "curse of blood",
        ["5000"] = "glyph of courage",
        ["5002"] = "glyph of stored life",
        ["5003"] = "glyph of frantic infusion",
        ["5004"] = "glyph of angry thoughts",
        ["511"] = "throne of heroes",
        ["574"] = "harmonic dissonance",
        ["585"] = "glyph of dragon scales",
        ["586"] = "glyph of indeterminable reward",
        ["587"] = "glyph of arcane secrets",
        ["588"] = "glyph of draconic potential",
        ["589"] = "glyph of destruction",
        ["590"] = "breath of atathus",
        ["591"] = "breath of draton'ra",
        ["592"] = "breath of osh'vir",
        ["593"] = "breath of venesh",
        ["594"] = "breath of mysaphar",
        ["595"] = "breath of keikolin",
        ["600"] = "blessing of the devoted",
        ["7016"] = "glyph of the master",
        ["7017"] = "glyph of lost secrets",
        ["7018"] = "glyph of genari might",
        ["7019"] = "glyph of the cataclysm",
        ["704"] = "hero's barracks",
        ["8081"] = "summon resupply agent",
        ["8130"] = "summon clockwork banker",
        ["897"] = "unknown aa 17199",
      },
    },
  },
}
