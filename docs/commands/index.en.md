---
lang: en
---

# All commands

Examples use `<id>` for the kit's stable identifier. Arguments in square
brackets are optional.

## Kits

| Command | Default access | Node or protection | Purpose |
| --- | --- | --- | --- |
| `/kits` | OP 2 or permission | `minecraftserverboostmod.command.kits` | Lists loaded kits |
| `/kit claim <id>` | Everyone can run it | Kit policy and claim nodes | Claims a kit while enforcing access, uses, and cooldown |
| `/kit create <name> [uses] [cooldown]` | OP 2 or permission | `minecraftserverboostmod.command.kit.create` | Creates a restricted kit from the inventory |
| `/kit info <id>` | OP 2 or permission | `minecraftserverboostmod.command.kit.info` | Shows kit details |
| `/kit edit <id> name <name>` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Changes the display name |
| `/kit edit <id> uses <value>` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Changes total uses |
| `/kit edit <id> cooldown <seconds>` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Changes the cooldown |
| `/kit edit <id> description <text>` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Sets the description |
| `/kit edit <id> description clear` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Removes the description |
| `/kit edit <id> items` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Replaces items with the current inventory |
| `/kit edit <id> access public` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Makes the kit available to everyone |
| `/kit edit <id> access restricted` | OP 2 or permission | `minecraftserverboostmod.command.kit.edit` | Requires claim permission again |
| `/kit give <player> <id>` | OP 2 or permission | `minecraftserverboostmod.command.kit.give` | Delivers without consuming progress |
| `/kit reset <player> <id>` | OP 2 or permission | `minecraftserverboostmod.command.kit.reset` | Resets one kit for the player |
| `/kit reset <player> all` | OP 2 or permission | `minecraftserverboostmod.command.kit.reset` | Resets every kit for the player |
| `/kit delete <id>` | OP 2 or permission | `minecraftserverboostmod.command.kit.delete` | Deletes the kit |
| `/kit reload` | OP 2 or permission | `minecraftserverboostmod.command.kit.reload` | Reloads kits and progress |

`/kit claim` must remain executable so the service can evaluate a public kit.
Restricted kits require either the parent node
`minecraftserverboostmod.command.kit.claim` or the specific node
`minecraftserverboostmod.command.kit.claim.<id>`.

## Permission administration

Every command below requires operator level 4 regardless of the backend:

| Command | Purpose |
| --- | --- |
| `/msb permission status` | Shows the configured mode and effective provider |
| `/msb permission backend auto` | Prefers an external provider and uses built-in as the provider fallback |
| `/msb permission backend built_in` | Forces native assignments only |
| `/msb permission backend external` | Requires an external provider and denies when none exists |
| `/msb permission grant <player> <node>` | Stores a built-in `GRANT` |
| `/msb permission deny <player> <node>` | Stores a built-in `DENY` |
| `/msb permission unset <player> <node>` | Removes the built-in decision |
| `/msb permission list <player>` | Lists built-in assignments for the UUID |
| `/msb permission reload` | Reloads `permissions.json` |

## Skins

| Command | Current access | Purpose |
| --- | --- | --- |
| `/setskin <url>` | Player | Sends the URL to MineSkin and applies the returned texture |

!!! warning "Protection pending"
    The current `/setskin` implementation does not yet have its own permission
    node, cooldown, or rate limit. Do not advertise it on a public server before
    adding these protections, because requests can consume the MineSkin quota.

