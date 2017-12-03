#!/bin/bash

for i in $(seq 1 11)
do
ping -c1 192.168.200.$i > /dev/null

if [ $? -eq 0 ]; then
 echo " funfou maquina 192.168.200.$i "
else
 echo " nao rolou "
fi 
done
