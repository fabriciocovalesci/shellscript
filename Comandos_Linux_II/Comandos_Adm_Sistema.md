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

### Variáveis de ambiente e PATH

- O **diretório bin** existe para armazenar programas globais, aos quais todos os usuários têm acesso.

- Para saber onde o **bash** procura os programas e os scripts para executar. Esse lugar é o **Path**, uma **Variável de Ambiente**. Se executarmos o comando `env` conseguimos visualizar todas as variáveis de ambiente. Para visualizarmos apenas o **PATH** podemos fazer `env | grep PATH` , e na listagem da variável **PATH** encontra-se o diretório **/usr/bin** e que os diretórios são separados por **:**. Estes diretórios são onde o bash procura os programas para serem executados.

- Exemplo para adiciona um diretório no **PATH**

```

$ PATH=$PATH:/home/fabricio/workspace

```

- Isso significa que o novo **PATH** será igual a o **PATH atual (\$PATH)** adicionado a ele **(:)** o diretório **/home/fabricio/workspace**.

### Instalação de programas: apt

- O Ubuntu nos disponibiliza um sistema de gerenciamento de pacotes chamado **apt**. Para ver as versões atualizadas dos programas que estão disponíveis para instalação fazemos:

```
$ sudo apt-get update

```

- Para buscar um programa de servidor FTP podemos fazer:

```
$ apt-cache search ftp

```

- Este comando busca na lista de pacotes disponíveis, qualquer programa que se encaixe nesse termo de busca, por isso retorna uma longa lista de programas. Sejamos mais restritos na busca e procuremos um servidor específico:

```
$ apt-cache search vsftp

```

- Para instalar este programa fazemos:

```
$ sudo apt-get install vsftpd

```

- Para que possamos **remover** programas, utilizamos o comando `apt-get remove` seguido do nome do programa. Como exemplo, vamos desinstalar o servidor que instalamos.

```

$ sudo apt-get remove vsftpd


```

- Instalar e desinstalar programas de forma fácil e prática com auxilio do gerenciador de **pacotes apt**. Os comandos são:

```

$ sudo apt-get install # instala um programa dado o nome

$ sudo apt-get remove # desinstala um programa dado o nome

$ sudo apt-get update # busca uma lista das versões atualizadas dos programas

$ apt-cache search # procura os programas disponíveis para instalação


```

### Novos programas com dpkg

- Podemos instalar programas que não estão disponibilizados na central de programas do Ubuntu, ou seja, sem o uso do apt. Para isso nós baixamos um pacote desse programa em um site e depois o instalamos. O formato desse pacote é **dpkg**, que é um arquivo com a extensão **.deb**.

- Para instalar utilizando o comando dpkg fazemos:

```

$ sudo dpkg -i [nome do pacote.deb] # -i de instalar

```

- Para a desinstalação não usamos o nome do arquivo baixado, mas sim o nome do pacote do programa, que neste caso é vsftpd.

```

$ sudo dpkg -r vsftpd

```

- Duas formas de instalar e desinstalar programas no Linux:

1. **Via apt**: quando o programa já está disponibilizado na central do Sistema Operacional Linux.

2. **Via dpkg**: quando baixamos pelo navegador da internet um pacote **.deb** do programa.
