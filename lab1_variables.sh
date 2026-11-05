#!/bin/bash

#Se declaran 2 variables
app="backup"
version=2

#Se imprime un texto con el valor de las 2 variables
echo "Procesando ${app}_v${version}.tar.gz" 

#Se muestra como se imprime el valor con comillas dobles
echo "Ruta: ${HOME}"

#Se muestra como se imprime la cadena literal con comillas simples
echo 'Ruta: ${HOME}' 

#Se guarda la salida del comando whoami en una variable
usuario_actual=$(whoami)
#Luego se muestra de que se guardo con exito
echo "Valor de usuario_actual: ${usuario_actual}"
