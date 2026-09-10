# PTAAPlanner

PTAAPlanner is a Project Triune Alternate Advancement planning and automatic purchasing tool for MacroQuest.

It provides a graphical interface for building prioritized AA purchase lists and includes a native Lua AA spender. No MQ2AASpend plugin is required.

## Features

PTAAPlanner includes:

* Graphical AA browsing and selection
* General, Archetype, and Class AA categories
* Automatic Project Triune class detection
* Manual class selection fallback
* Custom purchase priorities
* Target-rank selection
* Automatic removal of completed priorities
* Native Lua AA purchasing
* Automatic AA spending
* Manual **Spend Next Now**
* Queued manual purchases when a safety condition is active
* Configurable purchase safety checks
* Fast AA Purchase support
* Live unspent AA point display
* Priority-list AA cost estimates
* Next purchase, next rank, and cost display
* Optional Consume Experience support
* Configurable Consume Experience AA threshold
* Compact and full UI modes
* Saved AA lists
* Import/export support
* Diagnostic logging

## Requirements

* Project Triune
* MacroQuest compatible with Project Triune
* PTAAPlanner

PTAAPlanner v0.2 and later do **not** require MQ2AASpend or PTMQ2AASpend.

## Installation

Download `aaplanner.lua` from the latest PTAAPlanner release and copy it to:

```text
MacroQuest\lua\
```

Start PTAAPlanner with:

```text
/lua run aaplanner
```

The planner will create its configuration and saved-list data automatically in the MacroQuest config directory.

## Basic Usage

Start PTAAPlanner:

```text
/lua run aaplanner
```

PTAAPlanner will attempt to detect the three classes used by the currently logged-in Project Triune character.

If detection is incorrect or unavailable, select the classes manually or click:

```text
Re-detect
```

Refresh the AA catalog if necessary.

Add AAs to the **Purchase Priority** list and arrange them in the order you want them purchased.

For each AA, you can set:

* `M` to continue purchasing through the maximum available rank
* A specific rank number to stop at that rank

When your priority list is ready, click:

```text
Enable Auto Spend
```

PTAAPlanner will purchase eligible AAs directly through the in-game Alternate Advancement window in the displayed priority order.

No external AA spending plugin is required.

## Purchase Priority

The Purchase Priority panel determines the order in which PTAAPlanner attempts to purchase AAs.

PTAAPlanner always works from the highest incomplete priority downward.

An entry is automatically removed when:

* Its selected target rank has been reached
* An AA set to `M` has reached its maximum available rank

The next incomplete entry then becomes the active priority.

The panel also displays:

* Current unspent AA points
* Known priority-list AA cost
* Additional AA points needed
* Next AA to be purchased
* Current rank
* Next rank
* Target rank
* Next-rank cost
* Native Auto Spend status

### Future Rank Costs

Project Triune's RoF2 AA data does not always expose the cost of ranks that are not yet immediately trainable.

When PTAAPlanner can resolve the entire remaining list, it may display:

```text
Priority List Cost: 42 AA
Additional AA Needed: 25
```

When future rank costs are not yet available, PTAAPlanner reports only the cost it can verify:

```text
Priority List Cost: at least 18 AA
(some future rank costs unresolved)
```

PTAAPlanner does not guess unknown future rank costs.

## Native Lua Auto Spend

Beginning with v0.2, AA purchasing is handled directly by PTAAPlanner.

The previous MQ2AASpend handoff is no longer used.

To enable automatic spending, click:

```text
Enable Auto Spend
```

When enough AA points are available, PTAAPlanner:

1. Finds the highest-priority incomplete AA
2. Verifies that its next rank is trainable
3. Opens the in-game Alternate Advancement window if necessary
4. Selects the correct AA category
5. Locates the intended AA
6. Selects and verifies the exact AA row
7. Activates the Train button
8. Handles the purchase confirmation if one appears
9. Verifies the purchase by checking the AA rank and AA point total
10. Removes completed priorities and continues to the next entry

If PTAAPlanner cannot safely verify what it is about to purchase, it stops Auto Spend instead of attempting an uncertain purchase.

