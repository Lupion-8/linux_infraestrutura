#!/bin/bash

echo "Criação dos diretórios"
mkdir public ven adm sec

echo "Criação dos grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criação dos usuários"
useradd -m -p $(openssl passwd -1 12345678) -G GRP_ADM Carlos
useradd -m -p $(openssl passwd -1 12345678) -G GRP_ADM Maria
useradd -m -p $(openssl passwd -1 12345678) -G GRP_ADM João

useradd -m -p $(openssl passwd -1 12345678) -G GRP_VEN Debora
useradd -m -p $(openssl passwd -1 12345678) -G GRP_VEN Sebastiana
useradd -m -p $(openssl passwd -1 12345678) -G GRP_VEN Roberto

useradd -m -p $(openssl passwd -1 12345678) -G GRP_SEC Josefina
useradd -m -p $(openssl passwd -1 12345678) -G GRP_SEC Amanda
useradd -m -p $(openssl passwd -1 12345678) -G GRP_SEC Rogerio

echo "Atribuição dos diretórios aos grupos"
chown :GRP_ADM adm
chown :GRP_VEN ven
chown :GRP_SEC sec
chown :GRP_ADM public

echo "Definição das permissões dos diretórios"
chmod 770 adm ven sec
chmod 777 public

echo "Usuários criados e configurados"
