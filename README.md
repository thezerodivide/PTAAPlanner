# PTAAPlanner

PTAAPlanner is a Project Triune AA planning tool for MacroQuest.

It provides a graphical interface for building a prioritized Alternate Advancement purchase list and uses the Project Triune-compatible MQ2AASpend plugin to perform the actual purchases.

## Features

PTAAPlanner includes:

- Graphical AA browsing and selection
- General, Archetype, and Class AA categories
- Custom purchase priorities
- Target-rank selection
- Automatic removal of completed priorities
- Dynamic AA banking
- Live unspent AA point display
- Priority-list AA cost estimates
- Next purchase and next-rank cost display
- Compact and full UI modes
- Saved AA lists
- Import/export support
- Diagnostic logging
- Integration with PTMQ2AASpend

## Requirements

- Project Triune
- Latest MacroQuest RoF2 build
- PTAAPlanner
- PTMQ2AASpend

### PTMQ2AASpend

PTAAPlanner requires the Project Triune compatibility build of MQ2AASpend:

**ProjectTriuneMQ2AASpend**

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend

Download the latest compiled plugin here:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend/releases

PTAAPlanner and PTMQ2AASpend are versioned independently.

A new PTAAPlanner release does **not** necessarily require a new MQ2AASpend DLL.

## Installation

### 1. Install PTMQ2AASpend

Download the latest `MQ2AASpend.dll` from:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend/releases

Copy it to:

```text
MacroQuest\plugins\
```

Load the plugin in-game with:

```text
/plugin mq2aaspend load
```

### 2. Install PTAAPlanner

Download `aaplanner.lua` from the latest PTAAPlanner release and copy it to:

```text
MacroQuest\lua\
```

Start PTAAPlanner with:

```text
/lua run aaplanner
```

## Basic Usage

Open PTAAPlanner:

```text
/lua run aaplanner
```

Select the classes used by your Project Triune character and click:

```text
Re-detect
```

PTAAPlanner will build the available AA catalog for the selected classes.

Add AAs to the Purchase Priority list and arrange them in the order you want them purchased.

You can choose:

- `M` to purchase the AA through the maximum available rank
- A specific rank number to stop at that rank

When the list is ready:

1. Click **Write MQ2AASpend List**
2. Click **Enable Auto Spend**

PTAAPlanner will write the priority list into the character's MQ2AASpend configuration and enable automatic purchasing.

## Purchase Priority

The Purchase Priority panel shows the order in which PTAAPlanner wants AAs purchased.

PTAAPlanner automatically removes an entry when:

- The selected target rank has been reached
- An AA set to `M` has been fully trained

When the top priority changes, PTAAPlanner rewrites the MQ2AASpend list and recalculates the Dynamic Bank automatically.

## Dynamic Banking

PTAAPlanner dynamically controls MQ2AASpend's AA bank value based on the next planned purchase.

For example:

```text
Gift of Mana
Next Rank Cost: 9 AA
```

PTAAPlanner sets:

```text
/aaspend bank 9
```

This prevents MQ2AASpend from spending points on a lower-cost AA simply because the highest-priority purchase is not yet affordable.

The Purchase Priority summary displays:

```text
Dynamic Bank: 9
Next Purchase: Gift of Mana
Cost: 9 AA
```

This makes it easy to confirm that the bank matches the expected next purchase.

## AA Requirements and Prerequisites

MQ2AASpend only purchases AA ranks that are currently trainable.

If an AA near the top of the priority list does not yet meet its requirements, MQ2AASpend may skip it and purchase the next eligible priority.

Once the prerequisite becomes available, the AA can become eligible on a later purchase pass.

This is expected behavior.

## Multi-Rank AA Handling

Project Triune's RoF2 AA data behaves differently from standard modern EverQuest AA data.

For example, an untrained ability may appear in-game as:

```text
0/1
```

while the underlying MacroQuest AA record reports:

```text
CurrentRank = 1
MaxRank = 1
```

The Project Triune-compatible MQ2AASpend build includes changes specifically designed to handle these AA records correctly.

It also walks linked AA rank data to improve handling of partially trained multi-rank abilities.

## Priority List Cost

PTAAPlanner calculates the known remaining cost of the Purchase Priority list.

Example:

```text
Priority List Cost: 42 AA
Additional AA Needed: 25
```

Project Triune's RoF2 AA data does not always expose every future rank cost.