## Fast AA Purchase

PTAAPlanner supports EverQuest's **Fast AA Purchase** option.

When Fast AA Purchase is enabled, EverQuest may complete the purchase immediately without displaying a confirmation window.

PTAAPlanner detects the resulting AA rank or AA point change and treats the purchase as successful without waiting for a confirmation dialog.

Normal confirmation-dialog purchasing is also supported.

## Purchase Verification and Safety

PTAAPlanner includes several protections intended to prevent the wrong AA from being purchased.

Before training an AA, PTAAPlanner verifies the selected AA row and reasserts the intended selection immediately before clicking Train.

If a confirmation dialog appears, PTAAPlanner checks that its text corresponds to the planned AA before clicking **Yes**.

PTAAPlanner will not blindly confirm an unrelated dialog.

Auto Spend is stopped when conditions such as the following occur:

* The intended AA cannot be found
* The selected AA row changes unexpectedly
* The selected row cannot be safely verified
* An unrelated confirmation dialog is already open
* The confirmation dialog does not match the planned AA
* AA prerequisites or level requirements are not met
* A purchase cannot be verified after it is attempted

This behavior favors stopping safely over risking an unintended AA purchase.

## Auto Spend Safety Checks

PTAAPlanner includes individually configurable pre-purchase safety checks.

Open:

```text
Auto Spend Safety Checks
```

to configure them.

Available checks include:

* **Casting**
* **Moving**
* **Navigating**
* **In Combat**
* **Using AutoFire**
* **Live XTargets / Aggro**

When an enabled condition is active, PTAAPlanner temporarily delays the purchase.

These checks are configurable because Project Triune characters are often actively pulling, navigating, fighting, or maintaining XTargets while AA points are earned.

The default settings are intended to avoid conditions that are most likely to interfere with the UI purchase process while allowing normal automated hunting behavior.

If a particular check is unnecessary for your setup, it can be disabled.

Safety-check settings are saved between sessions.

## Spend Next Now

Use:

```text
Spend Next Now
```

to manually request the next priority purchase without enabling continuous Auto Spend.

If an enabled safety condition is currently active, the request is queued rather than discarded.

PTAAPlanner will automatically retry the request when the blocking condition clears.

While a manual request is queued, the button changes to:

```text
Cancel Queued Spend
```

Use it to cancel the pending request.

## AA Requirements and Prerequisites

Before attempting a purchase, PTAAPlanner checks whether the next rank can currently be trained.

If the highest-priority AA does not meet its prerequisites or level requirements, PTAAPlanner does **not** skip ahead and spend points on another priority.

Instead, Auto Spend is disabled and the blocked AA is reported.

This preserves the exact purchase priority selected by the user.

After resolving the prerequisite or level requirement, re-enable Auto Spend.

## Consume Experience

PTAAPlanner can optionally use Project Triune's **Consume Experience** ability after the AA priority list is complete.

Enable:

```text
Use Consume Experience after priority list
```

Then configure:

```text
Consume trigger
```

The trigger specifies the number of unspent AA points required before PTAAPlanner attempts to activate Consume Experience.

For example:

```text
Consume trigger: 100
```

means Consume Experience will only be activated after:

* The Purchase Priority list is empty or complete
* At least 100 unspent AA points are available

PTAAPlanner verifies that the AA point total changes after activating Consume Experience.

If activation cannot be confirmed, PTAAPlanner reports the failure rather than repeatedly activating the ability.

The Consume Experience setting and threshold are saved between sessions.

## Compact Mode

PTAAPlanner includes a Compact Mode for keeping essential AA information visible while playing without occupying a large portion of the screen.

Compact Mode displays:

* Unspent AA points
* Native Auto Spend status
* Next purchase
* Current rank
* Next rank
* Target rank
* Next-rank cost
* Consume Experience status
* Remaining priority count

Compact Mode also includes controls to enable or disable Auto Spend.

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

PTAAPlanner allows reusable AA plans to be saved locally.

Use the saved-list controls to:

* Save the current priority list
* Load a saved list
* Delete a saved list

