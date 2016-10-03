#!/bin/bash
touch numerosRandom.txt
borrarArchivo(){
    rm numerosRandom.txt
}
VALOR=$(($RANDOM%$RANDOM/16))
VAR=0
cadena=''
salto="||"
while true;
do
if [ $VAR -lt $VALOR ]; then
     cadena=$cadena$VAR
     cadena=$cadena$salto
     VAR=$(($VAR + 1))  
else
    echo $cadena > numerosRandom.txt
    break
fi
done
char0="S"
char1="n"
while true;
do
echo "DESEA BORRAR EL ARCHIVO CON SEÑALES O CONTINUAR [S/n]"
read answer
if [ $answer = $char0 ]; then
     echo "pulsa Ctrl + c para borrar y salir "
     trap 'echo && echo "archivo Borrado" && break' 2
     while true; 
     do
     sleep 1
     done
     borrarArchivo
     break
elif [ $answer = $char1 ]; then
     break
else 
     echo "opcion Incorrecta - vuelva a ingresar [S/n] "
fi
done
