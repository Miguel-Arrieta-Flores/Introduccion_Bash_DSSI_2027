#!/bin/bash

#Verificamos que sean 2 parametros
if [ $# -ne 2 ]; then
	echo "Error: Se debe ingresar exactamente 2 numeros"
	echo "Uso: $0 <numero1> <numero2>"
	exit 1
#Se verifica que sean numeros
elif ! [[ $1 =~ ^-?[0-9]+$ ]]; then
	echo "Error: Parametro 1 no es un numero"
        exit 1
elif ! [[ $2 =~ ^-?[0-9]+$ ]]; then
        echo "Error: Parametro 2 no es un numero"
        exit 1
fi

#Declaramos variables con los valores de los parametros
num1=$1
num2=$2

#Se realiza la suma de los numeros
suma=$((num1 + num2))

#Se realiza la resta de los numeros
diferencia=$((num1 - num2))

#Se realiza la multiplicacion de los numeros
producto=$((num1 * num2))

#Se imprime los valores
echo -e "Numero 1: $num1
Numero 2: $num2
-----------------"

#Se imprime los resultados
echo -e "Suma (${num1} + ${num2}): ${suma}
Resta (${num1} - ${num2}): ${diferencia}
Multiplicacion (${num1} * ${num2}): ${producto}\n"
