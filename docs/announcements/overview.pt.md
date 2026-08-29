---
lang: pt-BR
---

# Sistema de anúncios

!!! note "Recurso planejado"
    Anúncios e mensagens de boas-vindas ainda não fazem parte da versão inicial.

O desenho comum previsto inclui:

- mensagens de boas-vindas ao entrar;
- anúncios periódicos de regras, Discord e informações do servidor;
- seleção sequencial ou aleatória;
- placeholders seguros, como jogador e quantidade online;
- arquivo de conteúdo `messages.json` separado da configuração do modloader;
- configuração de ativação, intervalo e modo no arquivo padrão do modloader;
- entrega na thread do servidor por um adapter de cada modloader.

`messages.json` será conteúdo administrável, não uma segunda fonte de
configuração. O loader continuará responsável pelos caminhos e eventos; seleção,
placeholders e regras ficarão no common.

As linhas pretendidas são Forge 1.20.1, Forge 1.21.1 e NeoForge 1.21.1 após sua
validação, com Fabric sendo avaliado separadamente.
