---
lang: pt-BR
---

# Nodes disponíveis

Todos os nodes usam o prefixo `minecraftserverboostmod`.

| Node | Ação | Fallback de OP |
| --- | --- | --- |
| `minecraftserverboostmod.command.kits` | Listar kits com `/kits` | Nível 2 |
| `minecraftserverboostmod.command.kit` | Compatibilidade com configurações antigas | Nível 2 |
| `minecraftserverboostmod.command.kit.create` | Criar kits | Nível 2 |
| `minecraftserverboostmod.command.kit.edit` | Editar kits | Nível 2 |
| `minecraftserverboostmod.command.kit.delete` | Excluir kits | Nível 2 |
| `minecraftserverboostmod.command.kit.give` | Entregar kits administrativamente | Nível 2 |
| `minecraftserverboostmod.command.kit.reset` | Resetar progresso | Nível 2 |
| `minecraftserverboostmod.command.kit.reload` | Recarregar dados | Nível 2 |
| `minecraftserverboostmod.command.kit.info` | Consultar detalhes | Nível 2 |
| `minecraftserverboostmod.command.kit.claim` | Permissão pai para resgatar kits restritos | Resolução no serviço |
| `minecraftserverboostmod.command.kit.claim.<id>` | Permissão específica de um kit restrito | Resolução no serviço |

O root `/kit` não possui uma permissão própria obrigatória: cada subcomando é
protegido individualmente. Isso permite liberar `claim` sem expor ações
administrativas.

Kits públicos não consultam o node pai nem o node específico. O comando
`/kit claim` continua disponível, e o serviço aplica acesso, usos e cooldown de
acordo com a definição escolhida.

Não há wildcard nem node próprio para `/msb permission`: essa árvore é protegida
diretamente por OP nível 4. A versão atual também ainda não possui node para
`/setskin`.

Nodes específicos de kits criados após o registro inicial do loader podem ficar
pendentes no handler externo até o próximo reinício. O sistema built-in e o
FTB Ranks por consulta textual não dependem desse registro tardio.
