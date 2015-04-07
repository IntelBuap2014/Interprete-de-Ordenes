#! /bin/bash

#Colores
azul='\e[1;34m'
negro='\e[1;37m'
verde='\e[1;32m'
rojo='\e[1;31m'
amarillo='\e[1;33m'
purpura='\e[1;35m'
NC='\e[0m'

function pausa {
	echo -e "${rojo}\nPresiona enter para Continuar!!\n${NC}"	
	read x
}

while true
do
clear
	echo -e "${verde}**************************************"
	echo "  Buscador de Ficheros y Directorios"
	echo "**************************************"
	echo -e "${rojo}Selecciona el criterio de busqueda"
	echo -e "${azul}1.-Por Tamaño"
	echo "2.-Por Nombre"
	echo "3.-Por Usuario"
	echo "4.-Por Permisos"
	echo "5.-Por Fechas"
	echo -e "6.-Salir${NC}"
	read opcion
	case $opcion in
	  	1) 	clear
			echo -e "${verde}*****************BUSQUEDA POR TAMAÑO******************"
			echo -e "${amarillo}Ingresa el tamaño del archivo"
			echo -e "Puedes ocupar los siguientes comandos:"
			echo -e "${rojo}k ${azul}para kilobytes"
			echo -e "${rojo}M ${azul}para megabytes"
			echo -e "${rojo}G ${azul}para gigabytes"
			echo -e "${rojo}- ${azul}para tamaños menores al indicado"
			echo -e "${rojo}+ ${azul}para tamaños mayores al indicado${NC}"
			echo -e "${purpura}Ejemplo: ${rojo}-100k ${azul}para buscar archivos menores a 100 kilobytes${NC}"
			read x
			echo -e "${rojo}Resultado de la busqueda:${purpura}"
			find -size $x
			pausa
		   	;;
		2) 	clear
			echo -e "${verde}*****************BUSQUEDA POR NOMBRE******************"
			echo -e "${amarillo}Selecciona el criterio de busqueda:"
			echo -e "${azul}1.- Que contenga un nombre especifico"
			echo -e "${azul}2.- Que contenga la siguiente cadena en el nombre${NC}"
			read x
			case $x in
			  1)  echo -e "${azul}Ingresa el nombre a buscar:${NC}"
			      read n
			      echo -e "${rojo}Resultado de la busqueda:${purpura}"
			      find -type f -name $n
			      ;;
			  2)  echo -e "${azul}Ingresa la cadena:${NC}"
			      read n
			      echo -e "${rojo}Resultado de la busqueda:${purpura}"
			      find -type f -name "*$n*"
			      ;;
			  *)  echo -e "\nLa opcion que elegiste no es valida"
		   	      echo -e "\nPRUEBA OTRA VEZ!!"
		   	      ;;
			esac
			pausa
		   	;;
		3) 	clear
			echo -e "${verde}*****************BUSQUEDA POR USUARIO******************"
			echo -e "${amarillo}Ingresa el nombre de usuario"
			read x
			echo -e "${rojo}Resultado de la busqueda:${purpura}"
			find -user $x
			pausa
		   	;;
		4) 	clear
			echo -e "${verde}*****************BUSQUEDA POR PERMISOS******************"
			echo -e "${amarillo}Selecciona el permiso a buscar:"
			read x
			echo -e "${rojo}Resultado de la busqueda:${purpura}"
			find -type f -perm /$x
			pausa
		   	;;
		5) 	clear
			echo -e "${verde}*****************BUSQUEDA POR FECHAS******************"
			echo -e "${amarillo}Selecciona el rango de dias a buscar"
			echo -e "\nPuedes ocupar los siguientes comandos:"
			echo -e "${rojo}- ${azul}antiguedad en dias menores al indicado"
			echo -e "${rojo}+ ${azul}antiguedad en dias mayores al indicado${NC}"
			echo -e "${purpura}Ejemplo: ${rojo}+2 ${azul}para buscar archivos con antiguedad mayor a 2 dias${NC}"
			read x
			echo -e "${rojo}Resultado de la busqueda:${purpura}"
			find -mtime $x
			pausa
		   	;;
		6)	echo -e "${rojo}\nHASTA LUEGO!!!${NC}"
		   	exit 0;
		   	;;
		*) 	echo -e "\nLa opcion que elegiste no es valida"
		   	echo -e "\nPRUEBA OTRA VEZ!!"
		   	;;
	esac
done
