---
lang: pt-BR
---

# MineSkin e skins

O mod pode consultar a skin oficial de jogadores, manter cache local e aplicar
uma skin a partir de URL usando a API MineSkin.

## Skin oficial em servidor offline

<!-- Política de publicação: manter esta seção somente na wiki. Não copiar para
descrições do projeto no CurseForge ou Modrinth. -->

Em servidores configurados com `online-mode=false`, o perfil criado pelo
servidor normalmente não recebe automaticamente as propriedades assinadas de
textura da conta. O Minecraft Server Boost pode usar o nome do jogador para
consultar o perfil público correspondente nos serviços da Mojang, obter a skin
oficial, armazená-la no cache e reaplicá-la durante o login.

Isso permite exibir a skin de uma conta oficial mesmo quando o servidor está em
modo offline. A consulta automática não consome o token MineSkin; o token é
necessário apenas para `/setskin <url>`.

!!! danger "Não é autenticação"
    Recuperar uma skin pelo nome não comprova que o jogador controla aquela
    conta. Em `online-mode=false`, utilize um sistema de login/autenticação
    apropriado. O recurso de skin é somente visual e não protege UUIDs,
    inventários, permissões ou identidade.

A restauração depende de o nome corresponder a um perfil oficial consultável e
de os serviços externos estarem disponíveis. Nomes sem conta oficial não
possuem uma skin Mojang para recuperar.

## Configuração da MineSkin

No `config.toml` do mundo:

```toml
[mineskin]
mineskinApiToken = "COLOQUE_O_TOKEN_APENAS_NO_SERVIDOR"
```

Gere e gerencie o token pelo serviço oficial da MineSkin. Nunca envie esse
valor em Issues, logs ou capturas de tela.

## Comando

```text
/setskin <url>
```

A URL é enviada à MineSkin fora da thread principal; a aplicação final do
perfil volta para a thread do servidor. O cache fica em:

```text
<mundo>/serverconfig/ServerBoost/skins/skin_cache.json
```

!!! warning "Hardening antes de produção"
    Na implementação inicial, `/setskin` ainda precisa receber um node de
    permissão próprio, cooldown e limite de requisições. Sem isso, jogadores
    podem consumir a cota do token MineSkin. Em servidores públicos, mantenha o
    recurso desabilitado ou aplique essa proteção antes de divulgar o comando.

## Limitações

- o serviço externo pode aplicar limites de requisição;
- URLs inválidas ou inacessíveis não geram textura;
- a atualização visual pode exigir reconexão em alguns clientes;
- não compartilhe o cache sem revisar nomes e UUIDs.
