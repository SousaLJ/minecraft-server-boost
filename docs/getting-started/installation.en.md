---
lang: en
---

# Installation

Beta 1.0.0 uses **Minecraft 1.21.1**, **Java 21**, and separate Forge and NeoForge builds.

1. back up the world;
2. install the correct loader;
3. place the matching JAR in `mods`;
4. start the server;
5. review logs and `<world>/serverconfig/ServerBoost/`.

## MineSkin

To enable `/setskin`, configure the token **only in the server process environment**:

```text
MINECRAFT_SERVER_BOOST_MINESKIN_TOKEN=<your-token>
```

Do not put the token in `config.toml`, public scripts, or repositories.

## Data

```text
<world>/serverconfig/ServerBoost/
├── config.toml
├── kits.json
├── permissions.json
├── player_data.json
├── messages.json
├── seen_players.json
└── skins/
    └── skin_cache.json
```
