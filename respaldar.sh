#!/bin/bash

#Verificamos que haya un parametro
DIR_RESPALDO="$HOME/respaldo_logs"
FECHA=$(date +%Y-%m-%d)


# Crear el directorio ~/respaldo_logs si no existe
[ ! -d "$DIR_RESPALDO" ] && mkdir -p "$DIR_RESPALDO"

#Declaramos contador de archivos
contador=0

#Buscamo los archivos con extensión .log
for archivo in *.log; do
    #Verificamos que sean archivos .log
    if [ -f "$archivo" ]; then
        #Se realiza el respaldo
        cp "$archivo" "$DIR_RESPALDO/${FECHA}_$archivo"
        contador=$((contador + 1))
    fi
done

#Imprimir cuántos archivos fueron respaldados
echo "Proceso finalizado. Total de archivos respaldado: $contador"
