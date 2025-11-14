#!/bin/bash

################################################################################
# Script de Instalação Rápida - Bitcoin Puzzle Hunter
# Execute este script para configurar tudo automaticamente
################################################################################

set -e  # Parar em caso de erro

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║     Bitcoin Puzzle Hunter - Instalação Rápida             ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Verificar se está rodando no Linux
if [[ "$OSTYPE" != "linux-gnu"* ]]; then
    echo -e "${RED}[ERRO] Este script requer Ubuntu/Linux${NC}"
    exit 1
fi

# Verificar se tem permissões
if [ "$EUID" -ne 0 ]; then 
    echo -e "${YELLOW}[AVISO] Este script precisa de sudo para instalar dependências${NC}"
    echo -e "${YELLOW}        Você será solicitado a digitar sua senha${NC}"
    echo ""
fi

# Função de log
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[OK]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERRO]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[AVISO]${NC} $1"
}

# Criar diretório de trabalho
WORK_DIR="$HOME/bitcoin-puzzle-hunter"
mkdir -p "$WORK_DIR"
cd "$WORK_DIR"
log_success "Diretório de trabalho: $WORK_DIR"

# Atualizar sistema
log_info "Atualizando sistema..."
sudo apt update -qq
log_success "Sistema atualizado"

# Instalar dependências básicas
log_info "Instalando dependências básicas..."
sudo apt install -y git build-essential wget curl python3 python3-pip > /dev/null 2>&1
log_success "Dependências básicas instaladas"

# Verificar GPU NVIDIA
log_info "Verificando GPU NVIDIA..."
if command -v nvidia-smi &> /dev/null; then
    GPU_NAME=$(nvidia-smi --query-gpu=name --format=csv,noheader | head -n1)
    log_success "GPU detectada: $GPU_NAME"
    HAS_GPU=true
else
    log_warning "GPU NVIDIA não detectada"
    log_warning "Para melhor performance, instale os drivers NVIDIA"
    HAS_GPU=false

    read -p "Deseja instalar drivers NVIDIA agora? (s/N): " install_nvidia
    if [[ "$install_nvidia" =~ ^[Ss]$ ]]; then
        log_info "Instalando drivers NVIDIA..."
        sudo apt install -y nvidia-driver-535
        log_success "Drivers instalados - REINICIE o sistema antes de continuar"
        exit 0
    fi
fi

# Instalar CUDA se necessário
if [ "$HAS_GPU" = true ]; then
    if ! command -v nvcc &> /dev/null; then
        log_info "CUDA não encontrado. Instalando CUDA Toolkit..."

        # Baixar e instalar CUDA keyring
        cd /tmp
        wget -q https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.1-1_all.deb
        sudo dpkg -i cuda-keyring_1.1-1_all.deb
        sudo apt update -qq
        sudo apt install -y cuda-toolkit-12-3

        # Configurar PATH
        if ! grep -q "/usr/local/cuda/bin" ~/.bashrc; then
            echo 'export PATH=/usr/local/cuda/bin${PATH:+:${PATH}}' >> ~/.bashrc
            echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc
        fi

        log_success "CUDA instalado"
        log_warning "Execute: source ~/.bashrc"
    else
        log_success "CUDA já instalado: $(nvcc --version | grep release | awk '{print $5}')"
    fi
fi

# Instalar dependências para compilação
log_info "Instalando dependências de compilação..."
sudo apt install -y libgmp-dev libssl-dev gcc g++ make > /dev/null 2>&1
log_success "Dependências de compilação instaladas"

# Clonar BitCrack
if [ ! -d "$WORK_DIR/BitCrack" ]; then
    log_info "Clonando BitCrack..."
    git clone -q https://github.com/brichard19/BitCrack.git
    cd BitCrack
    log_info "Compilando BitCrack (isso pode demorar)..."
    make BUILD_CUDA=1 > /dev/null 2>&1
    cd ..
    log_success "BitCrack instalado"
