---
lang: en
---

# Kit commands

## Players

| Command | Result |
| --- | --- |
| `/kits` | Lists existing kits |
| `/kit claim <id>` | Claims a kit while enforcing its access policy, uses, and cooldown |

## Administration

| Command | Result |
| --- | --- |
| `/kit create <name> [uses] [cooldownSeconds]` | Creates a kit from the executor's inventory |
| `/kit info <id>` | Shows ID, name, uses, cooldown, items, description, and access |
| `/kit edit <id> name <name>` | Changes only the display name |
| `/kit edit <id> uses <value>` | Changes the total uses in the definition |
| `/kit edit <id> cooldown <seconds>` | Changes the definition cooldown |
| `/kit edit <id> description <text>` | Sets the description |
| `/kit edit <id> description clear` | Clears the description |
| `/kit edit <id> items` | Replaces items with the executor's inventory |
| `/kit edit <id> access public` | Allows every player to claim the kit |
| `/kit edit <id> access restricted` | Requires the kit-specific node again |
| `/kit give <player> <id>` | Delivers the kit without consuming progress |
| `/kit reset <player> <id>` | Resets one kit for an online player |
| `/kit reset <player> all` | Resets every kit for an online player |
| `/kit delete <id>` | Deletes the kit definition |
| `/kit reload` | Reloads kits and player data |

Names containing spaces require quotes during creation:

```text
/kit create "Starter Kit" 1 3600
```

`give` and `reset` require an online player. Offline UUID operations are not
part of this release.

The `create` command always creates a restricted kit. Review the definition and
use `access public` only when it should be globally available. Grants and denies
are not queried while the kit is public.

## Autocomplete

Kit arguments suggest loaded IDs. For `claim`, suggestions are filtered to kits
that the player can attempt to claim.
