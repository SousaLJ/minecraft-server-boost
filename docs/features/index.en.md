---
lang: en
---

# Available features

## Kits

- create, edit, delete, give, reset, reload, and claim;
- stable ID, description, uses, and cooldown;
- public or restricted access;
- **Choice Kits** with multiple options;
- inventory-based choice capture;
- paginated, read-only vanilla 9×6 GUI;
- vanilla `/kit info` GUI;
- server-side click revalidation;
- atomic UUID-based persistence.

## Permissions

- built-in `GRANT`, `DENY`, and `UNSET`;
- optional FTB Ranks;
- Forge/NeoForge handlers;
- dynamic claim nodes;
- `minecraftserverboostmod.command.setskin`;
- `minecraftserverboostmod.command.announce`.

## Skins

`/setskin <https-url>` reads the server-side
`MINECRAFT_SERVER_BOOST_MINESKIN_TOKEN` environment variable, requires
permission, accepts HTTPS only, applies a 30-second cooldown, and limits
processing to two concurrent requests.

## Announcements

- first login and returning-player messages;
- logout message to other players;
- periodic announcements;
- `SEQUENTIAL`, `RANDOM`, and `SHUFFLE`;
- placeholders such as `{player}`, `{player_uuid}`, `{online}`,
  `{max_players}`, `{server}`, and `{sender}`;
- `messages.json` and `seen_players.json`;
- `/msb announce` administration commands.

## Platform

The current beta targets Minecraft 1.21.1, Java 21, Forge, and NeoForge.
