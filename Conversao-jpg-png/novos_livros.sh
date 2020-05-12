#!/bin/bash


# EXEMPLO DE UMA REPETICAO DE CODIGO, USANDO FUNCAO PARA NAO SE REPETIR
# cd ~/Documentos/shellscript/Conversao-jpg-png/imagens-livros
# for arquivo in *
# do
#     if [ -d $arquivo ]
#     then
#         #Entra no diretorio
#         cd $arquivo
#         for conteudo in *
#         do 
#             if [ -d $conteudo ]
#             then 
#                 #Entra no diretorio e fazer a varedura

#             else
#                 #Fazer a conversao
#             fi
#         done
#     else
#         #Conversao jpg para png
#     fi
# done

converte_imagens(){
    local caminho_imagem=$1
    local imagem_sem_extensao=$(ls $caminho_imagem | awk -F. '{ print $1 }')
    convert $imagem_sem_extensao.jpg $imagem_sem_extensao.png
}

varrer_diretorio(){
    cd $1
    for arquivo in *
    do
        local caminho_arquivo=$(find ~/Documentos/shellscript/Conversao-jpg-png/imagens-livros -name $arquivo)
        if [ -d $caminho_arquivo ]
        then
            varrer_diretorio $caminho_arquivo
        else
            #Conversao jpg para png
            converte_imagens $caminho_arquivo
        fi
    done
}

varrer_diretorio ~/Documentos/shellscript/Conversao-jpg-png/imagens-livros
if [ $? -eq 0 ]
then 
    echo "Conversao com sucesso!"
else
    "Houve erro na conversa"
fi