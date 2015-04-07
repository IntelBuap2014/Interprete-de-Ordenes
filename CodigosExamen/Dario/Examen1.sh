#!/bin/bash

function B_nombre
{
	find $ruta -name $nombre
}

function B_usuario
{
	find $ruta -user $user
}

function B_permisos
{
	find $ruta -type f -perm -$permiso   
}

function B_tamaño
{
	find $ruta -size +$min -and -size -$max
}

function B_fecha
{
	find $ruta -mtime -$dias -print
}

function validar_ruta
{
	if [[ ! -e $ruta ]]
	then 
		echo -e "${Rojo}La ruta no es valida!${NC}"
		echo -e "${Rojo}Adios!${NC}"
		exit 0
	fi
}

# Programa principal
IFS=" "
azul='\e[1;34m'
Rojo='\e[1;31m'
verde='\e[1;32m'
amarillo='\e[1;33m'
NC='\e[0m'

while true
do
	clear
	echo -e "${verde}========================================"
	echo "||       Busqueda de Archivos         ||"
	echo "========================================"
	echo -e "||  1) Tamaño                         ||"
	echo  "||  2) Nombre                         ||"
	echo  "||  3) Usuario                        ||"
	echo  "||  4) Permisos                       ||"
	echo  "||  5) Fechas                         ||"
	echo  "||  6) Salir                          ||"
	echo -e "========================================${NC}"
	echo -e "${azul}Su eleccion: \c${NC}"
	read respuesta
	

	
	case "$respuesta" in
	1) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read ruta
		validar_ruta
		echo -e "${verde}Usted decidio buscar por Tamaño"
		echo -e "Tamaño minimo: \c"
		read min
		echo -e "Tamaño maximo: \c"
		read max
		echo -e "${amarillo}"
		B_tamaño
		echo -e "${NC}"
		;;
	2) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read ruta
		validar_ruta
		echo -e "${verde}Usted decidio buscar por Nombre"
		echo -e "Nombre : \c"
		read nombre
		echo -e "${amarillo}"
		B_nombre
		echo -e "${NC}"
		;;
	3) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read ruta
		validar_ruta
		echo -e "${verde}Usted decidio buscar por Usuario"
		echo -e "Usuario : \c"
		read user
		echo -e "${amarillo}"
		B_usuario
		echo -e "${NC}"
		;;
	4) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read ruta
		validar_ruta
		echo -e "${verde}Usted decidio buscar por Permisos"
		echo -e "Permisos : \c"
		read permiso
		echo -e "${amarillo}"
		B_permisos
		echo -e "${NC}"
		;;
	5) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read ruta
		validar_ruta
		echo -e "${verde}Usted decidio buscar por Fecha"
		echo -e "Ultimos dias de modificado : \c"
		read dias
		echo -e "${amarillo}"
		B_fecha
		echo -e "${NC}"
		;;
	*) 	echo -e "${Rojo}Adios!${NC}"
		exit 0
		;;
	esac

	read enter
done
