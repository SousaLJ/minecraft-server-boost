---
lang: en
---

# Minecraft 1.21.1

The 1.21.1 line is maintained separately from 1.20.1 and uses Java 21.

## Forge

The Forge 1.21.1 migration is functional. It includes kits, access policy,
persistence, built-in permissions, FTB Ranks, Forge handlers, and skins. Item
serialization was adapted to Minecraft 1.21.1's data-component system.

## NeoForge

The loader-specific port has been completed in code with:

- NeoForge entrypoint and configuration;
- server, login, and command events;
- node registration through NeoForge PermissionAPI;
- permission gateways and resolver;
- built-in fallback and optional FTB Ranks integration;
- runtime lifecycle and data paths;
- skin integration.

The NeoForge build remains **under validation** until Java 21 build, dedicated
server, persistence, non-operator, FTB Ranks, and world-restart tests are
complete. The support matrix can mark it supported after that confirmation.

## Data compatibility

Back up data before moving it between release lines. The `accessMode` policy is
additive and fails closed to `permission_required`, but internal item
representation differs between 1.20.1 and 1.21.1. Do not copy `kits.json`
between versions without validating item migration.

