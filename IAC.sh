#! /bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando os grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuarios..."

echo "Criando usuarios 1 à 3 do grupo ADM..."
useradd user1 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_ADM
useradd user2 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_ADM
useradd user3 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_ADM

echo "Criando usuarios 4 à 6 do grupo VEN..."
useradd user4 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_VEN
useradd user5 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_VEN
useradd user6 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_VEN

echo "Criando usuarios 7 à 9 do grupo SEC..."
useradd user7 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_SEC
useradd user8 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_SEC
useradd user9 -m -s /bin/bash -p $(openssl passwd -crypt 1230)-G GRP_SEC


echo "Especificando o root como dono dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:GRP_SEC /publico

echo "Adicionando permissões de acesso aos diretórios..."

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..." 
 






















