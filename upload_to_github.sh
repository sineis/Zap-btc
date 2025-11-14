#!/bin/bash

# ============================================================================
# COMANDOS PRONTOS PARA UPLOAD NO GITHUB
# Copie e cole estes comandos no terminal
# ============================================================================

echo "🚀 Iniciando configuração do Git..."
echo ""

# 1. Configurar Git (ajuste com seus dados)
echo "📝 Configurando Git..."
git config --global user.name "Seu Nome"
git config --global user.email "seu.email@exemplo.com"

# 2. Inicializar repositório
echo "🔧 Inicializando repositório..."
git init

# 3. Adicionar todos os arquivos
echo "📦 Adicionando arquivos..."
git add .

# 4. Ver status
echo "📊 Status dos arquivos:"
git status

# 5. Fazer commit inicial
echo "💾 Fazendo commit inicial..."
git commit -m "Initial commit: Bitcoin Puzzle Hunter v1.0.0

- Add automated bash and python scripts for Bitcoin puzzle hunting
- Add comprehensive Portuguese documentation (GUIA_COMPLETO.md)
- Add quick start guide (README.md)
- Add automatic installation script (install.sh)
- Add CUDA support for NVIDIA GPUs
- Add BitCrack and KeyHunt-Cuda integration
- Add GPU optimization for RTX 2000/3000/4000 series
- Support for puzzles #71-#78
- Add contributing guidelines
- Add MIT license
- Add changelog and git guide"

# 6. Adicionar repositório remoto
echo ""
echo "⚠️  IMPORTANTE: Antes de continuar:"
echo "   1. Acesse https://github.com/new"
echo "   2. Crie um repositório chamado 'bitcoin-puzzle-hunter'"
echo "   3. NÃO marque 'Initialize with README'"
echo ""
read -p "Pressione ENTER após criar o repositório no GitHub..."

echo ""
echo "🔗 Qual é o seu username do GitHub?"
read -p "Username: " GITHUB_USER

echo ""
echo "🔗 Conectando ao GitHub..."
git remote add origin https://github.com/$GITHUB_USER/bitcoin-puzzle-hunter.git

# 7. Verificar remote
echo "✅ Remote configurado:"
git remote -v

# 8. Fazer push
echo ""
echo "🚀 Enviando para GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ SUCESSO! Seu repositório está no GitHub!"
echo "🌐 Acesse: https://github.com/$GITHUB_USER/bitcoin-puzzle-hunter"
echo ""
echo "📝 Próximos passos:"
echo "   1. Adicione uma descrição ao repositório"
echo "   2. Adicione topics/tags: bitcoin, cuda, gpu, puzzle"
echo "   3. (Opcional) Crie uma release v1.0.0"
echo ""
