# Preparação inicial do repositório público

Este checklist é executado uma única vez pelo mantenedor.

## 1. Reservar o nome correto

O repositório público deve se chamar exatamente `minecraft-server-boost`.
GitHub não permite dois repositórios com o mesmo nome na mesma conta ou
organização. Se o código privado já usa esse nome, renomeie-o para algo como
`minecraft-server-boost-source-private` antes de criar o repositório público.

## 2. Substituir os placeholders

Substitua `SousaLJ` em todo o repositório pelo usuário ou organização do
GitHub:

```powershell
Get-ChildItem -Recurse -File | ForEach-Object {
    (Get-Content $_.FullName -Raw).Replace('SousaLJ', 'SousaLJ') |
        Set-Content $_.FullName -NoNewline
}
```

Revise também os links de CurseForge e Modrinth quando as páginas forem
publicadas.

## 3. Criar e enviar o repositório

```powershell
git init
git add .
git commit -m "docs: initialize public documentation and support repository"
git branch -M main
git remote add origin https://github.com/SousaLJ/minecraft-server-boost.git
git push -u origin main
```

## 4. Habilitar recursos do GitHub

Em **Settings**:

1. mantenha **Issues** habilitado;
2. habilite **Discussions**;
3. em **Pages**, selecione **GitHub Actions** como fonte;
4. em **Code security**, habilite o Dependabot e o private vulnerability reporting;
5. proteja a branch `main`, exigindo a verificação `Validate documentation`;
6. limite merges diretos a mantenedores.

O workflow publicará o site automaticamente após push em `main`. A primeira
execução também pode ser iniciada manualmente na aba **Actions**.

## 5. Criar labels

Com o [GitHub CLI](https://cli.github.com/) autenticado, execute um dos scripts:

```powershell
.\scripts\setup-labels.ps1
```

ou:

```bash
bash scripts/setup-labels.sh
```

## 6. Conectar as páginas de distribuição

No CurseForge, Modrinth e metadados do mod, configure:

- website: `https://SousaLJ.github.io/minecraft-server-boost/`;
- issues: `https://github.com/SousaLJ/minecraft-server-boost/issues`;
- source: deixe vazio enquanto o código permanecer fechado.

Consulte também [docs/admin/mod-metadata.pt.md](docs/admin/mod-metadata.pt.md).

## Manutenção dos idiomas

Cada página possui duas variantes com o mesmo caminho lógico:

```text
docs/index.pt.md
docs/index.en.md
docs/kits/commands.pt.md
docs/kits/commands.en.md
```

Use sempre o caminho-base, como `kits/commands.md`, dentro de `mkdocs.yml` e nos
links entre páginas. O plugin resolve a variante adequada durante o build.

Ao adicionar uma página:

1. crie os arquivos `.pt.md` e `.en.md`;
2. mantenha títulos, exemplos técnicos e links equivalentes;
3. traduza o título da navegação em `nav_translations` quando necessário;
4. execute `mkdocs build --strict` e confirme as saídas `/` e `/en/`;
5. não reative `navigation.instant`, pois ele conflita com o seletor contextual
   utilizado nesta configuração.

## 7. Preparar o primeiro release

1. atualize a matriz de compatibilidade;
2. preencha o changelog com o número real da versão;
3. adicione os links oficiais de CurseForge e Modrinth;
4. publique uma release no GitHub apenas com notas e links oficiais — o JAR pode
   continuar hospedado exclusivamente nas plataformas escolhidas;
5. crie uma tag correspondente no repositório privado do código.
