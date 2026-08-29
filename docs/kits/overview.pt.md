---
lang: pt-BR
---

# Visão geral dos kits

Um kit possui:

- `id`: identidade estável usada por comandos, progresso e permissões;
- `name`: nome exibido, que pode ser alterado sem mudar o ID;
- `uses`: quantidade de resgates permitidos por jogador;
- `cooldownSeconds`: intervalo entre resgates;
- `description`: texto administrativo opcional;
- `accessMode`: `public` ou `permission_required`;
- `items`: cópia dos itens capturados do inventário.

## Regras importantes

- renomear um kit não altera seu ID nem o node de permissão;
- editar usos não restaura automaticamente o progresso já consumido;
- editar cooldown não reescreve o próximo horário já persistido;
- excluir um kit preserva histórico órfão no arquivo dos jogadores;
- `give` é uma entrega administrativa e não consome usos ou cooldown;
- `claim` sempre valida usos e cooldown;
- kits `public` não consultam permissões; kits `permission_required` usam o
  backend configurado;
- `reset` é a operação explícita para recomeçar o progresso.

Esse comportamento evita que uma edição administrativa restaure kits
silenciosamente para todos os jogadores.

## Acesso simples, sem grupos

O mod não cria grupos nem atribui automaticamente um grupo a cada jogador.
Para um kit como `starter`, marque-o como público. Para kits de rank, evento ou
equipe, mantenha o modo restrito e atribua o node com o sistema built-in, FTB
Ranks ou outro handler Forge/NeoForge.

Kits novos e kits antigos que ainda não possuem `accessMode` são restritos por
padrão. Um administrador precisa publicar cada kit explicitamente.

## Integridade dos dados

As gravações JSON utilizam substituição atômica. Quando um documento inválido é
detectado, o arquivo original é preservado com sufixo semelhante a
`.corrupt-<timestamp>.bak`, em vez de ser tratado silenciosamente como vazio.
