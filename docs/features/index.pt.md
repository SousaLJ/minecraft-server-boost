---
lang: pt-BR
---

# Recursos disponíveis

Esta página descreve o que já faz parte do Minecraft Server Boost. Recursos do
roadmap são identificados separadamente e não devem ser tratados como
disponíveis em uma release.

## Kits

- criação de kits a partir do inventário do administrador;
- ID estável separado do nome exibido;
- descrição, itens, usos por jogador e cooldown configuráveis;
- edição sem recriar o kit;
- listagem e consulta detalhada;
- resgate por jogadores;
- entrega administrativa sem consumir progresso;
- reset individual ou geral do progresso de um jogador;
- exclusão e reload dos dados;
- acesso `public` ou `permission_required` definido por kit;
- kits novos e legados restritos por padrão;
- persistência por UUID;
- dados completos dos `ItemStack`, incluindo NBT na linha 1.20.1 e data
  components na linha 1.21.1.

## Permissões

- backend built-in sem mod adicional;
- decisões `GRANT`, `DENY` e `UNSET` por jogador e UUID;
- integração opcional com FTB Ranks;
- integração com handlers externos da PermissionAPI do Forge ou NeoForge;
- modos `AUTO`, `BUILT_IN` e `EXTERNAL`;
- bypass de operador configurável;
- node pai para todos os kits restritos e node específico por kit;
- comandos de diagnóstico, atribuição, listagem e reload;
- falha fechada quando `EXTERNAL` é selecionado sem provider operacional.

O built-in é propositalmente simples: não implementa grupos, ranks, herança ou
wildcards. Kits destinados a todos devem ser marcados como públicos; servidores
que precisam de grupos podem usar o FTB Ranks.

## Skins

- consulta da skin oficial associada ao nome do jogador;
- cache local de propriedades de textura;
- restauração da skin no login;
- aplicação de skin por URL usando a API MineSkin;
- funcionamento server-side, com aplicação final na thread do servidor.

Consulte [MineSkin e skins](../skins/mineskin.md) para configuração, segurança e
o comportamento em servidores configurados com `online-mode=false`.

## Plataforma e dados

- configuração server-side em `config.toml`;
- `kits.json`, `player_data.json`, `permissions.json` e cache de skins;
- gravação JSON atômica;
- preservação de arquivos inválidos em backup `.corrupt-<timestamp>.bak`;
- mensagens internas em `pt_br`, `en_us`, `es_es` e `fr_fr`;
- documentação pública em português e inglês;
- arquitetura atual concentrada no servidor, sem conteúdo de gameplay
  client-side.

## Compatibilidade atual

| Minecraft | Modloader | Situação |
| --- | --- | --- |
| 1.20.1 | Forge | Suportado |
| 1.21.1 | Forge | Suportado |
| 1.21.1 | NeoForge | Port concluído; build em validação |

Fabric e o sistema de anúncios permanecem no [roadmap](../roadmap.md).
