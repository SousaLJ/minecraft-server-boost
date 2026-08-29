---
lang: en
---

# Built-in permission system

The built-in system assigns permissions without requiring another mod.
Decisions are stored by UUID in:

```text
<world>/serverconfig/ServerBoost/permissions.json
```

It intentionally remains simple and per-player: there are no groups,
inheritance, automatic member groups, or `*` wildcards. To make a kit available
to everyone, configure the kit itself as public:

```text
/kit edit starter access public
```

The assignments below are only needed for restricted kits and protected
commands. `/msb permission` itself remains reserved for level 4 operators.

## Grant, deny, and unset

```text
/msb permission grant Alex minecraftserverboostmod.command.kits
/msb permission deny Alex minecraftserverboostmod.command.kit.delete
/msb permission unset Alex minecraftserverboostmod.command.kit.delete
/msb permission list Alex
```

- `grant` explicitly allows;
- `deny` explicitly denies;
- `unset` removes the decision and restores the applicable fallback;
- `list` shows native assignments only, not FTB Ranks rules.

The command accepts either the complete node or a path belonging to this mod.
The service normalizes it and persists the `minecraftserverboostmod` prefix.
Wildcards and nodes belonging to other mods are outside the built-in
administration scope.

Commands accept offline profiles already known to the server. The UUID is used
for persistence and the name is kept only for easier administration.

## Resolution order for restricted kits

With `operatorBypass=true`, an operator with the required level is accepted
first. For every other player:

1. specific `command.kit.claim.<id>` decision;
2. if it is `UNSET`, the `command.kit.claim` parent decision;
3. if both are `UNSET`, denial.

Therefore, a specific `DENY` overrides a parent `GRANT`. For commands other
than claim, only the exact node is queried.

## `permissions.json` format

```json
{
  "schemaVersion": 1,
  "players": {
    "8667ba71-b85a-4004-af54-457a9734eed7": {
      "lastKnownName": "Alex",
      "grants": [
        "minecraftserverboostmod.command.kits",
        "minecraftserverboostmod.command.kit.claim"
      ],
      "denies": [
        "minecraftserverboostmod.command.kit.claim.vip"
      ]
    }
  }
}
```

The same node cannot appear in both `grants` and `denies`. An invalid document
fails closed and must be fixed using the log or restored from backup.

## Switching backends

In `AUTO`, built-in assignments remain stored but are not consulted while an
external provider is active. They become effective again when `BUILT_IN` is
selected.

An explicit `deny` does not override a public kit because the backend is not
queried in that mode. After switching the kit back to `restricted`, grants,
denies, and fallbacks apply immediately again.

!!! warning "Back up first"
    Do not edit `permissions.json` while the server is running. Use commands or
    stop the server before making manual changes.
