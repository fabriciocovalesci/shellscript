#!/bin/bash

CAMINHO_BACKUP=/home/fabricio/Documentos/shellscript/backup_amazon 
cd $CAMINHO_BACKUP
data=$(date +%F)

if [ ! -d $data ]
then 
    mkdir $data
fi

tabelas=$(sudo mysql -u root mutillidae -e "show tables;" | grep -v Tables)

for tabela in $tabelas
do
    mysqldump -u mutillidae $tabela > $CAMINHO_BACKUP/$data/$tabela.sql
done

# CONFIGURAÇÃO PARA AMAZON
# aws s3 sync $CAMINHO_BACKUP s3://curso-shell-script # nome do bucket
# chmod +x backup-amazon.sh

# COLOCA O SCRIPT NO contrab PARA EXECUTAR AUTOMATICO NO HORARIO DETERMINADO
# sudo crontab -e
# m h   dom mon dow    command
# 14 10  * * *  /home/fabricio/Documentos/shellscript/backup_amazon