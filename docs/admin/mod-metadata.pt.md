---
lang: pt-BR
---

# Metadados públicos do mod

Use o repositório público para website e issues, sem declarar um endereço de
código-fonte enquanto ele permanecer fechado.

Exemplo para Forge ou NeoForge:

```toml
issueTrackerURL="https://github.com/SousaLJ/minecraft-server-boost/issues"

[[mods]]
modId="minecraftserverboostmod"
displayName="Minecraft Server Boost"
displayURL="https://SousaLJ.github.io/minecraft-server-boost/"
```

Mantenha versão, licença e autores nos respectivos campos reais do `mods.toml`.
Não aponte `sourceURL` para o repositório de documentação e não invente um link
de fonte pública.

Nas páginas do CurseForge e Modrinth, utilize os mesmos URLs de documentação e
issues. Isso concentra relatos públicos sem revelar o repositório privado.

## Política editorial das plataformas

A wiki possui uma seção explicando a recuperação visual de skins oficiais em
servidores com `online-mode=false`. **Não copie essa informação para a descrição
do projeto no CurseForge ou Modrinth.** Nessas plataformas, descreva apenas
“consulta, cache e aplicação de skins” e direcione detalhes técnicos para a
wiki.

Mantenha também a situação dos loaders precisa:

- Forge 1.20.1: suportado;
- Forge 1.21.1: suportado;
- NeoForge 1.21.1: em validação até a confirmação do JAR;
- Fabric: roadmap, sem download disponível.
