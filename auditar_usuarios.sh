#!/bin/bash

#Declaramos variable para sacar los usuarios
ARCHIVO="/etc/passwd"

#Verificamos primero que el archivo /etc/passwd existe
if [ ! -f "$ARCHIVO" ]; then
    echo "Error: El archivo $ARCHIVO no existe."
    exit 1
fi

echo "=========================================="
echo "    REPORTE DE AUDITORÍA DE USUARIOS      "
echo "=========================================="

#Se lee el archivo línea por línea y utiizamos ':' como delimitador
while IFS=':' read -r usuario pass uid gid info home shell; do

    #Clasificamos según el UID
    if [ "$uid" -lt 1000 ]; then
        categoria="Usuario de Sistema"
    else
        categoria="Usuario Regular"
    fi

    #Comprobamos si la shell está deshabilitada
    if [ "$shell" = "/bin/false" ] || [ "$shell" = "/usr/sbin/nologin" ]; then
        estado_shell="DESHABILITADA"
    else
        estado_shell="ACTIVA"
    fi

    #Imprimimos la información del usuario
    echo "Usuario: $usuario | UID: $uid | Categoría: $categoria | Shell: $estado_shell"

done < "$ARCHIVO"
