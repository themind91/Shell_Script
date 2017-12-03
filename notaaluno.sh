 #!/bin/bash
dialog --msgbox " you are welcome " 0 0 
n1=$(dialog --stdout --inputbox " enter with the first value  " 0 0 )
n2=$(dialog --stdout --inputbox " enter with the second value " 0 0)

NOTAFINAL=$(echo "($n1+$n2)/2"|bc)
dialog --msgbox  $NOTAFINAL
if [ $NOTAFINAL -ge 6 ];then
 dialog --msgbox "you are aproved $NOTAFINAL" 0 0
elif [ $NOTAFINAL -lt 6 ] && [ $NOTAFINAL -ge 3 ];then
 dialog --msgbox "you need to study more kidd $NOTAFINAL" 0 0
else
 dialog --msgbox "you are reproved $NOTAFINAL" 0 0
fi
