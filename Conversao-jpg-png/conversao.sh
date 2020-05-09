#!/bin/bash

CAMINHO_IMAGENS=~/Documentos/shellscript/Conversao-jpg-png/imagens-livros

convert $CAMINHO_IMAGENS/$1.jpg $CAMINHO_IMAGENS/$1.png
convert $CAMINHO_IMAGENS/$2.jpg $CAMINHO_IMAGENS/$2.png


