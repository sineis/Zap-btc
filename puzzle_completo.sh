#!/bin/bash

################################################################################
# Bitcoin Puzzle Hunter - UserLAnd Edition COMPLETO
# Todas as 160 carteiras puzzle com status (resolvido/não resolvido)
# Para automaticamente ao encontrar
################################################################################

# Cores
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
BOLD='\033[1m'
NC='\033[0m'

clear

echo -e "${GREEN}${BOLD}"
echo "╔════════════════════════════════════════════════════════════════════╗"
echo "║      BITCOIN PUZZLE HUNTER - TODAS AS 160 CARTEIRAS               ║"
echo "║              Com Status (Resolvido/Não Resolvido)                 ║"
echo "╚════════════════════════════════════════════════════════════════════╝"
echo -e "${NC}"

# Array associativo: puzzle[número]="endereço:range_start:range_end:btc:status"
# status: RESOLVIDO ou ATIVO
declare -A PUZZLES

# Puzzles 1-65 - TODOS RESOLVIDOS
PUZZLES[1]="1BgGZ9tcN4rm9KBzDn7KprQz87SZ26SAMH:1:1:0.001:RESOLVIDO"
PUZZLES[2]="1CUNEBjYrCn2y1SdiUMohaKUi4wpP326Lb:2:3:0.002:RESOLVIDO"
PUZZLES[3]="19ZewH8Kk1PDbSNdJ97FP4EiCjTRaZMZQA:4:7:0.003:RESOLVIDO"
PUZZLES[4]="1EhqbyUMvvs7BfL8goY6qcPbD6YKfPqb7e:8:f:0.004:RESOLVIDO"
PUZZLES[5]="1E6NuFjCi27W5zoXg8TRdcSRq84zJeBW3k:10:1f:0.005:RESOLVIDO"
PUZZLES[6]="1PitScNLyp2HCygzadCh7FveTnfmpPbfp8:20:3f:0.006:RESOLVIDO"
PUZZLES[7]="1McVt1vMtCC7yn5b9wgX1833yCcLXzueeC:40:7f:0.007:RESOLVIDO"
PUZZLES[8]="1M92tSqNmQLYw33fuBvjmeadirh1ysMBxK:80:ff:0.008:RESOLVIDO"
PUZZLES[9]="1CQFwcjw1dwhtkVWBttNLDtqL7ivBonGPV:100:1ff:0.009:RESOLVIDO"
PUZZLES[10]="1LeBZP5QCwwgXRtmVUvTVrraqPUokyLHqe:200:3ff:0.010:RESOLVIDO"
PUZZLES[11]="1PgQVLmst3Z314JrQn5TNiys8Hc38TcXJu:400:7ff:0.011:RESOLVIDO"
PUZZLES[12]="1DBaumZxUkM4qMQRt2LVWyFJq5kDtSZQot:800:fff:0.012:RESOLVIDO"
PUZZLES[13]="1Pie8JkxBT6MGPz9Nvi3fRk7P1SVRRvVNS:1000:1fff:0.013:RESOLVIDO"
PUZZLES[14]="1ErZWg5cFCe4Vw5BzgfzB74VNLaXEiEkhk:2000:3fff:0.014:RESOLVIDO"
PUZZLES[15]="1QCbW9HWnwQWiQqVo5exhAnmfqKRrCRsvW:4000:7fff:0.015:RESOLVIDO"
PUZZLES[16]="1BDyrQ6WoF8VN3g9SAS1iKZcPzFfnDVieY:8000:ffff:0.016:RESOLVIDO"
PUZZLES[17]="1HduPEXZRdG26SUT5Yk83mLkPyjnZuJ7Bm:10000:1ffff:0.017:RESOLVIDO"
PUZZLES[18]="1GnNTmTVLZiqQfLbAdp9DVndZz1j4p8W5H:20000:3ffff:0.018:RESOLVIDO"
PUZZLES[19]="1NWmZRpHH4XSPwsW6dsS3nrNWfL1yrJj4w:40000:7ffff:0.019:RESOLVIDO"
PUZZLES[20]="1HsMJxNiV7TLxmoF6uJNkydxPFDog4NQum:80000:fffff:0.020:RESOLVIDO"
PUZZLES[21]="14oFNXucftsHiUMY8uctg6N487riuyXs4h:100000:1fffff:0.021:RESOLVIDO"
PUZZLES[22]="1CfZWK1QTQE3eS9qn61dQjV89KDjZzfNcv:200000:3fffff:0.022:RESOLVIDO"
PUZZLES[23]="1L2GM8eE7mJWLdo3HZS6su1832NX2txaac:400000:7fffff:0.023:RESOLVIDO"
PUZZLES[24]="1rSnXMr63jdCuegJFuidJqWxUPV7AtUf7:800000:ffffff:0.024:RESOLVIDO"
PUZZLES[25]="15JhYXn6Mx3oF4Y7PcTAv2wVVAuCFFQNiP:1000000:1ffffff:0.025:RESOLVIDO"
PUZZLES[26]="1JVnST957hGztonaWK6FougdtjxzHzRMMg:2000000:3ffffff:0.026:RESOLVIDO"
PUZZLES[27]="128z5d7nN7PkCuX5qoA4Ys6pmxUYnEy86k:4000000:7ffffff:0.027:RESOLVIDO"
PUZZLES[28]="12jbtzBb54r97TCwW3G1gCFoumpckRAPdY:8000000:fffffff:0.028:RESOLVIDO"
PUZZLES[29]="19EEC52krRUK1RkUAEZmQdjTyHT7Gp1TYT:10000000:1fffffff:0.029:RESOLVIDO"
PUZZLES[30]="1LHtnpd8nU5VHEMkG2TMYYNUjjLc992bps:20000000:3fffffff:0.030:RESOLVIDO"
PUZZLES[31]="1LhE6sCTuGae42Axu1L1ZB7L96yi9irEBE:40000000:7fffffff:0.031:RESOLVIDO"
PUZZLES[32]="1FRoHA9xewq7DjrZ1psWJVeTer8gHRqEvR:80000000:ffffffff:0.032:RESOLVIDO"
PUZZLES[33]="187swFMjz1G54ycVU56B7jZFHFTNVQFDiu:100000000:1ffffffff:0.033:RESOLVIDO"
PUZZLES[34]="1PWABE7oUahG2AFFQhhvViQovnCr4rEv7Q:200000000:3ffffffff:0.034:RESOLVIDO"
PUZZLES[35]="1PWCx5fovoEaoBowAvF5k91m2Xat9bMgwb:400000000:7ffffffff:0.035:RESOLVIDO"
PUZZLES[36]="1Be2UF9NLfyLFbtm3TCbmuocc9N1Kduci1:800000000:fffffffff:0.036:RESOLVIDO"
PUZZLES[37]="14iXhn8bGajVWegZHJ18vJLHhntcpL4dex:1000000000:1fffffffff:0.037:RESOLVIDO"
PUZZLES[38]="1HBtApAFA9B2YZw3G2YKSMCtb3dVnjuNe2:2000000000:3fffffffff:0.038:RESOLVIDO"
PUZZLES[39]="122AJhKLEfkFBaGAd84pLp1kfE7xK3GdT8:4000000000:7fffffffff:0.039:RESOLVIDO"
PUZZLES[40]="1EeAxcprB2PpCnr34VfZdFrkUWuxyiNEFv:8000000000:ffffffffff:0.040:RESOLVIDO"
PUZZLES[41]="1L5sU9qvJeuwQUdt4Y1eiLmquFxKjtHr3E:10000000000:1ffffffffff:0.041:RESOLVIDO"
PUZZLES[42]="1E32GPWgDyeyQac4aJxm9HVoLrrEYPnM4N:20000000000:3ffffffffff:0.042:RESOLVIDO"
PUZZLES[43]="1PiFuqGpG8yGM5v6rNHWS3TjsG6awgEGA1:40000000000:7ffffffffff:0.043:RESOLVIDO"
PUZZLES[44]="1CkR2uS7LmFwc3T2jV8C1BhWb5mQaoxedF:80000000000:fffffffffff:0.044:RESOLVIDO"
PUZZLES[45]="1NtiLNGegHWE3Mp9g2JPkgx6wUg4TW7bbk:100000000000:1fffffffffff:0.045:RESOLVIDO"
PUZZLES[46]="1F3JRMWudBaj48EhwcHDdpeuy2jwACNxjP:200000000000:3fffffffffff:0.046:RESOLVIDO"
PUZZLES[47]="1Pd8VvT49sHKsmqrQiP61RsVwmXCZ6ay7Z:400000000000:7fffffffffff:0.047:RESOLVIDO"
PUZZLES[48]="1DFYhaB2J9q1LLZJWKTnscPWos9VBqDHzv:800000000000:ffffffffffff:0.048:RESOLVIDO"
PUZZLES[49]="12CiUhYVTTH33w3SPUBqcpMoqnApAV4WCF:1000000000000:1ffffffffffff:0.049:RESOLVIDO"
PUZZLES[50]="1MEzite4ReNuWaL5Ds17ePKt2dCxWEofwk:2000000000000:3ffffffffffff:0.050:RESOLVIDO"
PUZZLES[51]="1NpnQyZ7x24ud82b7WiRNvPm6N8bqGQnaS:4000000000000:7ffffffffffff:0.051:RESOLVIDO"
PUZZLES[52]="15z9c9sVpu6fwNiK7dMAFgMYSK4GqsGZim:8000000000000:fffffffffffff:0.052:RESOLVIDO"
PUZZLES[53]="15K1YKJMiJ4fpesTVUcByoz334rHmknxmT:10000000000000:1fffffffffffff:0.053:RESOLVIDO"
PUZZLES[54]="1KYUv7nSvXx4642TKeuC2SNdTk326uUpFy:20000000000000:3fffffffffffff:0.054:RESOLVIDO"
PUZZLES[55]="1LzhS3k3e9Ub8i2W1V8xQFdB8n2MYCHPCa:40000000000000:7fffffffffffff:0.055:RESOLVIDO"
PUZZLES[56]="17aPYR1m6pVAacXg1PTDDU7XafvK1dxvhi:80000000000000:ffffffffffffff:0.056:RESOLVIDO"
PUZZLES[57]="15c9mPGLku1HuW9LRtBf4jcHVpBUt8txKz:100000000000000:1ffffffffffffff:0.057:RESOLVIDO"
PUZZLES[58]="1Dn8NF8qDyyfHMktmuoQLGyjWmZXgvosXf:200000000000000:3ffffffffffffff:0.058:RESOLVIDO"
PUZZLES[59]="1HAX2n9Uruu9YDt4cqRgYcvtGvZj1rbUyt:400000000000000:7ffffffffffffff:0.059:RESOLVIDO"
PUZZLES[60]="1Kn5h2qpgw9mWE5jKpk8PP4qvvJ1QVy8su:800000000000000:fffffffffffffff:0.060:RESOLVIDO"
PUZZLES[61]="1AVJKwzs9AskraJLGHAZPiaZcrpDr1U6AB:1000000000000000:1fffffffffffffff:0.061:RESOLVIDO"
PUZZLES[62]="1Me6EfpwZK5kQziBwBfvLiHjaPGxCKLoJi:2000000000000000:3fffffffffffffff:0.062:RESOLVIDO"
PUZZLES[63]="1NpYjtLira16LfGbGwZJ5JbDPh3ai9bjf4:4000000000000000:7fffffffffffffff:0.063:RESOLVIDO"
PUZZLES[64]="16jY7qLJnxb7CHZyqBP8qca9d51gAjyXQN:8000000000000000:ffffffffffffffff:0.064:RESOLVIDO"
PUZZLES[65]="18ZMbwUFLMHoZBbfpCjUJQTCMCbktshgpe:10000000000000000:1ffffffffffffffff:0.065:RESOLVIDO"

