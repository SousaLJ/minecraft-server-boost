---
lang: pt-BR
---

# Configuração e dados dos kits

## `kits.json`

Contém as definições dos kits. O arquivo é um documento versionado e deve ser
gerenciado preferencialmente pelos comandos.

Exemplo conceitual:

```json
{
  "configVersion": 1,
  "kits": [
    {
      "id": "inicial",
      "name": "Kit Inicial",
      "uses": 1,
      "cooldownSeconds": 3600,
      "accessMode": "public",
      "items": [],
      "description": "Recursos para começar"
    }
  ]
}
```

O exemplo omite o conteúdo real dos itens. Não crie itens manualmente: NBT
inválido na linha 1.20.1 ou data components inválidos na linha 1.21.1 podem
impedir o carregamento da definição.

Valores aceitos para `accessMode`:

- `public`: qualquer jogador pode tentar resgatar;
- `permission_required`: exige o node específico do kit.

Se a propriedade estiver ausente ou nula, o mod usa
`permission_required`. Essa compatibilidade mantém kits legados restritos e não
exige aumentar `configVersion` nesta migração aditiva.

## `player_data.json`

Armazena o progresso por UUID, incluindo usos e próximo resgate. Nome de jogador
é apenas informativo; a identidade persistida é o UUID.

## Backup e edição manual

1. pare o servidor;
2. copie os arquivos para fora da pasta do mundo;
3. valide o JSON após a alteração;
4. preserve `configVersion` e os IDs;
5. inicie e revise o log.

Não publique esses arquivos sem revisar UUIDs e nomes de jogadores.
