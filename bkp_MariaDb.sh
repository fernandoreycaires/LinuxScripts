#!/bin/bash

echo "Instalando a ferramenta mariadb-backup"

apt install mariadb-backup -y

echo "Criando diretorio em /tmp/BKP_MariaDB"

mkdir /tmp/BKP_MariaDB

echo "Agora será executado o backup para dentro de /tmp/BKP_MariaDB"

mariabackup --backup --target-dir /tmp/BKP_MariaDB -u root

echo "================================"
echo "Backup concluido"
echo "localizado em /tmp/BKP_MariaDB"
echo "================================"