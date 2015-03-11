#!/bin/bash

function get_uid
{
	grep ^$1 /etc/passwd | cut -d':' -f3
}
# --------------------------------
# Definición de variables globales
# --------------------------------
uid=""
# UID de un usuario
# -------------------
# Programa principal
# -------------------
# La función muestra un UID o vacio
# get_uid $1
uid=$(get_uid $1)
if [[ $uid != "" ]]
then
	echo "El usuario $1 tiene por uid: $uid"
else
	echo "El usuario $1 no existe"
fi