This makes it easy to maintain separate AA plans for different characters, class combinations, or progression stages.

## Import / Export

PTAAPlanner supports importing and exporting priority lists.

This can be used to:

* Back up AA plans
* Share AA plans with other players
* Move plans between characters
* Move plans between MacroQuest installations

Use:

```text
Copy Planner Format
```

to copy the current list to the clipboard.

PTAAPlanner's native export format begins with:

```text
AAPLANNER1
```

The import window also accepts supported legacy `Name|Rank` list entries.

Importing a list replaces the current working priority list.

## Automatic Saving

PTAAPlanner automatically saves its working configuration when changes are made.

Saved data includes:

* Current working priority list
* Named saved lists
* Selected class combination
* Compact Mode preference
* Consume Experience setting
* Consume Experience threshold
* Auto Spend safety-check settings

This helps protect the current configuration if EverQuest or MacroQuest closes unexpectedly.

## Debugging

Run:

```text
/aaplanner debug
```

PTAAPlanner prints diagnostic information and writes a detailed priority snapshot to its debug log.

Debug information includes:

* PTAAPlanner version
* Detected classes
* AA catalog statistics
* Current AA points
* Purchase priorities
* Current and target ranks
* Known remaining costs
* Next-rank costs
* Native Auto Spend status
* Pending purchase state
* Queued manual purchase state
* Consume Experience settings
* Auto Spend safety-check settings

The debug log is character-specific and uses a filename similar to:

```text
PTAAPlanner_<Server>_<Character>_debug.log
```

Purchase activity and important Auto Spend failures are also logged, including:

* Successful AA purchases
* Prerequisite or trainability blocks
* Confirmation mismatches
* Purchase verification timeouts
* Consume Experience activation

When reporting an AA purchasing issue, please include this log whenever possible.

## Useful Commands

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

### `/aaplanner`

Shows the PTAAPlanner window.

### `/aaplanner compact`

Switches directly to Compact Mode.

### `/aaplanner full`

Returns to the full planner interface.

### `/aaplanner refresh`

Refreshes the current character's AA catalog.

### `/aaplanner debug`

Prints diagnostic information and writes a priority snapshot to the PTAAPlanner debug log.

### `/aaplanner quit`

Stops PTAAPlanner.

## Updating PTAAPlanner

PTAAPlanner is distributed as a Lua script.

To update:

1. Download the latest `aaplanner.lua`
2. Replace the existing copy in:

```text
MacroQuest\lua\
```

3. Restart PTAAPlanner:

```text
/lua stop aaplanner
/lua run aaplanner
```

Your saved lists and configuration are stored separately and are not contained in `aaplanner.lua`.

## Upgrading from an Earlier Version

PTAAPlanner v0.2 changes how automatic AA purchasing works.

Previous versions used a Project Triune-compatible MQ2AASpend plugin to perform purchases.

Beginning with v0.2:

* AA purchasing is handled directly by `aaplanner.lua`
* MQ2AASpend is no longer required
* Dynamic MQ2AASpend banking is no longer used
* PTAAPlanner follows the displayed priority list directly
* A blocked top priority stops Auto Spend instead of allowing another priority to be purchased
* Purchase selection and confirmation are verified by PTAAPlanner itself

Users may leave MQ2AASpend installed for other purposes, but PTAAPlanner does not require or manage it.

## Related Projects

### ProjectTriuneMQ2AASpend

Previous PTAAPlanner releases used the Project Triune compatibility build of MQ2AASpend.

The project remains available here:

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

Earlier versions of PTAAPlanner integrated with MQ2AASpend.

MQ2AASpend was originally created by **Sym** and is maintained through the RedGuides MacroQuest community.

Upstream MQ2AASpend:

https://github.com/RedGuides/MQ2AASpend

Project Triune MQ2AASpend compatibility modifications:

https://github.com/thezerodivide/ProjectTriuneMQ2AASpend

## Disclaimer

PTAAPlanner is an unofficial Project Triune utility.

It is not affiliated with or endorsed by:

* Project Triune
* MacroQuest
* RedGuides
* The original MQ2AASpend author

Use at your own risk.