When some future costs cannot be resolved reliably, PTAAPlanner reports:

```text
Priority List Cost: at least 81 AA
(some future rank costs unresolved)
```

rather than guessing.

## Compact Mode

PTAAPlanner includes a Compact Mode for users who want to keep the planner visible while playing without occupying a large portion of the screen.

Compact Mode displays:

- Unspent AA points
- Dynamic Bank
- Next Purchase
- Current and next rank
- Next-rank cost
- Remaining priority count
- Bank mismatch warning

Switch to Compact Mode with:

```text
/aaplanner compact
```

Return to Full Mode with:

```text
/aaplanner full
```

You can also switch modes from the PTAAPlanner interface.

The selected mode is remembered between sessions.

## Saved Lists

PTAAPlanner allows you to save reusable AA plans.

Use the saved-list controls to:

- Save the current list
- Load a saved list
- Delete a saved list

This makes it easy to maintain different AA plans for different characters, builds, or progression stages.

## Import / Export

PTAAPlanner supports importing and exporting planner data.

This can be used to:

- Back up AA plans
- Share plans with other players
- Move a plan between characters or installations

## PTMQ2AASpend Integration

PTAAPlanner uses PTMQ2AASpend for actual AA purchasing.

The compatibility plugin adds Project Triune-specific behavior including:

- Improved rank handling
- Multi-rank AA traversal
- Dynamic bank support
- AA point monitoring
- Live INI refresh
- Debug logging
- AA cost-cache generation

PTMQ2AASpend repository:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend

Latest PTMQ2AASpend releases:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend/releases

## Debugging

### PTAAPlanner Debug Snapshot

Run:

```text
/aaplanner debug
```

PTAAPlanner writes a diagnostic snapshot containing information such as:

- PTAAPlanner version
- Current AA points
- Purchase priorities
- Current and target ranks
- Known remaining costs
- Dynamic Bank
- Next-rank costs

### MQ2AASpend Debugging

PTMQ2AASpend supports:

```text
/aaspend debug on
/aaspend debug off
/aaspend debug clear
/aaspend debug path
```

Debug output is written to a per-character log file such as:

```text
MQ2AASpend_<Server>_<Character>_debug.log
```

PTAAPlanner diagnostic snapshots are written to the same log when possible.

## Useful Commands

### PTAAPlanner

```text
/lua run aaplanner
/lua stop aaplanner
/aaplanner
/aaplanner show
/aaplanner compact
/aaplanner full
/aaplanner refresh
/aaplanner debug
/aaplanner quit
```

### PTMQ2AASpend

```text
/aaspend
/aaspend status
/aaspend load
/aaspend auto on
/aaspend auto off
/aaspend auto now
/aaspend bank <points>
/aaspend debug on
/aaspend debug off
/aaspend debug clear
/aaspend debug path
/aaspend costcache
```

## Updating PTAAPlanner

PTAAPlanner releases normally contain only the Lua planner.

To update:

1. Download the latest `aaplanner.lua`
2. Replace the existing file in:

```text
MacroQuest\lua\
```

3. Restart the Lua:

```text
/lua stop aaplanner
/lua run aaplanner
```

You only need to update `MQ2AASpend.dll` when a new PTMQ2AASpend release is published.

## Updating PTMQ2AASpend

Download the latest release from:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend/releases

Unload the existing plugin:

```text
/plugin mq2aaspend unload
```

Replace:

```text
MacroQuest\plugins\MQ2AASpend.dll
```

Then reload it:

```text
/plugin mq2aaspend load
```

## Related Projects

### PTMQ2AASpend

Project Triune compatibility build of MQ2AASpend:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend

### Upstream MQ2AASpend

Original MQ2AASpend project:

https://github.com/RedGuides/MQ2AASpend

### MacroQuest

https://github.com/macroquest/macroquest

Latest releases:

https://github.com/macroquest/macroquest/releases

## Credits

PTAAPlanner by **TheZeroDivide**.

MQ2AASpend was originally created by **Sym** and is maintained through the RedGuides MacroQuest community.

Upstream MQ2AASpend:

https://github.com/RedGuides/MQ2AASpend

Project Triune MQ2AASpend compatibility modifications:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend

## Disclaimer

PTAAPlanner is an unofficial Project Triune utility.

It is not affiliated with or endorsed by:

- Project Triune
- MacroQuest
- RedGuides
- The original MQ2AASpend author

Use at your own risk.
