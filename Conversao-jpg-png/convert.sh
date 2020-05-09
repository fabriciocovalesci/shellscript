#!/bin/bash


cd ~/Documentos/shellscript/Conversao-jpg-png/imagens-livros

for imagem in *.jpg
do
    convert $imagem $imagem.png
done

