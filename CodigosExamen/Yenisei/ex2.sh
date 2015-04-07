#!/bin/bash
color1='\e[1;33m'
color2='\e[1;35m'
NC='\033[0m'
while true
	do
	clear
	echo "Comprimir un archivo con los siguientes algoritmos"
	echo "- 1 - tar.bz2"
	echo "- 2 - tar.gz "
	echo "- 3 - zip"
	echo "- 4 - rar "	
	echo "- 5 - Salir "
	echo -e "Su eleccion:\e"
	read respuesta	
	case "$respuesta" in

		1) echo "Ingrese la ruta del archivo a Comprimir"			
			read ruta			
			#echo "Ingrese la ruta  y nombre donde se alojara el archivo comprimido"			
			#read ruta2			
			#echo -e "${color1}$(sudo find $ruta -size $tamano)${NC}"
			tar -c $ruta | bzip2 > $ruta.tar.bz2
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;													

		2) echo "Ingrese la ruta del archivo a Comprimir"			
			read ruta			
			sudo tar czvf $ruta.tar.gz $ruta
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;					
		3) echo "Ingrese la ruta del archivo a Comprimir"			
			read ruta			
			zip $ruta.zip $ruta
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;					
		4) echo "Ingrese la ruta del archivo a Comprimir"			
			read ruta			
			rar a $ruta.rar $ruta
			echo -e "${color2}Listo!!${NC}"
			read enter
			;;											

		5) echo "Termino la ejecucion"								
			exit 0
			;;	
		*) echo "Opción incorrecta <Confirmar>\c"
			read enter
			;;
	esac
done

