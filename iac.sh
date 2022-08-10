#!/bin/bash

echo "Deletando configuracao anteriorres..."


echo "Criando diretorio..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios e adicionando ao grupo GRP_ADM"
useradd carlos -m -c "carlos" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_ADM
useradd maria -m -c "maria" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_ADM
useradd joao -m -c "joao" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_ADM 

echo "Usuario entrar com a senha nova..."
passwd -e carlos
passwd -e maria
passwd -e joao

echo "Criando usuarios e adicionando ao grupo GRP_VEN..."
useradd debora -m -c "debora" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_VEN
useradd sebastiao -m -c "sebastiao" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_VEN
useradd roberto -m -c "roberto" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_VEN 

echo "Usuario entrar com a senha nova..."
passwd -e debora
passwd -e sebastiao
passwd -e roberto

echo "Criando usuarios e adicionando ao grupo GRP_SEC..."
useradd josefina -m -c "josefina" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_SEC
useradd amanda -m -c "amanda" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_SEC
useradd rogerio -m -c "rogerio" -s /bin/bash -p $(openssl passwd -crypt senha1) -G GRP_SEC 

echo "Usuario entrar com a senha nova..."
passwd -e josefina
passwd -e amanda
passwd -e rogerio


echo "Especificando permisões dos grupos de diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico


echo "Autoridade de acesso aos grupos"
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim..."
