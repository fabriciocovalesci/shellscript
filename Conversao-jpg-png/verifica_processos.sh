#!/bin/bash

processos=$(ps -e -o pid --sort -size | head -n 11)
for pid in $processos
do
    nome_processo= $(ps -p $pid -o comm=)
    echo $(date +%F,%H:%M:%S) >> $nome_processo
done