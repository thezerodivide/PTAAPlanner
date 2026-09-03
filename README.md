# Project Triune AA Planner

AA Planner is a standalone MacroQuest Lua utility for building, saving, sharing, and applying prioritized [MQ2AASpend](https://github.com/RedGuides/MQ2AASpend) lists on the [Project Triune](https://nms.bestemu.com/) EverQuest server.

Project Triune characters combine three classes, which makes planning Alternate Advancement progression considerably more involved than it is for a standard character. AA Planner reads the abilities exposed by the current character, organizes them by AA tab, and provides a visual interface for choosing both purchase order and target rank.

## Features

- Automatically detects all three Project Triune classes
- Provides manual three-class selection if autodetection fails
- Reads available AAs from the current character and in-game AA window
- Organizes abilities into General, Archetype, and Class tabs
- Displays current rank, maximum rank, and next-rank cost
- Searches AAs by name
- Optionally hides fully trained abilities
- Supports a specific target rank or `M` for the maximum available rank
- Reorders purchase priorities with Up and Down controls
- Saves and loads named AA plans
- Automatically preserves the current working list between sessions
- Imports and exports shareable AA Planner lists
- Imports and exports MQ2AASpend-compatible entries
- Replaces only the MQ2AASpend AA-list section
- Preserves bank, brute-force, and other MQ2AASpend settings
- Creates a timestamped backup before modifying an existing character INI
- Loads MQ2AASpend automatically when Auto Spend is enabled

## Requirements

- [Latest version of MacroQuest](https://github.com/macroquest/macroquest/releases), including Lua and ImGui support
- [MQ2AASpend](https://github.com/RedGuides/MQ2AASpend)
- A Project Triune character

## Installation

1. Download `aaplanner.lua`.
2. Copy it into the `lua` directory inside your MacroQuest installation.
3. Log into the Project Triune character whose AA plan you want to manage.
4. Run:

```text
/lua run aaplanner
```

The planner may briefly open the Inventory and Alternate Advancement windows while detecting classes and scanning available abilities. Windows opened by the planner are closed again after the scan.

## Quick Start

1. Confirm that the three detected classes shown at the top of the window are correct.
2. Choose the General, Archetype, or Class tab.
3. Search or browse for an AA.
4. Click **Add** to place it at the end of the priority list.
5. Set its target rank, or enter `M` to train all available ranks.
6. Use **Up** and **Down** to arrange the purchase order.
7. Click **Write MQ2AASpend List**.
8. Click **Enable Auto Spend** when you are ready to activate the list.

## Class Detection

AA Planner attempts to read all three classes from Project Triune's Inventory window. When detection succeeds, the class row is marked **Detected**.

If the server UI or a custom UI prevents detection, use the three class selectors manually. A manually selected combination is saved and restored the next time the planner runs.

Click **Re-detect** at any time to retry automatic detection.

## Building a Priority List

The left side of the planner contains the AA catalog. Abilities are grouped according to the tabs in EverQuest's Alternate Advancement window:

- **General**
- **Archetype**
- **Class**

The right side contains the purchase-priority list. MQ2AASpend evaluates this list from top to bottom.

Each entry has a target-rank field:

- Enter a positive whole number such as `3`, `7`, or `10` to stop purchasing after that rank.
- Enter `M` to purchase every rank available to the character.

An AA can appear only once in the working list.

## Writing the MQ2AASpend List

Click **Write MQ2AASpend List** to write the current priorities into the character's MacroQuest INI file:

```text
MacroQuest/config/<Server>_<Character>.ini
```

Only this section is replaced:

```ini
[MQ2AASpend_AAList]
0=Combat Agility|10
1=Combat Stability|M
2=Spell Casting Fury|3
```

The numeric keys begin at `0`, and their order defines the purchase priority.

The planner preserves every other section in the character INI, including MQ2AASpend's Auto Spend, Brute Force, bank, and tab-order settings.

Before changing an existing INI, the planner creates a timestamped backup beside it:

```text
<Server>_<Character>.ini.aaplanner_backup_YYYYMMDD_HHMMSS
```

Writing the list does not enable automatic spending.

## Enabling Auto Spend

Click **Enable Auto Spend** to activate the written list.

If MQ2AASpend is not loaded, the planner runs:

```text
/plugin mq2aaspend load
```

It then runs:

```text
/aaspend load
/aaspend auto on
```

This reloads the character INI and enables MQ2AASpend's list-based Auto mode. It does not change the bank value, Brute Force mode, or other plugin settings.

## Saving Plans

Enter a name in the **Saved-list name** field and click **Save Current** to create a named plan.

Saved plans can be loaded or deleted from the dropdown below the name field. Saving under an existing name replaces that saved plan.

AA Planner stores its working list, named plans, and last selected classes in:

```text
MacroQuest/config/aaplanner_lists.lua
```

This file belongs to AA Planner and is separate from the MQ2AASpend character INI.

## Import and Export

Click **Import / Export** to open the transfer window.

### AA Planner format

**Copy Planner Format** places a shareable list on the clipboard. This format retains the AA tab as well as the name and target rank.

Example:

```text
AAPLANNER1
Combat Agility|10|General
Combat Stability|M|General
Spell Casting Fury|3|Archetype
```

### MQ2AASpend format

**Copy MQ2AASpend INI** copies a ready-to-use section:

```ini
[MQ2AASpend_AAList]
0=Combat Agility|10
1=Combat Stability|M
2=Spell Casting Fury|3
```

The importer accepts:

- AA Planner exports beginning with `AAPLANNER1`
- A complete `[MQ2AASpend_AAList]` section
- Individual `Name|Rank` entries

Importing replaces the planner's current working list. It does not modify the MQ2AASpend character INI until **Write MQ2AASpend List** is clicked.

## Commands

| Command | Description |
| --- | --- |
| `/aaplanner` | Opens the planner or displays command help when given an unknown option |
| `/aaplanner show` | Opens the planner window |
| `/aaplanner refresh` | Rescans the current character's available AAs |
| `/aaplanner debug` | Prints class, catalog, AA-window, INI-path, and plugin diagnostics |
| `/aaplanner quit` | Saves the working state and stops the Lua script |

You can also stop it with MacroQuest's standard command:

```text
/lua stop aaplanner
```

## Safely Testing a New List

MQ2AASpend has a debug mode that performs its normal checks and reports what it would purchase without sending the purchase command.

After writing and enabling a small test list, run:

```text
/aaspend debug on
/aaspend auto now
```

Review the MQ console output and confirm that MQ2AASpend selects the expected AA. When satisfied, disable debug mode:

```text
/aaspend debug off
```

You can inspect the plugin's current configuration with:

```text
/aaspend status
```

## Troubleshooting

### AAs are missing from the catalog

1. Open EverQuest's Alternate Advancement window.
2. Select the tab containing the missing ability.
3. Click **Refresh Catalog** or run `/aaplanner refresh`.
4. Run `/aaplanner debug` if the ability is still absent.

Include the resulting `[AA Planner Debug]` lines when reporting the problem. They show which AA window was detected and how many controls, lists, rows, and cells were inspected.

### Classes were not detected

Use the three manual class selectors, then try **Re-detect** with the Inventory window open. If detection still fails, include `/aaplanner debug` output in the report.

### MQ2AASpend does not load

Confirm that MQ2AASpend is installed for the same MacroQuest build you are running. The planner will report an error if `/plugin mq2aaspend load` does not make the plugin available.

### The wrong AA would be purchased

Keep MQ2AASpend debug mode enabled while testing:

```text
/aaspend debug on
/aaspend auto now
```

Then check:

- The order shown in the planner
- The target rank assigned to each AA
- `/aaspend status`
- The `[MQ2AASpend_AAList]` section in the character INI

## Updating

To update AA Planner:

1. Stop the running script with `/lua stop aaplanner`.
2. Replace the existing `aaplanner.lua` file with the new version.
3. Run `/lua run aaplanner` again.

Your working list and named plans are stored separately in `aaplanner_lists.lua` and are not overwritten when the main Lua file is replaced.

## Acknowledgements

- [MacroQuest](https://github.com/macroquest/macroquest) for its Lua, ImGui, TLO, and plugin interfaces
- [MQ2AASpend](https://github.com/RedGuides/MQ2AASpend) for automatic AA purchasing and its ordered INI format
- [TriuneAutocombat](https://github.com/gennro/TriuneAutocombat) for Project Triune UI and class-detection reference behavior
- [Project Triune](https://nms.bestemu.com/) for the three-class EverQuest environment this utility supports
