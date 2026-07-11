#!/bin/bash

# ==========================================
# CONFIGURAÇÕES - DEFINA OS LIMITES (EM %)
# ==========================================
LIMITE_DISCO=80
LIMITE_MEMORIA=85

echo "--- Iniciando Verificação de Rotina ---"

# ==========================================
# 1. VALIDAÇÃO DO ESPAÇO EM DISCO
# ==========================================
# Este comando pega a porcentagem de uso do disco principal (/) e extrai apenas o número
USO_DISCO=$(df / | grep / | awk '{print $5}' | sed 's/%//')

echo "Uso atual do Disco: ${USO_DISCO}%"

if [ "$USO_DISCO" -gt "$LIMITE_DISCO" ]; then
    echo "[ALERTA CRÍTICO] O uso do disco ultrapassou o limite de ${LIMITE_DISCO}%!"
else
    echo "[OK] Espaço em disco dentro do limite seguro."
fi

# ==========================================
# 2. VALIDAÇÃO DA MEMÓRIA RAM
# ==========================================
# Este comando calcula a porcentagem de memória RAM sendo usada no momento
USO_MEMORIA=$(free | grep Mem | awk '{print int($3/$2 * 100)}')

echo "Uso atual da Memória RAM: ${USO_MEMORIA}%"

if [ "$USO_MEMORIA" -gt "$LIMITE_MEMORIA" ]; then
    echo "[ALERTA CRÍTICO] O uso de memória RAM ultrapassou o limite de ${LIMITE_MEMORIA}%!"
else
    echo "[OK] Memória RAM dentro do limite seguro."
fi

echo "--- Verificação Finalizada ---"