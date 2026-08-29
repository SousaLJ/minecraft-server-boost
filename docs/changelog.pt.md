---
lang: pt-BR
---

# Changelog

## Próxima publicação

### Adicionado

- gerenciamento de kits com create, edit, info, delete, give, claim, reset e reload;
- acesso `public` ou `permission_required` configurável por kit;
- migração segura que mantém kits novos e legados restritos por padrão;
- ID estável separado do nome exibido;
- usos e cooldown persistidos por jogador;
- permissões built-in com grant, deny, unset, list e reload;
- seleção `AUTO`, `BUILT_IN` ou `EXTERNAL`;
- detecção opcional de FTB Ranks e handlers Forge/NeoForge;
- cache e aplicação de skins com MineSkin;
- recuperação visual da skin oficial no login, inclusive em servidores offline;
- migração funcional para Forge 1.21.1 com Java 21 e data components;
- port NeoForge 1.21.1 concluído em código e em validação de release;
- traduções em português do Brasil, inglês, francês e espanhol;
- documentação pública bilíngue em português e inglês.

### Segurança e integridade

- gravação JSON atômica;
- preservação de JSON inválido em backup `.corrupt-<timestamp>.bak`;
- UUID como identidade persistida;
- token MineSkin mantido apenas na configuração do servidor;
- comandos administrativos de permissão protegidos por OP nível 4;
- kits públicos ignoram o backend de permissões, mas continuam respeitando usos
  e cooldown.

### Documentação

- inventário completo de features e comandos;
- documentação detalhada do built-in e do FTB Ranks;
- lista de todos os nodes e seus fallbacks;
- matriz Forge/NeoForge/Fabric atualizada;
- orientação de segurança para skins em `online-mode=false` exclusiva da wiki.

Substitua “Próxima publicação” pelo número e data reais antes de criar a
primeira tag pública.
