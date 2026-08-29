---
lang: pt-BR
---

# Erros comuns

## O servidor não inicia

Confirme, nesta ordem:

1. JAR corresponde ao modloader e ao Minecraft;
2. Java corresponde à linha suportada;
3. Forge/NeoForge e dependências estão nas versões corretas;
4. não existem duas cópias do mod na pasta `mods`;
5. o `latest.log` e o crash report mostram a primeira exceção relevante.

## Jogador sem OP não consegue usar o kit

Execute:

```text
/msb permission status
```

Depois verifique:

- backend ativo;
- node completo do kit;
- grant/deny específico e permissão pai;
- disponibilidade do FTB Ranks ou handler externo;
- `operatorBypass` não deve ser usado como substituto de permissões para
  jogadores comuns.

## Configurei built-in, mas o FTB Ranks continua aparecendo

Use:

```text
/msb permission backend built_in
/msb permission status
```

O primeiro comando salva o valor na configuração do loader. Se você editou o TOML
manualmente, reinicie o servidor ou respeite o ciclo de reload da configuração
do Forge/NeoForge.

## JSON corrompido

Pare o servidor e procure o backup `.corrupt-<timestamp>.bak`. Não substitua o
arquivo por `{}` sem entender seu schema. Anexe cópias sanitizadas ao relato de
bug quando precisar de análise.

## MineSkin falha

- confirme que o token existe e não contém espaços extras;
- teste uma URL HTTPS acessível publicamente;
- revise limites e disponibilidade do serviço MineSkin;
- não publique o token ao pedir suporte.

## A skin não aparece imediatamente

A alteração da propriedade de textura é propagada aos jogadores conectados,
mas o cliente pode manter estado visual. Reconecte para confirmar antes de abrir
um bug.
