# Guia de comandos de administração de sistema **Linux**

- Comando `ps` exibe os processos estão sendo executados no momento.

- Comando `ps -e` exibe **todos** os processos em **todo** o sistema, e se adiciona `ps -ef` mostra inclusive a hora, diretório que processo se encontra.

- Comando `kill` mata a execução de um processo, e se adicionarmos `kill -9 23`, o modificador `-9` força a paralização do processo na hora.

```
$ kill 344 # o número 344 é o PID

```

- Comando `|` é um redirecionador de saídas de programas para programas.

- Comando `grep` utilizado para filtragem de dados dada uma entrada.

- Exemplo:

```
# Exibe apenas as linhas que possuam a palavra firefox
$ ps -e | grep firefox

```
