---
lang: pt-BR
---

# Minecraft 1.21.1

A linha 1.21.1 é mantida separadamente da 1.20.1 e utiliza Java 21.

## Forge

A migração Forge 1.21.1 está funcional. Ela inclui kits, política de acesso,
persistência, permissões built-in, FTB Ranks, handlers Forge e skins. A
serialização dos itens foi adaptada para o sistema de data components do
Minecraft 1.21.1.

## NeoForge

O port específico foi concluído em código com:

- entrypoint e configuração NeoForge;
- eventos de servidor, login e comandos;
- registro de nodes na PermissionAPI do NeoForge;
- gateways e resolver de permissões;
- fallback built-in e integração opcional com FTB Ranks;
- caminhos de dados e lifecycle do runtime;
- integração de skins.

A build NeoForge continua **em validação** até concluir build Java 21, execução
em servidor dedicado, persistência, testes sem OP, FTB Ranks e reinício de
mundo. Após essa confirmação, a matriz poderá marcá-la como suportada.

## Compatibilidade de dados

Faça backup antes de mover dados entre linhas. A política `accessMode` é
aditiva e falha para `permission_required`, mas a representação interna dos
itens difere entre 1.20.1 e 1.21.1. Não copie `kits.json` entre versões sem
validar a migração dos itens.
