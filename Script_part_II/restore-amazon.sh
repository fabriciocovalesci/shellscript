#!/bin/bash

#bash restore_amazon.sh produtos -> exemplo de execução buscando tabela produtos

CAMINHO_RESTORE=/home/fabricio/Documentos/shellscript/restore_amazon

# busca dados na amazon e guada num diretorio local
aws s3 sync s3://curso-shel-script/$(date +%F) $CAMINHO_RESTORE

cd $CAMINHO_RESTORE 
if [ -f $1.sql ]
then 
    mysql -u root multillidae < $1.sql
    if [ $? -eq 0 ]
    then
        echo "Restore realizado com sucesso"
    fi
else
    echo "Arquivo procurado não existe no diretorio"
fi
