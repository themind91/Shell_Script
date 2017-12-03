#!/bin/bash

echo -e "
 1 - Criar Usuario
 2 - Remover Usuario
"
read -p " Digite uma opcao " VAR
case $VAR in
1)
read -p " Digite um nome para o seu usuario bb " NOME
getent passwd $NOME
 if [ $? -eq 0 ];then
   echo " o usuario $NOME ja existe "
 else
   adduser $NOME
   if [ $? -eq 0 ];then
      echo  " usuario $NOME criado com sucesso "
   else
      echo "erro ao criar o usuario $NOME"
   fi
  fi
;;
2)

read -p " Digite o nome de um usuario para deletar " NOME
 getent passwd $NOME
   if [ $? -eq 0 ];then
     userdel -r $NOME
   else
     echo  " o usuario informado nao existe $NOME "
     if [ $? -eq 0 ];then
        echo  "usuario $NOME deletado com sucesso "
     else
        echo "erro ao deleter usuario $NOME"
     fi
    fi


;;
esac





