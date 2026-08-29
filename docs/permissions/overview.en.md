---
lang: en
---

# Permission overview

Forge and NeoForge use the same permission policy. The loader adapter connects
the shared domain to the corresponding native system.

There are three modes in the `[permissions]` section of `config.toml`:

| Mode | Behavior |
| --- | --- |
| `AUTO` | Uses FTB Ranks or another loader handler when available; otherwise uses built-in |
| `BUILT_IN` | Uses only Minecraft Server Boost's `permissions.json` |
| `EXTERNAL` | Requires FTB Ranks or another non-default handler; without a working provider, access is denied |

```toml
[permissions]
backend = "AUTO"
operatorBypass = true
```

`operatorBypass` enables the vanilla operator fallback for commands and kits.
When disabled, operator status does not replace a backend grant. The
`/msb permission` commands always require operator level 4 regardless of this
setting, preserving the administrative recovery mechanism.

## Provider selection

In `AUTO`, priority is:

1. FTB Ranks installed with a working API;
2. an active PermissionAPI handler other than the loader's default handler;
3. the built-in system.

In `EXTERNAL`, the third step is removed. No provider means fail-closed denial.
In `BUILT_IN`, external providers are not queried.

The provider is resolved during permission checks because PermissionAPI may not
be ready during the earliest server lifecycle events. Use
`/msb permission status` to inspect the effective result.

## When the backend is queried

The selected backend only decides access to `permission_required` kits.
`public` kits are allowed by their own definition and do not query built-in,
FTB Ranks, or PermissionAPI. Uses and cooldowns still apply.

This separation makes a `starter` kit available to everyone without creating
groups or assigning one permission to every UUID.

For restricted kits, the resolver checks the specific node first and then the
claim parent node. See the [complete node list](nodes.md).

## Administrative commands

```text
/msb permission status
/msb permission backend auto
/msb permission backend built_in
/msb permission backend external
/msb permission grant <player> <node>
/msb permission deny <player> <node>
/msb permission unset <player> <node>
/msb permission list <player>
/msb permission reload
```

`backend` saves the loader's server-side configuration. `reload` reloads only
assignments from `permissions.json`; it does not reload FTB Ranks rules.

See [All commands](../commands/index.md) for the complete command tree and
default access levels.
