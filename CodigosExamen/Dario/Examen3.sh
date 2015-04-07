#!/bin/bash

function validar_archivo
{
	if [[ ! -e $archivo ]]
	then 
		echo -e "${Rojo}Archivo no valido!${NC}"
		echo -e "${Rojo}Adios!${NC}"
		exit 0
	fi
}

function validar_rutas
{
	if [[ ! -e $origen || ! -e $destino ]];
	then 
		echo -e "${Rojo}Rutas invalidas!${NC}"
		echo -e "${Rojo}Adios!${NC}"
		exit 0
	fi
}

# Programa principal
azul='\e[1;34m'
Rojo='\e[1;31m'
verde='\e[1;32m'
NC='\e[0m'
amarillo='\e[1;33m'

while true
do
	clear
	echo -e "${verde}========================================"
	echo "||            Mini terminal           ||"
	echo "========================================"
	echo  "||  1) Mostrar archivos               ||"
	echo  "||  2) Mover archivos entre carpetas  ||"
	echo  "||  3) Editar archivo                 ||"
	echo  "||  4) Salir                          ||"
	echo -e "========================================${NC}"
	echo -e "${azul}Su eleccion: \c${NC}"
	read respuesta
	
	case "$respuesta" in
	1) 	echo -e "${azul}La ruta es: \c${NC}"
		read archivo
		validar_archivo
		echo -e "${amarillo}"
		ls $archivo
		echo -e "${NC}"
		echo -e "${verde}Listo!: \c${azul}"
		;;
	2) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read origen
		echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read destino
		validar_rutas
		mv $origen $destino
		echo -e "${verde}Listo!: \c${azul}"
		;;
	3) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		echo -e "${Rojo}"
		validar_archivo
		cat $archivo
		cat >> $archivo
		echo -e "${verde}Listo!: \c${azul}"
		;;
	*) 	echo -e "${Rojo}Adios!${NC}"
		exit 0
		;;
	esac

	read enter
done
