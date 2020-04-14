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

- Comando `top` mostra a situação dos processos, do processador e da memória, além de outras informações em uma única tela.

* Comando `killall` permite matar todos os processos de um mesmo programa.

* Exemplo:

```

# exemplo seguindo uma sequência no terminal
# 1º verifica o desempenho do computador (cpu , memória, ...)
# 2º filtra com comando ps -ef | grep top, exibir todos os top em execução
# 3º mata o processo com killall passando nome (ou pode ser o pid)

$ top

$ ps -ef | grep top

$ killall -9 top

```

- Comando `jobs` mostra os processos que estão sendo executados dentro do bash;

- Comando `fg` e `bg` jogam os processos para foreground e background, respectivamente;

- Comando `pstree` mostra todos os processos em um gráfico de árvore.

- Comando `[programa] &`: abre o [programa] diretamente em background;

### Permissões

Os arquivos no Linux podem ter permissões para `leitura (r)`, `escrita (w)` e `execução (x)`. Essas permissões são distribuídas para o dono do arquivo, ao grupo de usuários e também para outros usuários. Os `diretórios (d)` sofrem das mesmas regras.

Com o comando usuário `ls -l`, podemos verificar a listagem de arquivos com todas as informações de permissões discutidas.

- Comando `chmod` adicionar a permissão.

- `chmod -x` retira perrmissão de execução.

- `chmod +x` adiciona permissão de execução.

Assim como temos o `+x` para adicionar permissão de execução, temos também o `+r` e o `+w`. Podemos também combinar essas permissões da seguinte forma: `chmod +rwx`.

- `./` indica que o script está salvo no diretório atual.

- Também podemos executar um script através do comando `sh`

- Para buscar por arquivos e programas no sistema operacional com o comando `locate`.

- Para saber onde os programas estão instalados usamos o comando `which`.

### Gerenciando senhas de usuários

- Para mudar a senha do usuário, usamos o comando `passwd`.

- Trocar ou colocar uma senha para o **usuário root** fazemos uso do comando `sudo` da seguinte forma:

```

$ sudo passwd

```

- Podemos nos logar como **outro usuário**, para isso usamos o comando `su` seguido do nome do **usuário** com qual queremos logar:

```

$ su root

```

- Podemos descobri também com qual usuário estamos logado usando o comando `whoami`.

- E podemos sair da **sessão de um usuário** usando o comando `exit`.

### Controle de usuários

- Mas como adicionamos um usuário novo na máquina? Basta usarmos o comando `adduser` seguido do nome do **usuário**, como por exemplo:

```
$ adduser jose

```

- Comando `chmod` é seguindo de alguns operadores, que são: `o` para **others**, ou seja, outros usuários, `o -` indica uma **remoção de permissão**, o `r` e `x` indicam **permissões de leitura** e **execução**. Se quiséssemos tirar permissões do próprio usuário, seria: `u-rx` e para o grupo seria: `g-rx`.

```

$ chmod o-rx jose

```