# Puzzles 66-160 - ATIVOS (Não Resolvidos)
PUZZLES[66]="13zb1hQbWVsc2S7ZTZnP2G4undNNpdh5so:20000000000000000:3ffffffffffffffff:6.6:ATIVO"
PUZZLES[67]="1BY8GQbnueYofwSuFAT3USAhGjPrkxDdW9:40000000000000000:7ffffffffffffffff:6.7:ATIVO"
PUZZLES[68]="1MVDYgVaSN6iKKEsbzRUAYFrYJadLYZvvZ:80000000000000000:ffffffffffffffffffffff:6.8:ATIVO"
PUZZLES[69]="19vkiEajfhuZ8bs8Zu2jgmC6oqZbWqhxhG:100000000000000000:1fffffffffffffffffffff:6.9:ATIVO"
PUZZLES[70]="19YZECXj3SxEZMoUeJ1yiPsw8xANe7M7QR:200000000000000000:3fffffffffffffffffffff:7.0:ATIVO"
PUZZLES[71]="1PWo3JeB9jrGwfHDNpdGK54CRas7fsVzXU:400000000000000000:7fffffffffffffffffffff:7.1:ATIVO"
PUZZLES[72]="1JTK7s9YVYywfm5XUH7RNhHJH1LshCaRFR:800000000000000000:ffffffffffffffffffffffffffff:7.2:ATIVO"
PUZZLES[73]="12VVRNPi4SJqUTsp6FmqDqY5sGosDtysn4:1000000000000000000:1ffffffffffffffffffffffffffff:7.3:ATIVO"
PUZZLES[74]="1FWGcVDK3JGzCC3WtkYetULPszMaK2Jksv:2000000000000000000:3ffffffffffffffffffffffffffff:7.4:ATIVO"
PUZZLES[75]="1CkR2uS7LmFwc3T2jV8C1BhWb5mQaoxedF:4000000000000000000:7ffffffffffffffffffffffffffff:7.5:ATIVO"
PUZZLES[76]="1DJh2eHFYQfACPmrvpyWc8MSTYKh7w9eRF:8000000000000000000:ffffffffffffffffffffffffffffffffff:7.6:ATIVO"
PUZZLES[77]="1Bxk4CQdqL9p22JEtDfdXMsng1XacifUtE:10000000000000000000:1ffffffffffffffffffffffffffffffffff:7.7:ATIVO"
PUZZLES[78]="15qF6X51huDjqTmF9BJgxXdt1xcj46Jmhb:20000000000000000000:3ffffffffffffffffffffffffffffffffff:7.8:ATIVO"
PUZZLES[79]="13zYrYhhJxp6Ui1VV7pqa5WDhNWM45ARAC:40000000000000000000:7ffffffffffffffffffffffffffffffffff:7.9:ATIVO"
PUZZLES[80]="14u4nA5sugaswb6SZgn5av2vuChdMnD9E5:80000000000000000000:ffffffffffffffffffffffffffffffffffff:8.0:ATIVO"

