---
lang: pt-BR
---

# Sistema de anúncios

O sistema roda inteiramente no servidor.

## Eventos automáticos

- primeiro login: mensagem privada;
- retorno: mensagem privada;
- saída: mensagem enviada aos demais jogadores;
- anúncios periódicos.

## Seleção periódica

- `SEQUENTIAL`: segue a ordem;
- `RANDOM`: seleção aleatória;
- `SHUFFLE`: percorre o catálogo embaralhado antes de reiniciar.

## Placeholders

`{player}`, `{player_uuid}`, `{online}`, `{max_players}`, `{server}` e `{sender}`.

## Arquivos

```text
<world>/serverconfig/ServerBoost/messages.json
<world>/serverconfig/ServerBoost/seen_players.json
```

## Administração

Node: `minecraftserverboostmod.command.announce`.

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
