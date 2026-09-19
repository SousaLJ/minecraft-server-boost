---
lang: en
---

# MineSkin and skins

The mod retrieves official skins, keeps a local cache, and can generate/apply a
skin from a URL through MineSkin.

## Secure configuration

The token is **not stored in `config.toml`**. Set it only in the Java server
process environment:

```text
MINECRAFT_SERVER_BOOST_MINESKIN_TOKEN=<your-token>
```

Never publish this value in Issues, scripts, logs, or screenshots.

## Command

```text
/setskin <https-url>
```

Beta protections:

- `minecraftserverboostmod.command.setskin` node;
- HTTPS-only URLs;
- 30-second per-player cooldown;
- at most two simultaneous requests;
- HTTP work on a dedicated executor;
- final response returned to the server thread;
- exception details remain in server logs rather than chat.

Cache path:

```text
<world>/serverconfig/ServerBoost/skins/skin_cache.json
```

## Offline-mode servers

Retrieving a skin by player name is visual only and does not authenticate the
player or prove account ownership. Use appropriate authentication with
`online-mode=false`.
