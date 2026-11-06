#!/bin/bash

#Se imprime el nombre del script
echo "Nombre del script: $0"

#Se imprime la cantidad de parametros
echo "Cantidad de parametros recibidos: $#"

#Se imprime la lista de parametros
echo "Lista de parametros: $@"

#Verificamos que se haya recibido al menos 2 parametros
if [ $# -lt 2 ]; then
	echo "Uso: $0 <origen> <destino>"
	exit 1
fi

#Verifica si el archivo existe, sino guarda el error en un archivo
ls $1 2> $2

#Imprime el codigo de salida del anterior
echo "$?"

