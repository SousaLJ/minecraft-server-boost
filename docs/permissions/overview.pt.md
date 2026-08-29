---
lang: pt-BR
---

# Visão geral das permissões

Forge e NeoForge utilizam a mesma política de permissões. O adapter do loader
conecta o domínio comum ao sistema nativo correspondente.

Há três modos na seção `[permissions]` de `config.toml`:

| Modo | Comportamento |
| --- | --- |
| `AUTO` | Usa FTB Ranks ou outro handler do loader quando disponível; caso contrário usa built-in |
| `BUILT_IN` | Usa somente `permissions.json` do Minecraft Server Boost |
| `EXTERNAL` | Exige FTB Ranks ou outro handler não padrão; sem provider operacional, nega acesso |

```toml
[permissions]
backend = "AUTO"
operatorBypass = true
```

`operatorBypass` permite o fallback vanilla de OP para comandos e kits. Quando
desativado, ser operador não substitui um grant do backend. Os comandos
`/msb permission` sempre exigem operador nível 4, independentemente dessa
opção, para preservar o mecanismo administrativo de recuperação.

## Seleção do provider

Em `AUTO`, a prioridade é:

1. FTB Ranks instalado e com API operacional;
2. handler ativo da PermissionAPI diferente do handler padrão do loader;
3. sistema built-in.

Em `EXTERNAL`, a terceira etapa é removida. A ausência de provider resulta em
negação fechada. Em `BUILT_IN`, providers externos não são consultados.

O provider é resolvido durante as consultas, porque a PermissionAPI pode não
estar pronta nos primeiros eventos do ciclo do servidor. Use
`/msb permission status` para verificar o resultado efetivo.

## Quando o backend é consultado

O backend selecionado só decide o acesso de kits `permission_required`. Kits
`public` são liberados pela própria definição e não consultam built-in, FTB
Ranks ou PermissionAPI. Usos e cooldown continuam obrigatórios.

Essa separação permite oferecer um kit `starter` a todos sem criar grupos e
sem conceder uma permissão individual a cada UUID.

Para kits restritos, o resolver consulta primeiro o node específico e depois o
node pai de claim. Consulte a [lista completa de nodes](nodes.md).

## Comandos administrativos

```text
/msb permission status
/msb permission backend auto
/msb permission backend built_in
/msb permission backend external
/msb permission grant <jogador> <node>
/msb permission deny <jogador> <node>
/msb permission unset <jogador> <node>
/msb permission list <jogador>
/msb permission reload
```

`backend` salva a configuração server-side do loader. `reload` recarrega apenas
as atribuições de `permissions.json`; ele não recarrega regras do FTB Ranks.

Consulte [Todos os comandos](../commands/index.md) para a árvore completa e os
níveis padrão de acesso.
