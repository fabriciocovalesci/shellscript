# Guia de referência sobre alguns comando do Linux

- Comando ```pwd```  exibe o diretório que está no momento.

- Comando ```echo``` para imprimir mensagens e o operador ```>``` para modificar o destino da mensagem. Quando se utiliza ```>>``` está adicionando. Ex: ```echo "Hi man!!" >> mensagem.txt```

- Comando ```ls``` para listar arquivos e diretórios, vimos as opções  ```-l```  e  ```-la```, que listam além dos arquivos e diretórios ocultos, informações extras sobre cada um deles.

- Comando  ```clear``` para limparmos o terminal ou precionar ```Ctrl + l```.

- Comando ```man``` para consultar o manual sobre determinado comando. Ex: ```man ls```

- setas para **cima** e para **baixo** para navegador no histórico de comandos do terminal.

- Comando ```whoami``` retorna o nome do usuário que está sendo usado.

- Comando ```mkdir``` cria novo diretório.

- Comando ```rmdir``` remove um **diretório vazio**, ```rm``` remove um arquivo, e ao utilizar o ```-r``` remove recursivamente **vários arquivos ou diretórios**. 

- Caracteres especiais:  ```?``` só encontra os arquivos que tenham apenas **UM** caractere diferente do nome base e o  ```*``` busca quaisquer números de caracteres.
  
- Exemplo:
  
 ```
$ rmdir pasta_vazia

$ rmdir -r pasta_com_muitos_arquivos

$ rm arquivo.txt

$ cat arquivo?.txt

$ cat *.txt

```

- Comando ```mv``` move, arquivos ou diretórios.

- Comando ```cp``` copia, arquivos ou diretórios.

- Exemplos: 

```
$ cp bemvindo2.txt bemvindo.txt # copia e muda nome ao mesmo tempo


```