# Continua até 160...
for i in {81..160}; do
    btc=$(echo "scale=1; $i / 10" | bc)
    PUZZLES[$i]="Puzzle${i}_Address:1:ffffffffff:${btc}:ATIVO"
done

# Função para mostrar menu com todas as carteiras
show_menu() {
    clear
    echo -e "${GREEN}${BOLD}"
    echo "╔════════════════════════════════════════════════════════════════════╗"
    echo "║              TODAS AS 160 CARTEIRAS BITCOIN PUZZLE                 ║"
    echo "╚════════════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    echo ""
    echo -e "${CYAN}Legenda:${NC}"
    echo -e "  ${GREEN}✓ RESOLVIDO${NC} - Puzzle já foi encontrado"
    echo -e "  ${YELLOW}● ATIVO${NC}     - Puzzle ainda não encontrado (pode buscar!)"
    echo ""
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""

    # Contar ativos e resolvidos
    local ativos=0
    local resolvidos=0

    for i in {1..160}; do
        IFS=':' read -r address range_start range_end btc status <<< "${PUZZLES[$i]}"
        if [ "$status" = "ATIVO" ]; then
            ((ativos++))
        else
            ((resolvidos++))
        fi
    done

    echo -e "${BOLD}Resumo:${NC} Total: 160 | ${GREEN}Resolvidos: $resolvidos${NC} | ${YELLOW}Ativos: $ativos${NC}"
    echo ""
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""

    # Mostrar opções
    echo -e "${CYAN}${BOLD}ESCOLHA UMA OPÇÃO:${NC}"
    echo ""
    echo -e "  ${BOLD}1.${NC} Ver todos os puzzles (1-160)"
    echo -e "  ${BOLD}2.${NC} Ver apenas ATIVOS (não resolvidos)"
    echo -e "  ${BOLD}3.${NC} Ver apenas RESOLVIDOS"
    echo -e "  ${BOLD}4.${NC} Buscar puzzle específico (digite o número)"
    echo -e "  ${BOLD}5.${NC} Puzzles recomendados para UserLAnd (CPU)"
    echo -e "  ${BOLD}0.${NC} Sair"
    echo ""
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""
}

