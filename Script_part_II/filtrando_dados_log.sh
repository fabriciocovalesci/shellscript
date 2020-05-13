#!/bin/bash

cd ~/Documentos/shellscript/Script_part_II

regex="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b"

if [[ $1 =~ $regex ]]
then
    cat apache.log | grep $1
    if [ $? -ne 0 ]
    then
        echo "IP procurado não esta presente"
    fi
else
    echo "Formato não é valido"
fi

