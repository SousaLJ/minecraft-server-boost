---
lang: en
---

# Available features

This page describes functionality already included in Minecraft Server Boost.
Roadmap items are identified separately and must not be presented as available
in a release.

## Kits

- create kits from an administrator's inventory;
- stable ID separated from the display name;
- configurable description, items, per-player uses, and cooldown;
- editing without recreating the kit;
- listing and detailed inspection;
- player claims;
- administrative delivery without consuming progress;
- reset one kit or all kit progress for a player;
- deletion and data reload;
- per-kit `public` or `permission_required` access;
- new and legacy kits are restricted by default;
- UUID-based persistence;
- complete `ItemStack` data, including NBT on 1.20.1 and data components on
  1.21.1.

## Permissions

- built-in backend without an additional mod;
- per-player, UUID-based `GRANT`, `DENY`, and `UNSET` decisions;
- optional FTB Ranks integration;
- integration with external Forge or NeoForge PermissionAPI handlers;
- `AUTO`, `BUILT_IN`, and `EXTERNAL` modes;
- configurable operator bypass;
- one parent node for every restricted kit and one specific node per kit;
- diagnostics, assignment, listing, and reload commands;
- fail-closed behavior when `EXTERNAL` is selected without a working provider.

The built-in backend intentionally remains simple: it does not implement
groups, ranks, inheritance, or wildcards. Kits intended for everyone should be
public; servers requiring groups can use FTB Ranks.

## Skins

- fetch the official skin associated with a player's name;
- local texture-property cache;
- restore the skin at login;
- apply a skin from a URL through the MineSkin API;
- server-side operation, returning final application to the server thread.

See [MineSkin and skins](../skins/mineskin.md) for configuration, security, and
behavior on servers configured with `online-mode=false`.

## Platform and data

- server-side `config.toml` configuration;
- `kits.json`, `player_data.json`, `permissions.json`, and skin cache;
- atomic JSON writes;
- invalid-file preservation in `.corrupt-<timestamp>.bak` backups;
- in-game messages in `pt_br`, `en_us`, `es_es`, and `fr_fr`;
- public documentation in Portuguese and English;
- current architecture is server-focused and adds no client-side gameplay
  content.

## Current compatibility

| Minecraft | Modloader | Status |
| --- | --- | --- |
| 1.20.1 | Forge | Supported |
| 1.21.1 | Forge | Supported |
| 1.21.1 | NeoForge | Port completed; build under validation |

Fabric and the announcement system remain on the [roadmap](../roadmap.md).
