 🚀 Projetos Cloud & DevOps

Este repositório foi criado para documentar e hospedar os meus projetos práticos de engenharia de infraestrutura, automação e computação em nuvem.

---

 🛠️ Projeto 1: Guardião do Servidor (Script Bash de Monitoramento)

 📋 Descrição
Desenvolvimento de um script em Shell Script (`monitoramento.sh`) focado na administração de sistemas Linux. O script automatiza a checagem de integridade do servidor monitorando recursos vitais de hardware.

 ⚙️ Funcionalidades
* **Coleta em Tempo Real:** Captura o uso atual de espaço em disco (`df`) e memória RAM (`free`).
* **Lógica Condicional:** Avalia as métricas com base em limites de segurança pré-definidos (ex: 80% de uso).
* **Alertas Dinâmicos:** Exibe logs informativos no terminal (`[OK]` ou `[ALERTA CRÍTICO]`) dependendo do estado do ambiente.

 🚀 Como Executar
1. Dê permissão de execução ao arquivo:
   ```bash
   chmod +x monitoramento.sh

2. para execuçao:
  ./monitoramento.sh
