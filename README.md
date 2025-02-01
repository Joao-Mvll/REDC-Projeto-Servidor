# REDC Projeto-Servidor

Projeto desenvolvido para a matéria de SBVREDC - Redes de Computadores (Bacharelado em Ciência da Computação)
do Instituto Federal de São Paulo de São João da Boa Vista

## Tecnologias Utilizadas

* Oracle Virtual Machine
* Ubuntu Desktop 24.10 LTS
* Mysql
* MyPhp
* Apache2
* PHP 8.3.6

## Funcionalidades

* Servidor de Rede acessível para o campus
* Suporte para aplicações em java com acesso a um banco de dados

## Objetivo

* Aprender a utilização de novas linguagens
* Aprendizado de como criar um servidor

# Configurando a maquina virtual

1. Fazer download da maquina virtual [Oracle VirtualBox](https://www.virtualbox.org/).
2. Fazer download do sistema operacional utilizado [Ubuntu Desktop 24.10 LTS](https://ubuntu.com/download/desktop).
3. Instalar o sistema operacional na maquina virtual
![Ubuntu0](https://github.com/user-attachments/assets/a80568b4-9ce5-4d56-8334-39b02002ac9e)
4. Selecionar o ISO do sistema operacional
![Ubuntu1](https://github.com/user-attachments/assets/76895aea-a883-4b73-9e79-b532d5b39a66)
5. Alterar tipo de rede nas configurações do sistema para ( Placa em modo Bridge )
![Ubuntu4](https://github.com/user-attachments/assets/0fbb192d-b9b5-4114-95a4-8697c6d2bf5a)
6. Após instalar no VirtualBox abra o sistema e instale novamente o Ubuntu seguindo os passos de instalação
![Ubuntu3](https://github.com/user-attachments/assets/1fb0e82a-20d5-4fed-b473-c0f4cbc4c70b)
7. Atualize os pacotes do Ubuntu através do console
```bash
sudo apt-get update
```
8. Ver ip da maquina virtual
```bash
ifconfig
```
![Ubuntu5](https://github.com/user-attachments/assets/e0270a79-f114-4317-927d-c485ebbaac16)




# Instalando dependencias e configurando

* Instalando as dependencias necessárias para o funcionamento do servidor utilizando o console do Ubuntu

## Openssh-server

### Instalando
```bash
sudo apt-get update
```
### Configurando

## Java (JDK)

```bash
sudo apt install default-jre
```

## Banco de Dados (Mysql)

```bash
sudo apt-get install mysql-server
```

* Instalando de modo seguro
```bash
sudo mysql_secure_installation
```
* nivel de segurança **1**
* **y**
* **n**
* **y**
* **y**

## Apache Tomcat (Servidor de Aplicação Java)

### Instalando
```bash
sudo apt install tomcat10 tomcat10-admin
```
### Configurando

```bash
sudo nano /etc/apache2/apache2.conf
```
* Inserir linha de código no bloco de notas com o ip da maquina **ServerName (ip da maquina virtual)**
![Ubuntu6](https://github.com/user-attachments/assets/514e4324-44c5-4169-aad5-dab3924bc14b)

## Php

### Instalando
```bash
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
```

### Configurando

```bash
sudo nano /etc/apache2/mods-enabled/dir.conf
```
* Inverter ordem
![Ubuntu7](https://github.com/user-attachments/assets/1383fa62-5481-44f0-af84-b8eea8121ff9)


## PhpMyAdmin

### Instalando
```bash
sudo apt-get install phpmyadmin apache2-utils
```
![Ubuntu8](https://github.com/user-attachments/assets/1c9fa47f-1257-4356-bec5-866e195f902c)
![Ubuntu9](https://github.com/user-attachments/assets/7829d661-9d06-4d62-af03-479a0b2b7aad)

### Configurando
```bash
sudo nano /etc/apache2/apache2.conf
```
* Inserir linha **Include /etc/phpmyadmin/apache.conf**
![Ubuntu10](https://github.com/user-attachments/assets/2612986c-c502-4a5d-aa4f-b0e123f4dd99)

* Atualize o servidor
```bash
sudo systemctl restart apache2
```


## Firewall
* Habilitar o Firewall na maquina virtual
```bash
sudo ufw enable
```
* Listar aplicativos para o Firewall
  
```bash
sudo ufw app list
```

* Habilitar as aplicações para o firewall

```bash
sudo ufw allow (nome da aplicação)
```
```bash
sudo ufw allow in "Apache Full"
```

## Moodle

### Pré requisitos:

* Linux Ubuntu Server 22.04.3 LTS (https://ubuntu.com/download/server)
* Oracle Virtual BOX 7.0 (https://www.virtualbox.org/wiki/Downloads)
* Putty 0,79 (https://www.putty.org/)

### INSTALAÇÃO DO SOFTWARE

* Instalação de pacotes para apache, mysql e php (faça linha por linha em sequencia):
```bash
sudo apt install apache2 mysql-client mysql-server php libapache2-mod-php graphviz aspell
```
```bash
sudo apt install apache2 ghostscript php-pspell php-curl php-gd php-intl php-mysql php-xml
```
```bash
sudo apt install apache2 php-xmlrpc php-ldap php-zip php-soap php-zip php-mysqli
```
```bash
sudo apt install apache2 php-mbstring
```


* Quando perguntado, responda sim:
  Deseja continuar? [S/n] (Enter)

### WEB SERVER (APACHE2) SETUP

* Altere the php.ini file:
```bash
sudo nano /etc/php/8.1/apache2/php.ini
```
- Remova o comentário (ponto e vírgula ;) da linha: max_input_vars
- Incremente o tamanho para max_input_vars to igual ou acima de 5000
- Localize upload_max_filesize e mude o valor para = 200M
- Remova o comentário (ponto e vírgula ;) da linha: extension=curl
- Remova o comentário (ponto e vírgula ;) da linha: extension=gd
- Remova o comentário (ponto e vírgula ;) da linha: extension=intl
- Remova o comentário (ponto e vírgula ;) da linha: extension=mbstring
- Remova o comentário (ponto e vírgula ;) da linha: extension=mysqli

* pode existir algumas linhas com “extension=curl”, descomente somente a que estiver próxima ao grupo de
várias extensions. Exemplo, junto com gd,intl,mbstring e mysqli que você deverá reomover “;”.

* Reinicialize o servidor Web:
```bash
sudo service apache2 restart
```

* Cheque o funcionamento do web server:
* Carregue o Firefox local com http://localhost ou remotamente com o endereço ip do seu servidor
//http://seu_ip_servidor. Exemplo, http://192.168.15.201 .

* Nota: Se estiver funcional seu servidor Apache e php configurado, deverá aparecer uma tela como essa, confirmando funcionamento.


### DOWNLOAD MOODLE

* Download da última versão Moodle deste tutorial (Linux):
wget https://download.moodle.org/download.php/direct/stable403/moodle-4.3.tgz

* Descomprima arquivo, já enviando para diretório de instalação Moodle com:
tar xvzf moodle-4.3.tgz --directory /var/www/html/

### MYSQL CONFIGURAÇÃO

* Inicialize mysql:
```bash
sudo service mysql start
```

* Execute root mysql:
```bash
sudo mysql -u root -p
```
Enter password (‘senha123’)

* Crie tabela base do moodle:
```bash
CREATE DATABASE moodle DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

* Crie usuário base do Moodle:
```bash
create user 'moodleuser'@'localhost' IDENTIFIED BY 'mateus';
```

* Assegure permissões no banco de dados:
```bash
GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,CREATE TEMPORARY TABLES,DROP,INDEX,ALTER ON moodle.* TO 'moodleuser'@'localhost';
```

Saia do mysql:
```bash
quit;
```

### WEB SERVER PERMISSÕES

* Dê permissão ao web server:
```bash
sudo chown -R www-data /var/www
```
```bash
sudo chmod -R 755 /var/www
```

* Crie diretório para base de dados do Moodle:
```bash
sudo mkdir /var/moodledata
```

* Assegure permissões aos diretórios do Moodle:
```bash
sudo chown -R www-data /var/moodledata
```
```bash
sudo chmod -R 777 /var/moodledata
```
```bash
sudo chmod -R 0755 /var/www/html/moodle
```

* Reinicialize o web server:
```bash
sudo service apache2 restart
```

### MOODLE INSTALAÇÃO

1. Firefox, vá até: http://localhost/moodle ou remotamente com o endereço ip do seu servidor
//http://seu_ip_servidor/moodle. Exemplo, http://192.168.15.201/moodle

2. Language: pt_br (NEXT ou PRÓXIMO)

3. Confirme Diretórios:
Endereço web server = http://localhost/moodle ,ou como o exemplo,
http://192.168.15.201/moodle
Moodle diretorio = /var/www/html/moodle
Banco de dados = /var/moodledata
(PRÓXIMO)

4. Escolha driver de banco de dados: Tipo: Improved MySQL (native/mysqli)
(PRÓXIMO)

5. Configuração do banco de dados:
host: localhost
database name: moodle
database user: moodleuser
database password: andre
(PRÓXIMO)

6. Notas de direitos autorais: Leia
(CONTINUAR)

7. Verificação do Servidor: (Tudo deve estar verde ‘ok’ - Você pode receber um aviso sobre HTTPS que é
esperado para isso por ser máquina local)
(CONTINUAR)

● O sistema será então instalado – isso pode levar alguns minutos, seja paciente. Você saberá quando terminar,
pois será solicitado: ‘CONTINUAR’.

8. Configure sua conta de administrador principal.
EXEMPLO:
Identificação de usuário: admin
Escolha método de autenticação: Contas Manuais
Nova senha: Senha123
Nome: Mateus
Sobrenome: Silva
Endereço de Email: mateus@moodle.org
Visibilidade de e-mail: oculto
*preencha com seus dados os restante dos campos
** mude usuários, email´s e senhas, para seu gosto
(ATUALIZAR PERFIL)

9. Instalação – Configurações da página principal.
EXEMPLO:
Nome completo do site: MOODLE 4.3 SERVER – Mateus Silva
Nome Breve do site: MOODLE SERVER
Descrição da página principal: Deixe em branco.
Parametrização de local: São João da Boa Vista/São Paulo
Gerenciar autenticação: Desabilitar
Conta para suporte técnico: mateus@moodle.org
Configuração de saída de e-mail: Deixe em branco
(SALVAR MUDANÇAS)
Concluído - A página do painel é carregada para o usuário administrador:
