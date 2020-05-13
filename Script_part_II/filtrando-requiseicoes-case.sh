#!/bin/bash

cd ~/Documentos/shellscript/Script_part_II

if [ -z $1 ]
then
    while [ -z $requisicao ]
    do
        read -p "Voce esqueceu de colocar o parametro (GET, POST, PUT, DELETE): " requisicao
        letra_maiuscula=$(echo $requisicao | awk '{ print toupper($1) }') 
    done
else
    letra_maiuscula=$(echo $1 | awk '{ print toupper($1) }') 
fi

case $letra_maiuscula in
        GET)
        cat apache.log | grep GET
        ;;
        POST)
        cat apache.log | grep POST
        ;;
        PUT)
        cat apache.log | grep PUT
        ;;
        DELETE)
        cat apache.log | grep DELETE
        ;;
        *)
        echo "Parametro invalido"
        ;;
esac
