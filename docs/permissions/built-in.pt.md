---
lang: pt-BR
---

# Sistema built-in

O sistema built-in permite atribuir permissões sem instalar outro mod. As
decisões são gravadas por UUID em:

```text
<mundo>/serverconfig/ServerBoost/permissions.json
```

Ele continua propositalmente simples e individual: não há grupos, herança nem
grupo automático de membros. Também não há wildcard `*`. Para liberar um kit a
todos, configure o próprio kit como público:

```text
/kit edit inicial access public
```

As atribuições abaixo são necessárias apenas para kits restritos e comandos
protegidos. Os comandos `/msb permission` em si continuam reservados ao OP 4.

## Grant, deny e unset

```text
/msb permission grant Alex minecraftserverboostmod.command.kits
/msb permission deny Alex minecraftserverboostmod.command.kit.delete
/msb permission unset Alex minecraftserverboostmod.command.kit.delete
/msb permission list Alex
```

- `grant` permite explicitamente;
- `deny` nega explicitamente;
- `unset` remove a decisão e volta ao fallback aplicável;
- `list` mostra somente atribuições nativas, não as regras do FTB Ranks.

O comando aceita tanto o node completo quanto um caminho do próprio mod. O
serviço normaliza o valor e persiste o prefixo
`minecraftserverboostmod`. Wildcards e nodes de outros mods não fazem parte do
escopo administrativo do built-in.

Os comandos aceitam perfis offline conhecidos pelo servidor. O UUID é usado
para persistência e o nome é mantido apenas para facilitar a administração.

## Ordem de resolução para kits restritos

Com `operatorBypass=true`, um OP com o nível exigido é aceito primeiro. Para os
demais jogadores:

1. decisão específica `command.kit.claim.<id>`;
2. se estiver `UNSET`, decisão pai `command.kit.claim`;
3. se ambas estiverem `UNSET`, negação.

Assim, um `DENY` específico prevalece sobre um `GRANT` pai. Para comandos que
não são claim, somente o node exato é consultado.

## Formato de `permissions.json`

```json
{
  "schemaVersion": 1,
  "players": {
    "8667ba71-b85a-4004-af54-457a9734eed7": {
      "lastKnownName": "Alex",
      "grants": [
        "minecraftserverboostmod.command.kits",
        "minecraftserverboostmod.command.kit.claim"
      ],
      "denies": [
        "minecraftserverboostmod.command.kit.claim.vip"
      ]
    }
  }
}
```

O mesmo node não pode aparecer em `grants` e `denies`. Documento inválido falha
fechado e deve ser corrigido a partir do log ou restaurado de backup.

## Troca de backend

Em `AUTO`, as atribuições built-in permanecem armazenadas, mas não são
consultadas enquanto um provider externo estiver ativo. Ao voltar para
`BUILT_IN`, elas voltam a valer.

Uma decisão `deny` não substitui o modo público do kit, pois o backend não é
consultado nesse modo. Ao mudar o kit novamente para `restricted`, grants,
denies e fallbacks voltam a ser aplicados imediatamente.

!!! warning "Faça backup"
    Não edite `permissions.json` com o servidor em execução. Use os comandos ou
    pare o servidor antes de qualquer alteração manual.
