#!/bin/bash

converte_imagem(){

cd ~/Documentos/shellscript/Conversao-jpg-png/imagens-livros
if [ ! -d png ]
then
    mkdir png
fi

for imagem in *.jpg
do
    local imagem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
    convert $imagem_sem_extensao.jpg png/$imagem_sem_extensao.png
done

}

converte_imagem 2>erros_conversao.txt
if [ $? -eq 0] # -eq siginifica IGUAL | $? pega o status 0 se deu tudo certo ou 1 erro
then
    echo "Conversao com sucesso"
else
    echo "Houve uma falha na conversao"
fi