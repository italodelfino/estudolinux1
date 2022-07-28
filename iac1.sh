#!/bin/bash

echo 

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo 

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 

useradd italo -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd thais -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd delfino -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd isabelle -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd liz -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd preta -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd franciuda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd elias -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo 

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo 

