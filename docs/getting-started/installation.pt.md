---
lang: pt-BR
---

# Instalação

## Escolha a build correta

| Minecraft | Modloader | Java | Situação |
| --- | --- | --- | --- |
| 1.20.1 | Forge | 17 | Suportado |
| 1.21.1 | Forge | 21 | Suportado |
| 1.21.1 | NeoForge | 21 | Em validação; não use em produção antes da release |

Não misture builds de Minecraft ou modloader. O nome do JAR e a página de
download devem corresponder exatamente ao ambiente do servidor.

## Instalação no Forge

1. faça backup do mundo e da pasta de configuração;
2. instale uma versão compatível do Forge para Minecraft 1.20.1 ou 1.21.1;
3. baixe o JAR somente pelos links oficiais indicados neste site;
4. coloque o JAR na pasta `mods` do servidor;
5. inicie o servidor e aceite o EULA do Minecraft quando necessário;
6. confirme no log a inicialização do Minecraft Server Boost;
7. pare o servidor antes de editar os arquivos gerados.

Minecraft 1.20.1 utiliza Java 17; Minecraft 1.21.1 utiliza Java 21.

## NeoForge 1.21.1

O port NeoForge já possui adapters de lifecycle, caminhos, comandos,
PermissionAPI, FTB Ranks e skins. A build permanece classificada como **em
validação** até concluir os testes de JAR e servidor dedicado. Quando publicada,
o procedimento de instalação será o mesmo: NeoForge compatível, Java 21 e o JAR
específico do NeoForge na pasta `mods`.

!!! warning "Build em validação"
    Não renomeie o JAR Forge nem tente carregá-lo no NeoForge. Aguarde uma build
    identificada explicitamente como NeoForge 1.21.1.

## Arquivos gerados

Os dados são mantidos no `serverconfig` do mundo:

```text
<mundo>/serverconfig/ServerBoost/
├── config.toml
├── kits.json
├── permissions.json
├── player_data.json
└── skins/
    └── skin_cache.json
```

O local exato de `<mundo>` depende de como o servidor foi iniciado e da opção
`level-name` do `server.properties`.

!!! warning "Não copie dados entre servidores ligados"
    Edite ou restaure os JSON apenas com o servidor parado. Durante a execução,
    prefira os comandos de administração e os comandos de reload documentados.

## Atualização

Antes de trocar o JAR:

1. pare o servidor corretamente;
2. copie `ServerBoost/` para um backup;
3. leia o [changelog](../changelog.md);
4. substitua somente o JAR do modloader e versão corretos;
5. inicie e revise o log antes de liberar jogadores.