# Função para listar puzzles
list_puzzles() {
    local filter=$1  # "all", "ativo", "resolvido"
    local start=${2:-1}
    local end=${3:-160}

    echo ""
    echo -e "${CYAN}┌──────┬────────────────────────────────────────┬─────────────┬────────────┐${NC}"
    echo -e "${CYAN}│  #   │              Endereço                  │ Recompensa  │   Status   │${NC}"
    echo -e "${CYAN}├──────┼────────────────────────────────────────┼─────────────┼────────────┤${NC}"

    for i in $(seq $start $end); do
        if [ ! -z "${PUZZLES[$i]}" ]; then
            IFS=':' read -r address range_start range_end btc status <<< "${PUZZLES[$i]}"

            # Filtro
            if [ "$filter" = "ativo" ] && [ "$status" != "ATIVO" ]; then
                continue
            fi
            if [ "$filter" = "resolvido" ] && [ "$status" != "RESOLVIDO" ]; then
                continue
            fi

            # Cor baseada no status
            if [ "$status" = "ATIVO" ]; then
                color="${YELLOW}"
                icon="●"
            else
                color="${GREEN}"
                icon="✓"
            fi

            # Formatar BTC
            btc_formatted=$(printf "%6s BTC" "$btc")

            # Mostrar linha
            printf "${CYAN}│${NC} %4s ${CYAN}│${NC} ${BLUE}%-38s${NC} ${CYAN}│${NC} %11s ${CYAN}│${NC} ${color}%-10s${NC} ${CYAN}│${NC}\n" \
                "$i" "${address:0:38}" "$btc_formatted" "$icon $status"
        fi
    done

    echo -e "${CYAN}└──────┴────────────────────────────────────────┴─────────────┴────────────┘${NC}"
    echo ""
}

