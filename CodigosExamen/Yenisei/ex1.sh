#!/bin/bash
color1='\e[1;33m'
color2='\e[1;35m'
NC='\033[0m'
while true
	do
	clear
	echo "Buscar archivos en un directorio de acuerdo a su(s):"
	echo "  1 - Tamaño  "
	echo "  2 - Nombre "
	echo "  3 - Usuario"
	echo "  4 - Permisos "
	echo "  5 - Fechas "
	echo "  6 - Salir "
	echo -e "Su eleccion: \c "
	read respuesta
	case "$respuesta" in

		1) echo "Ingrese la ruta del archivo para buscar su tamaño"
			read ruta
			echo "Ingrese el tamaño de los archivos a buscar"
			read tamano
			echo -e "${color1}$(sudo find $ruta -size $tamano)${NC}"
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;
		2) echo "Ingrese la ruta del directorio para buscar archivos por su nombre"
			read ruta
			echo "Ingrese el nombre del archivo a buscar"
			read nombre
			echo -e "${color1}$(sudo find $ruta -name $nombre)${NC}"
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;

		3) echo "Ingrese la ruta del directorio para buscar archivos por Usuario"
			read ruta
			echo "Ingrese el Usuario para buscar archivos"
			read usuario
			echo -e "${color1}$(sudo find $ruta -user $usuario)${NC}"
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;

		4) echo "Ingrese la ruta del directorio para buscar archivos por permiso"
			read ruta
			echo "Ingrese el tipo de permiso para buscar archivos"
			read permiso
			echo -e "${color1}$(sudo find $ruta -perm $permiso)${NC}"
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;

		5) echo "Ingrese la ruta del directorio para buscar archivos por fecha de creacion"
			read ruta
			echo "Ingrese el numero de dias para buscar archivos hasta esa fecha"
			read ndias
			echo -e "${color1}$(sudo find $ruta -atime $ndias)${NC}"
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;


		6) echo "Termino la ejecucion"
			exit 0
			;;
		*) echo "Opción incorrecta <Confirmar>\c"
			read enter
			;;
	esac
done

