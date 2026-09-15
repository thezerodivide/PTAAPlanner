-- Project Triune AA prerequisite data
-- Generated directly from release-peq.sql: aa_ability, aa_ranks, aa_rank_prereqs
-- Do not hand-edit; regenerate from the authoritative Project Triune database dump.
return {
  schemaVersion = 1,
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
