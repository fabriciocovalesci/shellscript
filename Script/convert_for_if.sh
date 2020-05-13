#!/bin/bash

# vai até diretorio
cd ~/Documentos/shellscript/Conversao-jpg-png/imagens-livros

# verifica se o diretorio existe
if [ ! -d image_png ]

# se não existe entao cria diretorio
then 
    mkdir image_png

# finaliza comando if
fi

for imagem in *.jpg
do  
    # guarda o resultado numa variavel -> "$(ls $imagem | awk -F. '{ print $1 }')"
    imgem_sem_extensao=$(ls $imagem | awk -F. '{ print $1 }')
    
    # Salva dentro de um diretorio especifico "image_png/$imgem_sem_extensao.png"
    convert $imgem_sem_extensao.jpg image_png/$imgem_sem_extensao.png
done

# um dos comandos que conseguem manipular textos é o awk!

# É necessário redirecionar a saída, para que o awk possa tratá-la. Para redirecionar o comando para a saída, 
# usamos o | (lê-se pipe). Especificamos para o awk qual será o campo delimitador e qual será o local onde faremos 
# o corte na mensagem exibida.

# Essa verificação if [ -d png ] verifica somente se o diretório existe. 
# Se o diretório não existe, ele vai ser criado. O símbolo de negação é !.
# temos que finalizar o comando if com fi: