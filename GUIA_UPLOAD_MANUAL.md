# GUIA MANUAL DE UPLOAD - PASSO A PASSO

## ✅ Checklist Antes de Começar

- [ ] Tenho conta no GitHub
- [ ] Git está instalado (`git --version`)
- [ ] Todos os arquivos do projeto estão prontos
- [ ] Revisei o conteúdo dos arquivos

---

## 📝 PASSO 1: Configurar Git (apenas primeira vez)

Abra o terminal e configure seu nome e email:

```bash
git config --global user.name "Seu Nome Completo"
git config --global user.email "seu.email@exemplo.com"
```

Verificar configuração:
```bash
git config --list
```

---

## 🌐 PASSO 2: Criar Repositório no GitHub

1. Acesse: https://github.com/new

2. Preencha:
   - **Repository name:** `bitcoin-puzzle-hunter`
   - **Description:** `Automated Bitcoin puzzle wallet hunter for Ubuntu with CUDA support`
   - **Public** ou **Private** (sua escolha)
   - ⚠️ **NÃO** marque "Add a README file"
   - ⚠️ **NÃO** marque "Add .gitignore"
   - ⚠️ **NÃO** marque "Choose a license"

3. Clique em **"Create repository"**

4. **Deixe esta página aberta** - você vai precisar da URL

---

## 💻 PASSO 3: Preparar Repositório Local

No terminal, navegue até o diretório do projeto:

```bash
cd ~/bitcoin-puzzle-hunter
```

Inicializar Git:
```bash
git init
```

Verificar arquivos:
```bash
ls -la
```

Você deve ver todos os arquivos criados.

---

## 📦 PASSO 4: Adicionar Arquivos

Adicionar todos os arquivos:
```bash
git add .
```

Verificar o que será commitado:
```bash
git status
```

Você deve ver uma lista verde com todos os arquivos.

---

## 💾 PASSO 5: Fazer Commit

Criar o commit inicial:

```bash
git commit -m "Initial commit: Bitcoin Puzzle Hunter v1.0.0"
```

Se der erro "Please tell me who you are", volte ao Passo 1.

Verificar commit:
```bash
git log
```

---

## 🔗 PASSO 6: Conectar ao GitHub

⚠️ **SUBSTITUA** `SEU_USUARIO` pelo seu username do GitHub:

```bash
git remote add origin https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter.git
```

Exemplo:
```bash
git remote add origin https://github.com/joaosilva/bitcoin-puzzle-hunter.git
```

Verificar:
```bash
git remote -v
```

---

## 🚀 PASSO 7: Enviar para GitHub

Renomear branch para main:
```bash
git branch -M main
```

Fazer push:
```bash
git push -u origin main
```

⚠️ **Autenticação:**

Se pedir senha, você precisa de um **Personal Access Token**:

1. GitHub → Settings (canto superior direito)
2. Developer settings (no final da barra lateral)
3. Personal access tokens → Tokens (classic)
4. Generate new token (classic)
5. Marque: `repo` (todos os sub-items)
6. Generate token
7. **COPIE O TOKEN** (você não verá novamente!)
8. Use este token como senha quando o git pedir

---

## ✅ PASSO 8: Verificar no GitHub

1. Acesse: `https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter`

2. Você deve ver:
   - ✅ Todos os arquivos listados
   - ✅ README.md sendo exibido na página principal
   - ✅ 11+ arquivos no repositório

---

## 🎨 PASSO 9: Melhorar Apresentação (Opcional)

### Adicionar Descrição

1. No GitHub, clique em ⚙️ (Settings) à direita
2. Em "About", clique em editar (⚙️)
3. Adicione:
   - **Description:** `Automated Bitcoin puzzle wallet hunter for Ubuntu with CUDA support`
   - **Website:** (se tiver)
   - **Topics:** `bitcoin`, `cuda`, `gpu`, `nvidia`, `puzzle`, `ubuntu`, `python`, `bash`

### Adicionar Badge ao README

Edite o README.md e adicione no topo:

```markdown
[![GitHub license](https://img.shields.io/github/license/SEU_USUARIO/bitcoin-puzzle-hunter)](https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter/blob/main/LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/SEU_USUARIO/bitcoin-puzzle-hunter)](https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter/stargazers)
```

### Criar Release

1. No GitHub, clique em "Releases" (barra lateral direita)
2. "Create a new release"
3. Tag: `v1.0.0`
4. Title: `Bitcoin Puzzle Hunter v1.0.0`
5. Description: Copie do CHANGELOG.md
6. "Publish release"

---

## 🔄 PASSO 10: Futuras Atualizações

Quando fizer mudanças:

```bash
# 1. Ver mudanças
git status

# 2. Adicionar mudanças
git add .

# 3. Commit com mensagem descritiva
git commit -m "fix: Corrige bug na detecção de GPU"

# 4. Enviar para GitHub
git push
```

---

## 🐛 Troubleshooting

### Erro: "fatal: not a git repository"
```bash
# Você não está no diretório correto
cd ~/bitcoin-puzzle-hunter
```

### Erro: "authentication failed"
```bash
# Use Personal Access Token ao invés de senha
# Veja instruções no Passo 7
```

### Erro: "rejected - non-fast-forward"
```bash
# Alguém atualizou o repo. Puxe as mudanças primeiro:
git pull origin main --rebase
git push
```

### Erro: "remote origin already exists"
```bash
# Remova e adicione novamente:
git remote remove origin
git remote add origin https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter.git
```

---

## 📞 Precisa de Ajuda?

- 📖 [Git Documentation](https://git-scm.com/doc)
- 💬 [GitHub Community](https://github.community/)
- 🎓 [GitHub Learning Lab](https://lab.github.com/)

---

## ✨ Pronto!

Seu repositório está no GitHub e pronto para ser compartilhado! 🎉

**URL do seu projeto:**
`https://github.com/SEU_USUARIO/bitcoin-puzzle-hunter`

Compartilhe com a comunidade e aceite contribuições! 🚀
