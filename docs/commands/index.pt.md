---
lang: pt-BR
---

# Todos os comandos

Os exemplos usam `<id>` para o identificador estável do kit. Argumentos entre
colchetes são opcionais.

## Kits

| Comando | Acesso padrão | Node ou proteção | Função |
| --- | --- | --- | --- |
| `/kits` | OP 2 ou permissão | `minecraftserverboostmod.command.kits` | Lista os kits carregados |
| `/kit claim <id>` | Todos podem executar | Política do kit e nodes de claim | Resgata o kit aplicando acesso, usos e cooldown |
| `/kit create <nome> [usos] [cooldown]` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.create` | Cria um kit restrito usando o inventário |
| `/kit info <id>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.info` | Mostra os detalhes do kit |
| `/kit edit <id> name <nome>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Altera o nome exibido |
| `/kit edit <id> uses <valor>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Altera o total de usos |
| `/kit edit <id> cooldown <segundos>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Altera o cooldown |
| `/kit edit <id> description <texto>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Define a descrição |
| `/kit edit <id> description clear` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Remove a descrição |
| `/kit edit <id> items` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Substitui os itens pelo inventário atual |
| `/kit edit <id> access public` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Torna o kit disponível para todos |
| `/kit edit <id> access restricted` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.edit` | Volta a exigir permissão de claim |
| `/kit give <jogador> <id>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.give` | Entrega sem consumir progresso |
| `/kit reset <jogador> <id>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.reset` | Reseta um kit do jogador |
| `/kit reset <jogador> all` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.reset` | Reseta todos os kits do jogador |
| `/kit delete <id>` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.delete` | Exclui o kit |
| `/kit reload` | OP 2 ou permissão | `minecraftserverboostmod.command.kit.reload` | Recarrega kits e progresso |

`/kit claim` precisa permanecer acessível para que o serviço possa avaliar um
kit público. Em kits restritos, o resgate exige o node pai
`minecraftserverboostmod.command.kit.claim` ou o node específico
`minecraftserverboostmod.command.kit.claim.<id>`.

## Administração das permissões

Todos os comandos abaixo exigem operador nível 4, independentemente do backend:

| Comando | Função |
| --- | --- |
| `/msb permission status` | Mostra modo configurado e provider efetivo |
| `/msb permission backend auto` | Prefere provider externo e usa built-in como fallback de provider |
| `/msb permission backend built_in` | Força somente as atribuições nativas |
| `/msb permission backend external` | Exige provider externo e nega quando ele não existe |
| `/msb permission grant <jogador> <node>` | Grava um `GRANT` built-in |
| `/msb permission deny <jogador> <node>` | Grava um `DENY` built-in |
| `/msb permission unset <jogador> <node>` | Remove a decisão built-in |
| `/msb permission list <jogador>` | Lista as atribuições built-in do UUID |
| `/msb permission reload` | Recarrega `permissions.json` |

## Skins

| Comando | Acesso atual | Função |
| --- | --- | --- |
| `/setskin <url>` | Jogador | Envia a URL para a MineSkin e aplica a textura retornada |

!!! warning "Proteção pendente"
    A implementação atual de `/setskin` ainda não possui node próprio,
    cooldown ou rate limit. Não divulgue o comando em servidor público antes de
    adicionar essas proteções, pois requisições podem consumir a cota MineSkin.

