---
lang: pt-BR
---

# MineSkin e skins

O mod recupera skins oficiais, mantém cache local e pode gerar/aplicar uma skin
por URL através da MineSkin.

## Configuração segura

O token **não é armazenado em `config.toml`**. Defina-o apenas no ambiente do
processo Java:

```text
MINECRAFT_SERVER_BOOST_MINESKIN_TOKEN=<seu-token>
```

Não publique esse valor em Issues, scripts, logs ou capturas de tela.

## Comando

```text
/setskin <https-url>
```

Proteções da beta:

- node `minecraftserverboostmod.command.setskin`;
- URL HTTPS obrigatória;
- cooldown de 30 segundos por jogador;
- no máximo duas solicitações simultâneas;
- HTTP em executor dedicado;
- resposta final devolvida à thread do servidor;
- detalhes de exceções ficam no log do servidor, não no chat.

O cache fica em:

```text
<mundo>/serverconfig/ServerBoost/skins/skin_cache.json
```

## Servidores offline

A recuperação visual de uma skin por nome não autentica o jogador nem comprova
a propriedade da conta. Em `online-mode=false`, use autenticação apropriada.
