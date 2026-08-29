---
lang: en
---

# MineSkin and skins

The mod can fetch official player skins, keep a local cache, and apply a skin
from a URL through the MineSkin API.

## Official skins on offline-mode servers

<!-- Publication policy: keep this section in the wiki only. Do not copy it to
the CurseForge or Modrinth project descriptions. -->

On servers configured with `online-mode=false`, the server-created profile
normally does not automatically receive the account's signed texture
properties. Minecraft Server Boost can use the player's name to query the
corresponding public Mojang profile, retrieve the official skin, cache it, and
apply it again during login.

This allows an official account's skin to be displayed even when the server is
in offline mode. Automatic lookup does not consume the MineSkin token; the
token is required only for `/setskin <url>`.

!!! danger "This is not authentication"
    Retrieving a skin by name does not prove that the player controls that
    account. Use a proper login/authentication system with `online-mode=false`.
    The skin feature is visual only and does not protect UUIDs, inventories,
    permissions, or identity.

Restoration requires the name to match a queryable official profile and the
external services to be available. Names without an official account have no
Mojang skin to retrieve.

## MineSkin configuration

In the world's `config.toml`:

```toml
[mineskin]
mineskinApiToken = "KEEP_THE_TOKEN_ON_THE_SERVER_ONLY"
```

Generate and manage the token through MineSkin's official service. Never post
it in Issues, logs, or screenshots.

## Command

```text
/setskin <url>
```

The URL is sent to MineSkin outside the main thread; final profile application
returns to the server thread. The cache is stored in:

```text
<world>/serverconfig/ServerBoost/skins/skin_cache.json
```

!!! warning "Hardening before production"
    The initial `/setskin` implementation still needs its own permission node,
    cooldown, and request rate limit. Without them, players can consume the
    MineSkin token quota. Keep the feature disabled on public servers or apply
    these protections before advertising the command.

## Limitations

- the external service may enforce request limits;
- invalid or unreachable URLs do not generate a texture;
- some clients may require reconnecting before the visual update appears;
- do not share the cache without reviewing names and UUIDs.
