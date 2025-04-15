#!/bin/bash


#############################################################################
#    Autor: Stenio Neves                                                    #
# Script para implatação de usuarios e grupos e pastas com seus respectivas #
# permissões                                                                #
#############################################################################

# Criações de pastas/
echo 'Criando a pasta adm'
mkdir /adm # Criar pasta ADM
echo 'Criando a pasta vend'
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

##Adicionando os usários ao seus grupos 

#







