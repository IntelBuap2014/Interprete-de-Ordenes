#! /bin/bash
if [[ $# -ne 1 ]] ; then
	echo "Número de argumentos incorrecto"
	echo "Uso: $0 nombre_usuario"
 	exit 1
fi
azul='\033[0;34m'
NC='\033[0m' # No Color

if cat /etc/passwd | cut -d\: -f1 | grep -q $1
then
	echo -e "El usuario [$azul $1 $NC] existe en el sistema"
	else
	echo "El usuario [$azul $1 $NC] no existe en el sistema"
fi

