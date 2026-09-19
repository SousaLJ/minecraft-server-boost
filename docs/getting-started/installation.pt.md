---
lang: pt-BR
---

# Instalação

A beta 1.0.0 usa **Minecraft 1.21.1**, **Java 21** e possui builds separadas para Forge e NeoForge.

1. faça backup do mundo;
2. instale o loader correto;
3. coloque o JAR correspondente em `mods`;
4. inicie o servidor;
5. confira o log e os arquivos em `<mundo>/serverconfig/ServerBoost/`.

## MineSkin

Para habilitar `/setskin`, configure o token **somente no ambiente do processo do servidor**:

```text
MINECRAFT_SERVER_BOOST_MINESKIN_TOKEN=<seu-token>
```

Não coloque o token em `config.toml`, scripts públicos ou repositórios.

## Dados

```text
<mundo>/serverconfig/ServerBoost/
├── config.toml
├── kits.json
├── permissions.json
├── player_data.json
├── messages.json
├── seen_players.json
└── skins/
    └── skin_cache.json
```
