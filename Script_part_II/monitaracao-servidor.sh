#!/bin/bash

resposta_http=$(curl --write-out %{http_code} --silent --output /dev/null http://localhost)

if [ $resposta_http -eq 200 ]
then
    echo "Tudo esta ok com servidor"
else
    echo "Houve um problema com servidor. Tentando reinicializar"
    #systemctl restart apache2 # Se caso o servidor for apache 
    python -m http.server 8080 # Servidor subindo com python
    echo "...Servidor reinicializado"

fi


#sudo crontab -e
# */2 * * * * /home/fabricio/Documentos/shellscript/Script_part_II/monitaracao-s$