# Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Semantic Versioning](https://semver.org/lang/pt-BR/).

## [1.0.0] - 2025-11-14

### Adicionado
- Script Bash completo (`bitcoin_puzzle_hunter.sh`) com menu interativo
- Script Python (`puzzle_hunter.py`) com interface colorida
- Documentação completa em português (GUIA_COMPLETO.md)
- README.md com quick start guide
- Script de instalação automática (`install.sh`)
- Suporte para BitCrack e KeyHunt-Cuda
- Detecção automática de GPU NVIDIA
- Otimização automática de parâmetros por modelo de GPU
- Lista de puzzles não resolvidos (#71-#78)
- Função de busca paralela para múltiplos puzzles
- Monitoramento de progresso em tempo real
- .gitignore configurado
- LICENSE (MIT)
- CONTRIBUTING.md
- config.example.json

### Recursos
- ✅ Instalação automática de dependências
- ✅ Compilação automática de ferramentas
- ✅ Suporte a CUDA 11.0+
- ✅ Otimização para GPUs RTX 2000, 3000, 4000
- ✅ Menu interativo (Bash e Python)
- ✅ Logging detalhado
- ✅ Save/resume de progresso
- ✅ Múltiplas estratégias de busca

### Performance
- KeyHunt-Cuda: até 3000 Mkeys/s (RTX 4090)
- BitCrack: até 2200 Mkeys/s (RTX 4090)

### Documentação
- Guia completo de instalação do CUDA
- Tutoriais passo a passo
- FAQ com 7+ perguntas
- Troubleshooting guide
- Tabelas de performance por GPU
- Dicas de segurança

### Puzzles Suportados
- Puzzle #71: 7.10 BTC (mais fácil)
- Puzzle #72: 7.20 BTC
- Puzzle #73: 7.30 BTC
- Puzzle #74: 7.40 BTC
- Puzzle #76: 7.60 BTC
- Puzzle #77: 7.70 BTC
- Puzzle #78: 7.80 BTC

## [Planejado] - Futuras Versões

### [1.1.0] - Em Planejamento
- [ ] Suporte para AMD GPU (OpenCL)
- [ ] Interface gráfica (GUI)
- [ ] Dashboard web para monitoramento
- [ ] Estatísticas avançadas
- [ ] Pool mining support
- [ ] Notificações (Telegram, Discord, Email)

### [1.2.0] - Em Planejamento
- [ ] Docker container
- [ ] Suporte para Windows
- [ ] Suporte para macOS (Metal)
- [ ] Cloud deployment scripts (AWS, GCP)
- [ ] Auto-scaling baseado em custo/benefício

### [1.3.0] - Em Planejamento
- [ ] Machine Learning para otimização de ranges
- [ ] Bloom filters para duplicatas
- [ ] Distributed computing support
- [ ] API REST para controle remoto

---

## Tipos de Mudanças

- `Adicionado` para novas funcionalidades
- `Modificado` para mudanças em funcionalidades existentes
- `Descontinuado` para funcionalidades que serão removidas
- `Removido` para funcionalidades removidas
- `Corrigido` para correção de bugs
- `Segurança` para vulnerabilidades

---

**Data de Início do Projeto:** 14 de Novembro de 2025
