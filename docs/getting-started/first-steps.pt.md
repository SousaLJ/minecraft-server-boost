---
lang: pt-BR
---

# Primeiros passos

## 1. Verifique as permissões

No console ou como operador nível 4:

```text
/msb permission status
```

O padrão `AUTO` escolhe um provider externo quando disponível e usa o sistema
built-in quando não há provider externo.

## 2. Crie o primeiro kit

Coloque no inventário os itens que farão parte do kit e execute:

```text
/kit create "Inicial" 1 0
```

Os argumentos representam nome, quantidade de usos e cooldown em segundos. O
ID estável é derivado do nome na criação. Consulte-o com:

```text
/kits
/kit info inicial
```

## 3. Libere o resgate

Para um kit inicial disponível a todos:

```text
/kit edit inicial access public
```

Essa opção não cria grupos e não exige uma atribuição por jogador. Usos e
cooldown continuam valendo.

Se o kit deve ser restrito, mantenha o padrão e conceda a permissão no backend
built-in:

No backend built-in, conceda a permissão do kit a um jogador:

```text
/msb permission grant Jogador minecraftserverboostmod.command.kit.claim.inicial
```

Também é possível conceder a permissão pai
`minecraftserverboostmod.command.kit.claim`, que libera todos os kits quando não
há uma decisão mais específica que a negue.

## 4. Teste sem OP

Remova temporariamente o status de operador do jogador de teste e confirme:

```text
/kit claim inicial
```

Teste acesso público e restrito, usos, cooldown, reinício do servidor e
persistência antes da configuração definitiva.
