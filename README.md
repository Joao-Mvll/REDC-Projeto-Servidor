# REDC Projeto-Servidor

Projeto desenvolvido para a matéria de SBVREDC - Redes de Computadores (Bacharelado em Ciência da Computação)
do Instituto Federal de São Paulo de São João da Boa Vista

## Tecnologias Utilizadas

* Oracle Virtual Machine
* Ubuntu Desktop 24.10 LTS
* Mysql
* MyPhp

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
* nivel de seguraça **1**
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

# Configurando o servidor