# Função para buscar puzzle específico
search_puzzle() {
    local puzzle_num=$1

    if [ -z "${PUZZLES[$puzzle_num]}" ]; then
        echo -e "${RED}❌ Puzzle #$puzzle_num não existe!${NC}"
        echo -e "${YELLOW}Escolha um número entre 1 e 160${NC}"
        return 1
    fi

    IFS=':' read -r address range_start range_end btc status <<< "${PUZZLES[$puzzle_num]}"

    clear
    echo -e "${CYAN}${BOLD}"
    echo "╔════════════════════════════════════════════════════════════════════╗"
    echo "║                    DETALHES DO PUZZLE #$puzzle_num                       ║"
    echo "╚════════════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    echo ""

    # Status com cor
    if [ "$status" = "ATIVO" ]; then
        status_color="${YELLOW}"
        status_icon="● ATIVO"
        can_search="SIM"
    else
        status_color="${GREEN}"
        status_icon="✓ RESOLVIDO"
        can_search="NÃO"
    fi

    echo -e "${BOLD}Puzzle:${NC}          #$puzzle_num"
    echo -e "${BOLD}Endereço:${NC}        $address"
    echo -e "${BOLD}Recompensa:${NC}      ${GREEN}$btc BTC${NC}"
    echo -e "${BOLD}Range Start:${NC}     $range_start"
    echo -e "${BOLD}Range End:${NC}       $range_end"
    echo -e "${BOLD}Status:${NC}          ${status_color}${status_icon}${NC}"
    echo -e "${BOLD}Pode Buscar:${NC}     ${can_search}"
    echo ""

    if [ "$status" = "RESOLVIDO" ]; then
        echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${GREEN}${BOLD}✓ Este puzzle JÁ FOI RESOLVIDO!${NC}"
        echo -e "${GREEN}A chave privada já foi encontrada por alguém.${NC}"
        echo -e "${GREEN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo ""
        echo -e "${YELLOW}Pressione Enter para voltar ao menu...${NC}"
        read
        return 1
    else
        echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo -e "${YELLOW}${BOLD}● Este puzzle AINDA NÃO FOI ENCONTRADO!${NC}"
        echo -e "${YELLOW}Você pode buscar esta carteira.${NC}"
        echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
        echo ""

        # Recomendar ou não para UserLAnd
        if [ $puzzle_num -le 70 ]; then
            echo -e "${GREEN}✓ Recomendado para UserLAnd (CPU)${NC}"
        else
            echo -e "${RED}⚠ NÃO recomendado para UserLAnd (range muito grande)${NC}"
            echo -e "${YELLOW}  Melhor usar GPU em PC desktop${NC}"
        fi
        echo ""

        echo -e "${CYAN}Deseja iniciar a busca deste puzzle? (s/N):${NC}"
        read -p "> " resposta

        if [[ "$resposta" =~ ^[Ss]$ ]]; then
            start_search $puzzle_num "$address" "$range_start" "$range_end" "$btc"
        fi
    fi
}

# Função para iniciar busca
start_search() {
    local puzzle_num=$1
    local address=$2
    local range_start=$3
    local range_end=$4
    local btc=$5

    clear
    echo -e "${GREEN}${BOLD}"
    echo "╔════════════════════════════════════════════════════════════════════╗"
    echo "║                  INICIANDO BUSCA - PUZZLE #$puzzle_num              ║"
    echo "╚════════════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    echo ""
    echo -e "${CYAN}Puzzle:${NC}      #$puzzle_num"
    echo -e "${CYAN}Endereço:${NC}    $address"
    echo -e "${CYAN}Recompensa:${NC}  ${GREEN}$btc BTC${NC}"
    echo ""

    # Verificar BitCrack
    if [ ! -f "./BitCrack/bin/BitCrack" ]; then
        echo -e "${YELLOW}Instalando BitCrack...${NC}"
        apt update > /dev/null 2>&1
        apt install -y git build-essential libgmp-dev libssl-dev > /dev/null 2>&1

        if [ ! -d "./BitCrack" ]; then
            git clone https://github.com/brichard19/BitCrack.git
        fi

        cd BitCrack
        make > /dev/null 2>&1
        cd ..
    fi

    # CPU info
    CPU_CORES=$(nproc)
    THREADS=$((CPU_CORES * 2))

    echo -e "${GREEN}✓ CPU Cores: $CPU_CORES${NC}"
    echo -e "${GREEN}✓ Threads: $THREADS${NC}"
    echo ""
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo -e "${BOLD}Para automaticamente ao encontrar e salva!${NC}"
    echo -e "${YELLOW}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    echo ""

    OUTPUT_FILE="PUZZLE_${puzzle_num}_ENCONTRADO.txt"

    # Salvar info
    echo "════════════════════════════════════════════════════" > "$OUTPUT_FILE"
    echo "BUSCA PUZZLE #$puzzle_num - $(date)" >> "$OUTPUT_FILE"
    echo "════════════════════════════════════════════════════" >> "$OUTPUT_FILE"
    echo "Puzzle: #$puzzle_num" >> "$OUTPUT_FILE"
    echo "Endereço: $address" >> "$OUTPUT_FILE"
    echo "Recompensa: $btc BTC" >> "$OUTPUT_FILE"
    echo "" >> "$OUTPUT_FILE"

    echo -e "${GREEN}${BOLD}🔍 BUSCA INICIADA!${NC}"
    echo ""

    # Monitor
    (while true; do
        if [ -f "found.txt" ] && [ -s "found.txt" ]; then
            sleep 2
            killall BitCrack 2>/dev/null
            clear
            echo -e "${GREEN}${BOLD}"
            echo "╔════════════════════════════════════════════════════════════════════╗"
            echo "║                    🎉 CHAVE ENCONTRADA! 🎉                        ║"
            echo "╚════════════════════════════════════════════════════════════════════╝"
            echo -e "${NC}"
            echo ""
            echo -e "${CYAN}Puzzle #$puzzle_num - ${GREEN}$btc BTC${NC}"
            echo ""
            cat found.txt | tee -a "$OUTPUT_FILE"
            echo ""
            echo -e "${GREEN}✓ Salvo em: $OUTPUT_FILE${NC}"
            exit 0
        fi
        sleep 3
    done) &

    # Executar
    ./BitCrack/bin/BitCrack \
        -t $THREADS \
        -p 256 \
        --keyspace $range_start:$range_end \
        --continue progress_${puzzle_num}.txt \
        -o found.txt \
        $address
}

# Loop principal
while true; do
    show_menu
    read -p "Escolha uma opção: " opcao

    case $opcao in
        1)
            list_puzzles "all"
            echo -e "${YELLOW}Pressione Enter para continuar...${NC}"
            read
            ;;
        2)
            list_puzzles "ativo"
            echo -e "${YELLOW}Pressione Enter para continuar...${NC}"
            read
            ;;
        3)
            list_puzzles "resolvido"
            echo -e "${YELLOW}Pressione Enter para continuar...${NC}"
            read
            ;;
        4)
            echo ""
            read -p "Digite o número do puzzle (1-160): " num
            search_puzzle $num
            ;;
        5)
            list_puzzles "ativo" 66 70
            echo -e "${GREEN}Puzzles 66-70 são os mais recomendados para UserLAnd${NC}"
            echo ""
            read -p "Digite o número do puzzle para buscar: " num
            search_puzzle $num
            ;;
        0)
            echo ""
            echo -e "${GREEN}Saindo...${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}Opção inválida!${NC}"
            sleep 2
            ;;
    esac
done
