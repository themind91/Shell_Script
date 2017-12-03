#!/bin/bash

LITRO=$(dialog --stdout --inputbox " digite a quantidade de litros" 0 0)
KM=$(dialog --stdout --inputbox " Digite a quantidade de quilometros " 0 0)
TOTAL=$(echo "$KM/$LITRO" | bc)

dialog --msgbox " O consumo e $TOTAL " 0 0

if [ $TOTAL -ge 10 ]; then
 dialog --msgbox " Seu carro e economico " 0 0
	
elif [ $TOTAL -lt 9 ] && [ $TOTAL -ge 5 ];then

 dialog --msgbox " Vende essa bagaca " 0 0
 	
else

 dialog --msgbox " nem sei o que colocar " 0 0


fi



