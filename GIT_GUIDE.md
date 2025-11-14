# Guia de Upload para GitHub

## 📁 Estrutura do Repositório

```
bitcoin-puzzle-hunter/
├── README.md                      # Documentação principal
├── GUIA_COMPLETO.md              # Guia detalhado em português
├── LICENSE                        # Licença MIT
├── CHANGELOG.md                   # Histórico de versões
├── CONTRIBUTING.md                # Guia de contribuição
├── .gitignore                     # Arquivos ignorados
├── config.example.json            # Configuração exemplo
├── install.sh                     # Script de instalação rápida
├── bitcoin_puzzle_hunter.sh       # Script Bash principal
├── puzzle_hunter.py               # Script Python principal
└── docs/                          # (opcional) documentação adicional
```

## 🚀 Passos para Upload no GitHub

### 1. Criar Repositório no GitHub

1. Acesse https://github.com/new
2. Nome do repositório: `bitcoin-puzzle-hunter`
3. Descrição: "Automated Bitcoin puzzle wallet hunter for Ubuntu with CUDA support"
4. Público ou Privado (sua escolha)
5. **NÃO** marque "Initialize with README" (já temos um)
6. Clique em "Create repository"

### 2. Configurar Git Local

```bash
# Navegar para o diretório do projeto
cd ~/bitcoin-puzzle-hunter

# Inicializar repositório Git (se ainda não foi feito)
git init

# Configurar seu nome e email (se ainda não configurou)
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"
```

### 3. Adicionar Arquivos

```bash
# Verificar status
git status

# Adicionar todos os arquivos
git add .

# Ou adicionar arquivos específicos
git add README.md
git add bitcoin_puzzle_hunter.sh
git add puzzle_hunter.py
git add GUIA_COMPLETO.md
git add LICENSE
git add .gitignore
git add install.sh
git add CHANGELOG.md
git add CONTRIBUTING.md
git add config.example.json

# Verificar o que será commitado
git status
```

### 4. Fazer Commit

```bash
# Commit inicial
git commit -m "Initial commit: Bitcoin Puzzle Hunter v1.0.0

- Add automated bash and python scripts
- Add comprehensive Portuguese documentation
- Add CUDA support for NVIDIA GPUs
- Add BitCrack and KeyHunt-Cuda integration
- Add automatic installation script
- Support for puzzles #71-#78"
```

### 5. Conectar ao GitHub

```bash
# Adicionar repositório remoto
# Substitua SEU_USUARIO pelo seu username do GitHub
git remote add origin https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter.git

# Verificar se foi adicionado
git remote -v
```

### 6. Fazer Push

```bash
# Push para a branch main
git branch -M main
git push -u origin main

# Se pedir autenticação, use um Personal Access Token:
# GitHub → Settings → Developer settings → Personal access tokens → Generate new token
```

### 7. Verificar no GitHub

Acesse: `https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter`

## 🔄 Comandos Git Úteis

### Atualizar Repositório

```bash
# Após fazer mudanças nos arquivos
git status                          # Ver o que mudou
git add .                           # Adicionar todas as mudanças
git commit -m "Mensagem descritiva" # Commit
git push                            # Enviar para GitHub
```

### Ver Histórico

```bash
git log                    # Ver histórico completo
git log --oneline          # Ver histórico resumido
git log --graph --all      # Ver grafo de commits
```

### Criar Branch

```bash
git branch feature/nova-feature    # Criar branch
git checkout feature/nova-feature  # Mudar para branch
# ou
git checkout -b feature/nova-feature  # Criar e mudar
```

### Desfazer Mudanças

```bash
git checkout -- arquivo.txt    # Descartar mudanças em arquivo
git reset HEAD arquivo.txt     # Unstage arquivo
git reset --soft HEAD~1        # Desfazer último commit (manter mudanças)
git reset --hard HEAD~1        # Desfazer último commit (descartar mudanças)
```

## 📝 Boas Práticas de Commit

### Mensagens de Commit

Use o formato:

```
Tipo: Breve descrição (máx 50 caracteres)

Descrição detalhada do que foi alterado e por quê.
Pode ter múltiplas linhas.

- Lista de mudanças
- Outra mudança
```

### Tipos de Commit

- `feat:` Nova funcionalidade
- `fix:` Correção de bug
- `docs:` Mudanças na documentação
- `style:` Formatação, espaços, etc
- `refactor:` Refatoração de código
- `test:` Adicionar testes
- `chore:` Tarefas de manutenção

### Exemplos

```bash
git commit -m "feat: Add AMD GPU support"

git commit -m "fix: Correct CUDA memory allocation issue"

git commit -m "docs: Update installation guide for Ubuntu 24.04"

git commit -m "refactor: Improve GPU detection algorithm"
```

## 🏷️ Criar Release

### Via GitHub Interface

1. Acesse seu repositório no GitHub
2. Clique em "Releases" → "Create a new release"
3. Tag version: `v1.0.0`
4. Release title: `Bitcoin Puzzle Hunter v1.0.0`
5. Description: Copie do CHANGELOG.md
6. Clique em "Publish release"

### Via Git Tags

```bash
# Criar tag
git tag -a v1.0.0 -m "Release v1.0.0: Initial release"

# Enviar tag para GitHub
git push origin v1.0.0

# Ver todas as tags
git tag -l

# Deletar tag (se necessário)
git tag -d v1.0.0
git push origin --delete v1.0.0
```

## 🛡️ Segurança

### Arquivos Sensíveis

**NUNCA** commite:
- ❌ Chaves privadas encontradas
- ❌ Senhas ou tokens
- ❌ Arquivos de configuração com credenciais
- ❌ Arquivos .env com secrets

O `.gitignore` já está configurado para evitar isso.

### Verificar Antes de Push

```bash
# Ver exatamente o que será enviado
git diff origin/main

# Ver lista de arquivos
git diff --name-only origin/main
```

## 🔧 Troubleshooting

### Erro: Authentication Failed

```bash
# Use Personal Access Token ao invés de senha
# GitHub → Settings → Developer settings → Personal access tokens
```

### Erro: Repository Not Found

```bash
# Verificar URL do remote
git remote -v

# Corrigir URL
git remote set-url origin https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter.git
```

### Erro: Push Rejected

```bash
# Puxar mudanças primeiro
git pull origin main --rebase

# Depois push
git push origin main
```

### Arquivo Grande Demais

```bash
# GitHub tem limite de 100MB por arquivo
# Use Git LFS para arquivos grandes
git lfs install
git lfs track "*.bin"
git add .gitattributes
```

## 📚 Recursos Adicionais

- [Git Documentation](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com/)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [Semantic Versioning](https://semver.org/)

## 🎯 Checklist Final

Antes de fazer push, verifique:

- [ ] README.md atualizado
- [ ] .gitignore configurado
- [ ] Sem arquivos sensíveis
- [ ] Código testado
- [ ] Documentação atualizada
- [ ] CHANGELOG.md atualizado
- [ ] Commits bem descritos
- [ ] Branch correta

---

**Após seguir estes passos, seu repositório estará no GitHub! 🎉**
