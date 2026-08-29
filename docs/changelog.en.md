---
lang: en
---

# Changelog

## Next release

### Added

- kit management with create, edit, info, delete, give, claim, reset, and reload;
- per-kit `public` or `permission_required` access;
- safe migration that keeps new and legacy kits restricted by default;
- stable IDs separate from display names;
- per-player uses and cooldown persistence;
- built-in permissions with grant, deny, unset, list, and reload;
- `AUTO`, `BUILT_IN`, or `EXTERNAL` provider selection;
- optional detection of FTB Ranks and Forge/NeoForge handlers;
- skin caching and application through MineSkin;
- visual restoration of the official skin at login, including offline-mode servers;
- functional Forge 1.21.1 migration with Java 21 and data components;
- NeoForge 1.21.1 port completed in code and undergoing release validation;
- Brazilian Portuguese, English, French, and Spanish translations in the mod;
- bilingual Portuguese and English public documentation.

### Security and integrity

- atomic JSON writes;
- invalid JSON preservation in `.corrupt-<timestamp>.bak` backups;
- UUID-based persisted identity;
- MineSkin token kept in server configuration only;
- administrative permission commands protected by operator level 4;
- public kits bypass the permission backend while still enforcing uses and
  cooldowns.

### Documentation

- complete feature and command inventory;
- detailed built-in and FTB Ranks documentation;
- every node and fallback listed;
- updated Forge/NeoForge/Fabric matrix;
- offline-mode skin security guidance kept exclusively in the wiki.

Replace “Next release” with the actual version and date before creating the
first public tag.
