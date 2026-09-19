---
lang: pt-BR
---

# Todos os comandos

## Kits

```text
/kits
/kit create <nome> [usos] [cooldown]
/kit info <id>
/kit edit <id> name <nome>
/kit edit <id> uses <valor>
/kit edit <id> cooldown <segundos>
/kit edit <id> description <texto>
/kit edit <id> description clear
/kit edit <id> items
/kit edit <id> access public
/kit edit <id> access restricted
/kit edit <id> delivery all-items
/kit edit <id> delivery select-one
/kit choice add <kit> <choiceId> <nome>
/kit choice delete <kit> <choiceId>
/kit choice list <kit>
/kit give <jogador> <id> [choiceId]
/kit claim <id> [choiceId]
/kit reset <jogador> <id|all>
/kit delete <id>
/kit reload
```

Choice Kits abrem uma GUI vanilla quando `/kit claim <id>` é usado sem
`choiceId`. `/kit info` também usa GUI vanilla server-only.

## Permissões

```text
/msb permission status
/msb permission backend auto
/msb permission backend built_in
/msb permission backend external
/msb permission grant <jogador> <node>
/msb permission deny <jogador> <node>
/msb permission unset <jogador> <node>
/msb permission list <jogador>
/msb permission reload
```

## Skins

```text
/setskin <https-url>
```

Node: `minecraftserverboostmod.command.setskin`. O comando aceita HTTPS,
possui cooldown de 30 segundos e limite de duas solicitações simultâneas.

## Anúncios

```text
/msb announce info <mensagem>
/msb announce success <mensagem>
/msb announce warning <mensagem>
/msb announce error <mensagem>
/msb announce list
/msb announce reload
/msb announce random
/msb announce send <id>
/msb announce enable <id>
/msb announce disable <id>
```

Node: `minecraftserverboostmod.command.announce`.
