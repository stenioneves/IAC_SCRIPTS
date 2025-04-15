#!/bin/bash


#############################################################################
#    Autor: Stenio Neves                                                    #
# Script para implatação de usuarios e grupos e pastas com seus respectivas #
# permissões                                                                #
#############################################################################

# Criações de pastas/
echo 'Criando a pasta adm'
mkdir /adm # Criar pasta ADM
echo 'Criando a pasta ven'
mkdir /ven # Criar pasta VEN
echo 'Criando a pasta sec'
mkdir /sec #Criar  pasta SEC
echo 'Criando a pasta pasta público'
mkdir /publico # Criar pasta público

#Criações de Grupos
echo ' A criar Grupo GRP_VEN'
groupadd GRP_VEN
echo ' A criar Grupo GRP_ADM'
groupadd GRP_ADM
echo ' A criar Grupo GRP_SEC'
groupadd GRP_SEC

#Usuarios 

for u in carlos maria joao debora sebastiana roberto josefina amanda rogeiro
 do
   useradd $u -m -s /bin/bash -p $(openssl passwd -6 Senha123)
 done  
#Alterando as permissões da pastas
chown root:GRP_ADM /adm
chmod 770 /adm

chown root:GRP_VEN /ven
chmod 770 /ven

chown root:GRP_SEC /sec
chmod 770 /sec

chmod 777 /publico



##Adicionando os usários ao seus grupos

#Grupo ADM

for ga in carlos maria joao 
  do
     gpasswd -a $ga GRP_ADM
  done

#Grupo Vendas

for gv in debora sebastiana roberto
  do
     gpasswd -a $gv GRP_VEN
  done

#Secretaria

for gc in josefina amanda rogeiro
  do
     gpasswd -a $gc GRP_SEC
  done







