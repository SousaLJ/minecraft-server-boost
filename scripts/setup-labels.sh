#!/usr/bin/env bash
set -euo pipefail

gh label create bug --color d73a4a --description "Comportamento incorreto reproduzível" --force
gh label create enhancement --color a2eeef --description "Novo recurso ou melhoria" --force
gh label create compatibility --color 5319e7 --description "Compatibilidade com versões, loaders ou mods" --force
gh label create needs-triage --color fbca04 --description "Aguardando análise do mantenedor" --force
gh label create needs-info --color d4c5f9 --description "Informações adicionais necessárias" --force
gh label create confirmed --color 0e8a16 --description "Problema reproduzido e confirmado" --force
gh label create duplicate --color cfd3d7 --description "Relato duplicado" --force
gh label create wontfix --color ffffff --description "Não será implementado" --force
gh label create documentation --color 0075ca --description "Documentação pública" --force
gh label create security --color b60205 --description "Acompanhamento sem detalhes sensíveis" --force
gh label create dependencies --color 0366d6 --description "Atualização de dependências" --force
gh label create automation --color 1d76db --description "GitHub Actions e automações" --force
gh label create "loader: forge" --color e67e22 --description "Forge" --force
gh label create "loader: neoforge" --color f39c12 --description "NeoForge" --force
gh label create "loader: fabric" --color dbd73d --description "Fabric" --force
gh label create "mc: 1.20.1" --color 3b82f6 --description "Minecraft 1.20.1" --force
gh label create "mc: 1.21.1" --color 2563eb --description "Minecraft 1.21.1" --force
gh label create "feature: kits" --color 8b5cf6 --description "Sistema de kits" --force
gh label create "feature: permissions" --color 7c3aed --description "Sistema de permissões" --force
gh label create "feature: skins" --color 6d28d9 --description "Sistema de skins" --force
gh label create "feature: announcements" --color 5b21b6 --description "Sistema de anúncios" --force
gh label create "status: validation" --color fbca04 --description "Implementação em validação" --force
gh label create "status: supported" --color 0e8a16 --description "Combinação suportada" --force
