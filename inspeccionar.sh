#!/bin/bash

#Verificamos que haya un parametro
if [ $# -ne 1 ]; then
	echo "Se necesita una ruta"
	echo "Uso: $0 <ruta>"
	exit 1
fi

#Se verifca si existe 
if [ ! -e "$1" ]; then
	echo "Error: La ruta no exite"
	exit 1
fi


echo "=== Inspeccionando: $1 ==="

#Se determina su tipo
if [ -f $1 ]; then
    echo "Tipo: Es un archivo regular."
elif [ -d $1 ]; then
    echo "Tipo: Es un directorio."
else
    echo "Tipo: Es otro tipo de elemento."
fi

#Se verifica permiso de lectura
if [ -r $1 ]; then
    echo "Si hay permiso de lectura."
else
    echo "No hay permiso de lectura."
fi

#Se verifica permiso de escritura
if [ -w $1 ]; then
    echo "Si hay permiso de escritura."
else
    echo "No hay permiso de escritura."
fi
