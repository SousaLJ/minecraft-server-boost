---
lang: en
---

# Public mod metadata

Use the public repository for the website and issue tracker without declaring a
source URL while the source remains closed.

Forge or NeoForge example:

```toml
issueTrackerURL="https://github.com/SousaLJ/minecraft-server-boost/issues"

[[mods]]
modId="minecraftserverboostmod"
displayName="Minecraft Server Boost"
displayURL="https://SousaLJ.github.io/minecraft-server-boost/"
```

Keep the real version, license, and authors in their appropriate `mods.toml`
fields. Do not point `sourceURL` to the documentation repository and do not
invent a public source URL.

Use the same documentation and issue URLs on CurseForge and Modrinth. This
centralizes public reports without exposing the private repository.

## Platform editorial policy

The wiki contains a section explaining visual restoration of official skins on
servers using `online-mode=false`. **Do not copy that information into the
CurseForge or Modrinth project description.** On those platforms, describe only
“skin lookup, caching, and application” and direct technical details to the
wiki.

Keep loader status precise as well:

- Forge 1.20.1: supported;
- Forge 1.21.1: supported;
- NeoForge 1.21.1: under validation until the JAR is confirmed;
- Fabric: roadmap only, with no download available.
