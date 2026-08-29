---
lang: en
---

# Installation

## Choose the correct build

| Minecraft | Modloader | Java | Status |
| --- | --- | --- | --- |
| 1.20.1 | Forge | 17 | Supported |
| 1.21.1 | Forge | 21 | Supported |
| 1.21.1 | NeoForge | 21 | Under validation; do not use in production before release |

Do not mix Minecraft or modloader builds. The JAR name and download page must
match the server environment exactly.

## Forge installation

1. back up the world and configuration directory;
2. install a compatible Forge version for Minecraft 1.20.1 or 1.21.1;
3. download the JAR only from the official links listed on this website;
4. place the JAR in the server `mods` directory;
5. start the server and accept the Minecraft EULA when required;
6. confirm that Minecraft Server Boost starts successfully in the log;
7. stop the server before editing any generated files.

Minecraft 1.20.1 uses Java 17; Minecraft 1.21.1 uses Java 21.

## NeoForge 1.21.1

The NeoForge port already includes lifecycle, path, command, PermissionAPI, FTB
Ranks, and skin adapters. The build remains classified as **under validation**
until JAR and dedicated-server tests are complete. Once released, installation
will follow the same pattern: compatible NeoForge, Java 21, and the dedicated
NeoForge JAR in the `mods` directory.

!!! warning "Build under validation"
    Do not rename the Forge JAR or attempt to load it on NeoForge. Wait for a
    build explicitly identified as NeoForge 1.21.1.

## Generated files

Data is stored under the world's `serverconfig` directory:

```text
<world>/serverconfig/ServerBoost/
├── config.toml
├── kits.json
├── permissions.json
├── player_data.json
└── skins/
    └── skin_cache.json
```

The exact `<world>` path depends on how the server is launched and the
`level-name` value in `server.properties`.

!!! warning "Do not copy data while servers are running"
    Stop the server before editing or restoring JSON files. During normal
    operation, prefer administration and documented reload commands.

## Updating

Before replacing the JAR:

1. stop the server cleanly;
2. back up the `ServerBoost/` directory;
3. read the [changelog](../changelog.md);
4. replace only the JAR that matches the correct modloader and version;
5. start the server and review the log before allowing players to join.
