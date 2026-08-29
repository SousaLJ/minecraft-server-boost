---
lang: pt-BR
---

# Fluxo entre repositório público e privado

O repositório público centraliza documentação, Issues e Discussions. O
repositório privado contém código, builds, CI de desenvolvimento e detalhes que
não devem ser expostos.

## Triagem recomendada

1. o usuário abre uma Issue pública estruturada;
2. o mantenedor remove ou pede remoção de dados sensíveis;
3. a Issue recebe `needs-info`, `confirmed`, `duplicate` ou `wontfix`;
4. quando houver mudança de código, crie manualmente uma tarefa no privado com a
   referência textual `public#123`;
5. não publique links do repositório privado nem nomes de branches internas;
6. ao corrigir, comente na Issue pública a versão em que a correção será lançada;
7. feche a Issue somente quando o artefato público estiver disponível.

## Releases

Use o mesmo número de versão no código privado, changelog público, CurseForge e
Modrinth. A tag técnica pode permanecer no privado. No público, uma GitHub
Release pode conter apenas notas e links oficiais de download.

## Separação de segredos

Nunca copie para o público:

- workflows de assinatura ou publicação com detalhes internos;
- configurações locais do servidor de teste;
- tokens, certificados ou chaves;
- mapas, dumps ou bancos de dados de jogadores;
- stack traces com caminhos privados sem sanitização.

O arquivo `SECRETS.md` não deve existir: segredos pertencem aos GitHub Actions
Secrets do repositório privado, não à documentação.
