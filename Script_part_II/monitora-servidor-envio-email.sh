#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [  $resposta_http -ne 200 ]
then
# Envia email para o administrador
mail -s "Problema no servidor" fabcovalesci@gmail.com<<del
Houve um problema com o servidor, e os usuarios estão sem acesso.
del

else
    echo "Houve um problema com servidor. Tentando reinicializar"
    #systemctl restart apache2 # Se caso o servidor for apache 
    echo "...Servidor reinicializado"
    python -m http.server 8080 # Servidor subindo com python
fi