else
    log_warning "BitCrack já existe"
fi

# Clonar KeyHunt-Cuda
if [ "$HAS_GPU" = true ] && [ ! -d "$WORK_DIR/KeyHunt-Cuda" ]; then
    log_info "Clonando KeyHunt-Cuda..."
    git clone -q https://github.com/manyunya/KeyHunt-Cuda.git
    cd KeyHunt-Cuda

    # Detectar compute capability
    if command -v nvidia-smi &> /dev/null; then
        CCAP=$(nvidia-smi --query-gpu=compute_cap --format=csv,noheader | head -n1 | tr -d '.')
        log_info "Compute Capability detectada: $CCAP"
    else
        CCAP="75"
        log_warning "Usando CCAP padrão: $CCAP"
    fi

    log_info "Compilando KeyHunt-Cuda (isso pode demorar)..."
    make gpu=1 CCAP=$CCAP all > /dev/null 2>&1
    cd ..
    log_success "KeyHunt-Cuda instalado"
else
    if [ "$HAS_GPU" = false ]; then
        log_warning "KeyHunt-Cuda requer GPU NVIDIA"
    else
        log_warning "KeyHunt-Cuda já existe"
    fi
fi

# Criar lista de endereços
log_info "Criando lista de endereços dos puzzles..."
cat > "$WORK_DIR/puzzle_addresses.txt" << 'EOF'
1PWo3JeB9jrGwfHDNpdGK54CRas7fsVzXU
1JTK7s9YVYywfm5XUH7RNhHJH1LshCaRFR
12VVRNPi4SJqUTsp6FmqDqY5sGosDtysn4
1FWGcVDK3JGzCC3WtkYetULPszMaK2Jksv
1DJh2eHFYQfACPmrvpyWc8MSTYKh7w9eRF
1Bxk4CQdqL9p22JEtDfdXMsng1XacifUtE
15qF6X51huDjqTmF9BJgxXdt1xcj46Jmhb
EOF
log_success "Lista de endereços criada"

# Tornar scripts executáveis
if [ -f "$WORK_DIR/bitcoin_puzzle_hunter.sh" ]; then
    chmod +x "$WORK_DIR/bitcoin_puzzle_hunter.sh"
    log_success "bitcoin_puzzle_hunter.sh executável"
fi

if [ -f "$WORK_DIR/puzzle_hunter.py" ]; then
    chmod +x "$WORK_DIR/puzzle_hunter.py"
    log_success "puzzle_hunter.py executável"
fi

# Resumo
echo ""
echo -e "${GREEN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║              INSTALAÇÃO CONCLUÍDA COM SUCESSO              ║${NC}"
echo -e "${GREEN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${BLUE}Diretório de trabalho:${NC} $WORK_DIR"
echo ""
echo -e "${YELLOW}PRÓXIMOS PASSOS:${NC}"
echo ""
echo "1. Execute o script Python:"
echo -e "   ${GREEN}cd $WORK_DIR${NC}"
echo -e "   ${GREEN}python3 puzzle_hunter.py${NC}"
echo ""
echo "2. Ou execute o script Bash:"
echo -e "   ${GREEN}cd $WORK_DIR${NC}"
echo -e "   ${GREEN}./bitcoin_puzzle_hunter.sh${NC}"
echo ""
echo "3. Consulte a documentação:"
echo -e "   ${GREEN}cat GUIA_COMPLETO.md${NC}"
echo ""

if [ "$HAS_GPU" = true ]; then
    echo -e "${GREEN}✅ GPU detectada e configurada${NC}"
    echo -e "${GREEN}✅ Você está pronto para começar!${NC}"
else
    echo -e "${YELLOW}⚠️  GPU NVIDIA não detectada${NC}"
    echo -e "${YELLOW}   Instale drivers NVIDIA para melhor performance${NC}"
fi

echo ""
echo -e "${BLUE}Boa sorte na busca dos puzzles! 🎯💰${NC}"
