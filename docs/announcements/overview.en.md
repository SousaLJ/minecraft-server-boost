---
lang: en
---

# Announcement system

The system runs entirely server-side.

## Automatic events

- first login: private message;
- returning player: private message;
- logout: message to other players;
- periodic announcements.

## Periodic selection

- `SEQUENTIAL`: configured order;
- `RANDOM`: random selection;
- `SHUFFLE`: traverse a shuffled catalog before restarting.

## Placeholders

`{player}`, `{player_uuid}`, `{online}`, `{max_players}`, `{server}`, and `{sender}`.

## Files

```text
<world>/serverconfig/ServerBoost/messages.json
<world>/serverconfig/ServerBoost/seen_players.json
```

## Administration

Node: `minecraftserverboostmod.command.announce`.

```text
/msb announce info <message>
/msb announce success <message>
/msb announce warning <message>
/msb announce error <message>
/msb announce list
/msb announce reload
/msb announce random
/msb announce send <id>
/msb announce enable <id>
/msb announce disable <id>
```
