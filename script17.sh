#!/bin/bash
echo "lista de argumentos recibidos: [ $* ]"
for archivo in $*
do
	if [[ -f $archivo ]]; then
		echo "$archivo es un archivo regular"
	elif [[ -d "$archivo" ]]; then
		echo "$archivo es un directorio"
	elif [[ -e "$archivo" ]]; then
		echo "$archivo no es un archivo ni un directorio"
	else
		echo "$archivo no existe"
	fi
done

