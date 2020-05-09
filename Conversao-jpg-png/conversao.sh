#!/bin/bash

# caminho absoluto passado para uns constante
CAMINHO_IMAGENS=~/Documentos/shellscript/Conversao-jpg-png/imagens-livros

#"Para cada variável imagem dentro do conjunto de parâmetros passados pelo usuário, 
# englobamos todos eles usando $@".


# Para pegar o conteúdo desses parâmetros, usamos o símbolo $.

# com o $@ pegamos todos os parâmetros que o usuário passar, independente da quantidade.

# usando loop for
for imagem in $@
do
    convert $CAMINHO_IMAGENS/$imagem.jpg $CAMINHO_IMAGENS/$imagem.png
done



