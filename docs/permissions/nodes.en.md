---
lang: en
---

# Available permission nodes

All nodes use the `minecraftserverboostmod` prefix.

| Node | Action | Operator fallback |
| --- | --- | --- |
| `minecraftserverboostmod.command.kits` | List kits using `/kits` | Level 2 |
| `minecraftserverboostmod.command.kit` | Compatibility with older configurations | Level 2 |
| `minecraftserverboostmod.command.kit.create` | Create kits | Level 2 |
| `minecraftserverboostmod.command.kit.edit` | Edit kits | Level 2 |
| `minecraftserverboostmod.command.kit.delete` | Delete kits | Level 2 |
| `minecraftserverboostmod.command.kit.give` | Deliver kits administratively | Level 2 |
| `minecraftserverboostmod.command.kit.reset` | Reset progress | Level 2 |
| `minecraftserverboostmod.command.kit.reload` | Reload data | Level 2 |
| `minecraftserverboostmod.command.kit.info` | View details | Level 2 |
| `minecraftserverboostmod.command.kit.claim` | Parent permission for claiming restricted kits | Service resolution |
| `minecraftserverboostmod.command.kit.claim.<id>` | Permission for a specific restricted kit | Service resolution |

The `/kit` root has no mandatory permission of its own: every subcommand is
protected individually. This allows `claim` without exposing administrative
actions.

Public kits do not query either the parent or kit-specific node. `/kit claim`
remains available, and the service applies access, uses, and cooldown according
to the selected kit definition.

There is no wildcard or dedicated node for `/msb permission`: that tree is
protected directly by operator level 4. The current release also has no
dedicated node for `/setskin`.

Nodes for kits created after the loader's initial registration may remain
pending in an external handler until the next restart. The built-in system and
FTB Ranks textual lookup do not depend on this late registration.
