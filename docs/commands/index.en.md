---
lang: en
---

# All commands

## Kits

```text
/kits
/kit create <name> [uses] [cooldown]
/kit info <id>
/kit edit <id> name <name>
/kit edit <id> uses <value>
/kit edit <id> cooldown <seconds>
/kit edit <id> description <text>
/kit edit <id> description clear
/kit edit <id> items
/kit edit <id> access public
/kit edit <id> access restricted
/kit edit <id> delivery all-items
/kit edit <id> delivery select-one
/kit choice add <kit> <choiceId> <name>
/kit choice delete <kit> <choiceId>
/kit choice list <kit>
/kit give <player> <id> [choiceId]
/kit claim <id> [choiceId]
/kit reset <player> <id|all>
/kit delete <id>
/kit reload
```

Choice Kits open a vanilla GUI when `/kit claim <id>` is used without a
`choiceId`. `/kit info` also uses a server-only vanilla GUI.

## Permissions

```text
/msb permission status
/msb permission backend auto
/msb permission backend built_in
/msb permission backend external
/msb permission grant <player> <node>
/msb permission deny <player> <node>
/msb permission unset <player> <node>
/msb permission list <player>
/msb permission reload
```

## Skins

```text
/setskin <https-url>
```

Node: `minecraftserverboostmod.command.setskin`. HTTPS only, 30-second
cooldown, maximum two simultaneous requests.

## Announcements

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

Node: `minecraftserverboostmod.command.announce`.
