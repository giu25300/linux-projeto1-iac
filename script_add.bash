#!/bin/bash
su

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e adicionando aos respectivos grupos"

useradd carlos -c "Carlos" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_ADM
useradd maria -c "Maria" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_ADM
useradd joao -c "Joao" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_ADM

useradd debora -c "Debora" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_VEN
useradd sebastiana -c "Sebastiana" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_VEN
useradd roberto -c "Roberto" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_VEN

useradd josefina -c "Josefina" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_SEC
useradd amanda -c "Amanda" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_SEC
useradd rogerio -c "Rogerio" -m -s /bin/bash $(openssl passwd -crypt senha123) -g GRP_SEC

echo 'Criando Diretórios...'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Definindo grupo dos diretórios..."

chwon root:gr_adm /adm
chwon root:grp_ven /ven
chwon root:grp_sec /sec

echo "Definindo permissões dos diretórios..."

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Fim"