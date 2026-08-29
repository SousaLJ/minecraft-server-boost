---
lang: pt-BR
---

# Comandos de kits

## Jogadores

| Comando | Resultado |
| --- | --- |
| `/kits` | Lista os kits existentes |
| `/kit claim <id>` | Resgata um kit, respeitando a política de acesso, usos e cooldown |

## Administração

| Comando | Resultado |
| --- | --- |
| `/kit create <name> [uses] [cooldownSeconds]` | Cria um kit a partir do inventário do executor |
| `/kit info <id>` | Exibe ID, nome, usos, cooldown, itens, descrição e acesso |
| `/kit edit <id> name <nome>` | Altera apenas o nome exibido |
| `/kit edit <id> uses <valor>` | Altera o total de usos da definição |
| `/kit edit <id> cooldown <segundos>` | Altera o cooldown da definição |
| `/kit edit <id> description <texto>` | Define a descrição |
| `/kit edit <id> description clear` | Limpa a descrição |
| `/kit edit <id> items` | Substitui os itens pelo inventário do executor |
| `/kit edit <id> access public` | Libera o resgate para todos os jogadores |
| `/kit edit <id> access restricted` | Volta a exigir o node específico do kit |
| `/kit give <jogador> <id>` | Entrega o kit sem consumir progresso |
| `/kit reset <jogador> <id>` | Reseta um kit para o jogador online |
| `/kit reset <jogador> all` | Reseta todos os kits para o jogador online |
| `/kit delete <id>` | Exclui a definição do kit |
| `/kit reload` | Recarrega kits e dados dos jogadores |

Nomes com espaços precisam de aspas na criação:

```text
/kit create "Kit Inicial" 1 3600
```

`give` e `reset` exigem jogador online. Operações offline por UUID não fazem
parte desta versão.

O comando `create` sempre cria o kit como restrito. Revise a definição e use
`access public` somente quando quiser liberá-lo globalmente. Grants e denies não
são consultados enquanto o kit estiver público.

## Autocomplete

Os argumentos de kit sugerem os IDs carregados. Em `claim`, as sugestões são
filtradas para os kits que o jogador pode tentar resgatar.
