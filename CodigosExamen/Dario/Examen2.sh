#!/bin/bash

function T_bz
{
	tar -c $archivo | bzip2 > $archivo.tar.bz2 1> /dev/null 2> /dev/null
}

function T_gz
{
	tar czvf $archivo.tar.gz $archivo > /dev/null  2> /dev/null
}

function C_zip
{
	 	zip $archivo.zip $archivo > /dev/null  2> /dev/null
}

function rar
{
	rar -a $archivo.rar $archivo > /dev/null  2> /dev/null
}

function D_bz
{
	 tar jvxf $archivo.tar.bz2 1> /dev/null 2> /dev/null
}

function D_gz
{
	tar xzvf $archivo.tar.gz > /dev/null  2> /dev/null
}

function D_zip
{
	 unzip $archivo.zip > /dev/null  2> /dev/null
}

function D_rar
{
	rar -x $archivo.rar > /dev/null  2> /dev/null
}

function validar_archivo
{
	if [[ ! -e $archivo ]]
	then 
		echo -e "${Rojo}Archivo no valido!${NC}"
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
	echo "||        Empaquetar archivos         ||"
	echo "========================================"
	echo -e "||  1) Comprimir tar.bz               ||"
	echo  "||  2) Comprimir tar.gz               ||"
	echo  "||  3) Comprimir zip                  ||"
	echo  "||  4) Comprimir rar                  ||"
	echo  "||  5) Descomprimir tar.bz            ||"
	echo  "||  6) Descomprimir tar.gz            ||"
	echo  "||  7) Descomprimir zip               ||"
	echo  "||  8) Descomprimir rar               ||"
	echo  "||  9) Salir                          ||"
	echo -e "========================================${NC}"
	echo -e "${azul}Su eleccion: \c${NC}"
	read respuesta

	case "$respuesta" in
	1) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		T_bz
		echo -e "${verde}Listo!: \c${NC}"
		;;
	2) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		T_gz
		echo -e "${verde}Listo!: \c${NC}"
		;;
	3) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		C_zip
		echo -e "${verde}Listo!: \c${NC}"
		;;
	4) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		rar
		echo -e "${verde}Listo!: \c${NC}"
		;;
	5) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		D_bz
		echo -e "${verde}Listo!: \c${NC}"
		;;
	6) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		D_gz
		echo -e "${verde}Listo!: \c${NC}"
		;;
	7) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		D_zip
		echo -e "${verde}Listo!: \c${NC}"
		;;
	8) 	echo -e "${azul}Ingrese la ruta del archivo: \c${NC}"
		read archivo
		validar_archivo
		D_rar
		echo -e "${verde}Listo!: \c${NC}"
		;;
	*) 	echo -e "${Rojo}Adios!${NC}"
		exit 0
		;;
	esac

	read enter
done
