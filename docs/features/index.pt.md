---
lang: pt-BR
---

# Recursos disponíveis

## Kits

- criação, edição, exclusão, give, reset, reload e claim;
- ID estável, descrição, usos e cooldown;
- acesso público ou restrito;
- **Choice Kits** com múltiplas opções;
- captura das opções pelo inventário;
- GUI vanilla 9×6, paginada e read-only;
- `/kit info` em GUI vanilla;
- validação server-side no clique;
- persistência atômica por UUID.

## Permissões

- built-in com `GRANT`, `DENY` e `UNSET`;
- FTB Ranks opcional;
- handlers Forge/NeoForge;
- nodes dinâmicos de claim;
- `minecraftserverboostmod.command.setskin`;
- `minecraftserverboostmod.command.announce`.

## Skins

`/setskin <https-url>` usa a variável de ambiente
`MINECRAFT_SERVER_BOOST_MINESKIN_TOKEN`, exige permissão, aceita somente HTTPS,
possui cooldown de 30 segundos e limita a duas solicitações simultâneas.

## Anúncios

- primeiro login e retorno;
- saída para os demais jogadores;
- anúncios periódicos;
- `SEQUENTIAL`, `RANDOM` e `SHUFFLE`;
- placeholders como `{player}`, `{player_uuid}`, `{online}`,
  `{max_players}`, `{server}` e `{sender}`;
- `messages.json` e `seen_players.json`;
- comandos administrativos `/msb announce`.

## Plataforma

A beta atual usa Minecraft 1.21.1, Java 21, Forge e NeoForge.
