#!/bin/bash

while true ; do 
 echo -e "
 1 - Criar usuario
 2 - Remover usuario
 3 - 0 Sair
 "

 read -p " Digite uma opcao  " VAR

 case $VAR in
 1)
  echo " criando um usuario  "
 ;;
 2)
  echo " removendo um usuario "
 ;;
 *)
  echo " Digite uma opcao valida "
 ;;
esac
done


