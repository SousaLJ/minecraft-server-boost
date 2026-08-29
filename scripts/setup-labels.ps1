$ErrorActionPreference = "Stop"

$labels = @(
    @{ Name = "bug"; Color = "d73a4a"; Description = "Comportamento incorreto reproduzível" },
    @{ Name = "enhancement"; Color = "a2eeef"; Description = "Novo recurso ou melhoria" },
    @{ Name = "compatibility"; Color = "5319e7"; Description = "Compatibilidade com versões, loaders ou mods" },
    @{ Name = "needs-triage"; Color = "fbca04"; Description = "Aguardando análise do mantenedor" },
    @{ Name = "needs-info"; Color = "d4c5f9"; Description = "Informações adicionais necessárias" },
    @{ Name = "confirmed"; Color = "0e8a16"; Description = "Problema reproduzido e confirmado" },
    @{ Name = "duplicate"; Color = "cfd3d7"; Description = "Relato duplicado" },
    @{ Name = "wontfix"; Color = "ffffff"; Description = "Não será implementado" },
    @{ Name = "documentation"; Color = "0075ca"; Description = "Documentação pública" },
    @{ Name = "security"; Color = "b60205"; Description = "Acompanhamento sem detalhes sensíveis" },
    @{ Name = "dependencies"; Color = "0366d6"; Description = "Atualização de dependências" },
    @{ Name = "automation"; Color = "1d76db"; Description = "GitHub Actions e automações" },
    @{ Name = "loader: forge"; Color = "e67e22"; Description = "Forge" },
    @{ Name = "loader: neoforge"; Color = "f39c12"; Description = "NeoForge" },
    @{ Name = "loader: fabric"; Color = "dbd73d"; Description = "Fabric" },
    @{ Name = "mc: 1.20.1"; Color = "3b82f6"; Description = "Minecraft 1.20.1" },
    @{ Name = "mc: 1.21.1"; Color = "2563eb"; Description = "Minecraft 1.21.1" },
    @{ Name = "feature: kits"; Color = "8b5cf6"; Description = "Sistema de kits" },
    @{ Name = "feature: permissions"; Color = "7c3aed"; Description = "Sistema de permissões" },
    @{ Name = "feature: skins"; Color = "6d28d9"; Description = "Sistema de skins" },
    @{ Name = "feature: announcements"; Color = "5b21b6"; Description = "Sistema de anúncios" },
    @{ Name = "status: validation"; Color = "fbca04"; Description = "Implementação em validação" },
    @{ Name = "status: supported"; Color = "0e8a16"; Description = "Combinação suportada" }
)

foreach ($label in $labels) {
    gh label create $label.Name --color $label.Color --description $label.Description --force
}
