---
lang: pt-BR
---

# FTB Ranks e handlers externos

O FTB Ranks é o provider recomendado quando o servidor precisa de grupos,
ranks, prioridades ou administração coletiva. A integração é opcional e usa a
API do FTB Ranks em runtime, sem transformar o mod em dependência obrigatória.

Instale uma versão do FTB Ranks compatível com o mesmo Minecraft e modloader do
servidor. Não use um JAR Forge no NeoForge ou vice-versa.

No modo `AUTO`, a prioridade de detecção é:

1. FTB Ranks presente e com API operacional;
2. handler ativo da PermissionAPI diferente do handler padrão do loader;
3. sistema built-in.

No modo `EXTERNAL`, a terceira etapa não existe: sem provider externo, a
permissão é negada, exceto quando `operatorBypass` autoriza o operador.

Essa seleção só é usada para kits restritos e comandos protegidos. Um kit
`public` não consulta FTB Ranks nem outro handler externo.

## Configuração do backend

Para preferir automaticamente o FTB Ranks quando ele estiver operacional:

```toml
[permissions]
backend = "AUTO"
operatorBypass = true
```

Use `EXTERNAL` quando quiser impedir qualquer fallback para `permissions.json`.
Se o FTB Ranks e outro handler externo não estiverem disponíveis, o resultado
será negação.

## Exemplo de rank

O FTB Ranks deve receber nodes completos. Um exemplo conceitual de
`ranks.snbt` para um grupo de membros é:

```text
{
  member: {
    name: "Member"
    power: 1
    condition: "always_active"
    permissions: {
      "minecraftserverboostmod.command.kits": true
      "minecraftserverboostmod.command.kit.claim.starter": true
    }
  }
}
```

A localização e campos adicionais do arquivo podem variar conforme a versão do
FTB Ranks; preserve a estrutura gerada pelo próprio mod. Reinicie ou use o
mecanismo de reload documentado pelo FTB Ranks depois de editar.

Para liberar todos os kits restritos de uma vez, conceda:

```text
minecraftserverboostmod.command.kit.claim
```

!!! warning "Node pai e exceções"
    O resolver aceita o node específico **ou** o node pai. Se um rank recebe o
    node pai como `true`, definir um kit específico como `false` no FTB Ranks
    pode não criar a exceção desejada. Quando precisar de kits diferentes por
    rank, conceda apenas os nodes específicos.

## Diagnóstico

Confira o provider efetivo:

```text
/msb permission status
```

O FTB Ranks deve receber o node completo, incluindo o mod ID. Exemplo:

```text
minecraftserverboostmod.command.kit.claim.inicial
```

Se o provider externo estiver ativo em `AUTO`, mudanças feitas com
`/msb permission grant` continuam salvas, porém não controlam o acesso até o
backend built-in voltar a ser selecionado.

Os comandos `/msb permission grant|deny|unset|list` gerenciam somente
`permissions.json`; eles não alteram ranks ou nodes do FTB Ranks.

Para um kit global, não crie um rank `everyone` apenas por causa do MSB. Use
`/kit edit <id> access public`. Continue usando ranks quando o acesso realmente
depender de cargo, progressão ou equipe.

## Handler externo do loader

O Minecraft Server Boost consulta o handler global ativo da PermissionAPI; ele
não substitui nem registra um handler global. A configuração global do handler
continua sendo responsabilidade do Forge/NeoForge e do mod que o fornece.

Nodes de kits carregados no início são registrados antes da inicialização da
PermissionAPI. Um kit criado durante a execução pode exigir reinício para ser
reconhecido por um handler que depende do registro de nodes. A consulta textual
do FTB Ranks não depende desse registro tardio.
