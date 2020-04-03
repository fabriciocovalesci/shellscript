# Guia de referência sobre alguns comando do Linux

- Comando `pwd` exibe o diretório que está no momento.

- Comando `echo` para imprimir mensagens e o operador `>` para modificar o destino da mensagem. Quando se utiliza `>>` está adicionando. Ex: `echo "Hi man!!" >> mensagem.txt`

- Comando `ls` para listar arquivos e diretórios, vimos as opções `-l` e `-la`, que listam além dos arquivos e diretórios ocultos, informações extras sobre cada um deles.

- Comando `clear` para limparmos o terminal ou precionar `Ctrl + l`.

- Comando `man` para consultar o manual sobre determinado comando. Ex: `man ls`

- setas para **cima** e para **baixo** para navegador no histórico de comandos do terminal.

- Comando `whoami` retorna o nome do usuário que está sendo usado.

- Comando `mkdir` cria novo diretório.

- Comando `-n` lista numeros de linhas

- Comando `head` lê apenas (por padrão 10 linhas) o cabeçalho de um arquivo

```
$ head -n 5 texto.txt # lê apenas 5 linhas a partir do cabeçalho

```

- Comando `tail` lê o rodapé de um arquivo.

```
$ tail -n 5 texto.txt # lê apenas 5 linhas a partir do rodapé

```

- Comando `less` permite navegar usando as setas **cima** e **baixo** dentro do arquivo.

```
$ less texto.txt

```

### Remover

- Comando `rmdir` remove um **diretório vazio**, `rm` remove um arquivo, e ao utilizar o `-r` remove recursivamente **vários arquivos ou diretórios**.

- Caracteres especiais: `?` só encontra os arquivos que tenham apenas **UM** caractere diferente do nome base e o `*` busca quaisquer números de caracteres.

- Exemplo:

```
$ rmdir pasta_vazia

$ rmdir -r pasta_com_muitos_arquivos

$ rm arquivo.txt

$ cat arquivo?.txt

$ cat *.txt #mostra todos arquivos com extenção txt

```

### Copiar e Mover

- Comando `mv` move, arquivos ou diretórios.

- Comando `cp` copia, arquivos ou diretórios.

- Exemplos:

```
$ cp bemvindo2.txt bemvindo.txt #copia e muda nome ao mesmo tempo

$ cp -r arquivo1 ../Documentos/arquivo2 #copia diretório e altera nome

$ mv lista.txt tarefas.txt #move e altera nome ao mesmo tempo

$ mv -r arquivo1 ../Documentos/arquivo2 #copia diretório e altera nome

```

### Comando zip

- Comando `zip`, serve para zipar arquivos ou diretórios.

```
$ zip -rq work.zip workspace/ #zipar arquivos

$ unzip -q work.zip #extrairr arquivos zipados

$ zip todosTxt.zip *.txt #zipa todos arquivo com extenção .txt

```

### Comando tar

- O comando usa as opções –cvf, que significam:

1. c – cria um novo arquivo .tar.
2. v – mostra uma descrição do progresso de compactação.(pode ser omitida também)
3. f – nome do arquivo.
4. z – representa a compressão gzip (zip)
5. x – extrai conteudo

- tar -cvzf **nome_arquivo.tar.gz** **nome_pasta_ser_compactada**

```
$ tar -czf work.tar.gz workspace/ #cria arquivo compactado

$ tar -vxzf work.tar.gz #extrai o conteudo

```
