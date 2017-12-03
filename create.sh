#!/bin/bash

for usuarios in $(cat /root/script/usuarios.txt)

do
 getent passwd $usuarios
 if [ $? -gt 0 ];then
  echo " O usuario informado pode ser criado  $usuarios"
  adduser $usuarios
  if [ $? -eq 0];then
    echo " usuario $usuarios criado com sucesso "
  else
    echo " erro ao criar o usuario $usuarios "
  fi 
 else
  echo " o usuario ja existe $usuarios "
 fi
done
