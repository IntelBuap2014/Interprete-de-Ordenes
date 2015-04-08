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
	echo "         Compresor de Archivos"
	echo "**************************************"
	echo -e "${rojo}Selecciona una opcion"
	echo -e "${azul}1.-Comprimir"
	echo "2.-Descomprimir"
	echo -e "3.-Salir${NC}"
	read opcion1
	case $opcion1 in
	    1)  echo -e "${verde}*****************Comprimir archivo o directorio******************"
		echo -e "${amarillo}Selecciona el algoritmo de comresion que vas a ocupar"
		echo -e "${azul}1.- tar.bz2"
		echo -e "${azul}2.- tar.gz"
		echo -e "${azul}3.- zip"
		echo -e "${azul}4.- rar"
		echo -e "${azul}5.- Salir${NC}"
		read opcion2
		case $opcion2 in
	  	   1) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			ls
			echo -e "${amarillo}Que nombre deseas darle al archivo?${NC}"
			read nom
			echo -e "${rojo}Ingresa la Ruta del archivo o directorio que se comprimira${NC}"
			read rutaecho -e "${purpura}Comprimiendo mediante tar.bz2.... \nPor favor espera"
			tar -c $ruta | bzip2 > "$nom.tar.bz2"
			echo -e "${purpura}Compresion Finalizada"
			pausa
		   	;;
		   2) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			ls
			echo -e "${amarillo}Que nombre deseas darle al archivo?${NC}"
			read nom
			echo -e "${rojo}Ingresa la Ruta del archivo o directorio que se comprimira${NC}"
			echo -e "${purpura}Comprimiendo mediante tar.gz.... \nPor favor espera"
			tar czvf $nom.tar.gz $ruta
			echo -e "${purpura}Compresion Finalizada"
			pausa
		   	;;
		   3) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			ls
			echo -e "${amarillo}Que nombre deseas darle al archivo?${NC}"
			read nom
			echo -e "${rojo}Ingresa la Ruta del archivo o directorio que se comprimira${NC}"
			echo -e "${purpura}Comprimiendo mediante zip.... \nPor favor espera"
			zip $nom.zip $ruta
			echo -e "${purpura}Compresion Finalizada"
			pausa
		   	;;
		   4) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			ls
			echo -e "${amarillo}Que nombre deseas darle al archivo?${NC}"
			read nom
			echo -e "${rojo}Ingresa la Ruta del archivo o directorio que se comprimira${NC}"
			echo -e "${purpura}Comprimiendo mediante rar.... \nPor favor espera"
			rar -a $nom.rar $ruta
			echo -e "${purpura}Compresion Finalizada"
			pausa
		   	;;
		   5)	echo -e "${rojo}\nHASTA LUEGO!!!${NC}"
		   	exit 0;
		   	;;
		   *) 	echo -e "\nLa opcion que elegiste no es valida"
		   	echo -e "\nPRUEBA OTRA VEZ!!"
			pausa
		   	;;
		esac
		;;
	    2)  echo -e "${verde}*****************Descomprimir archivo o directorio******************"
		echo -e "${amarillo}Selecciona el algoritmo de descomresion que vas a ocupar"
		echo -e "${azul}1.- tar.bz2"
		echo -e "${azul}2.- tar.gz"
		echo -e "${azul}3.- zip"
		echo -e "${azul}4.- rar"
		echo -e "${azul}5.- Salir${NC}"
		read opcion2
		case $opcion2 in
	  	   1) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			find -type f -name "*.tar.bz2"
			echo -e "${rojo}Ingresa el Nombre del archivo que descomprimiras${NC}"
			read nom
			echo -e "${purpura}Descomprimiendo archivo tar.bz2.... \nPor favor espera"
			bzip2 -dc $nom.tar.bz2 | tar -xv
			echo -e "${purpura}Descompresion Finalizada"
			pausa
		   	;;
		   2) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			find -type f -name "*.tar.gz"
			echo -e "${rojo}Ingresa el Nombre del archivo que descomprimiras${NC}"
			read nom
			echo -e "${purpura}Descomprimiendo archivo tar.gz.... \nPor favor espera"
			tar xzvf $nom.tar.gz
			echo -e "${purpura}Descompresion Finalizada"
			pausa
		   	;;
		   3) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			find -type f -name "*.zip"
			echo -e "${rojo}Ingresa el Nombre del archivo que descomprimiras${NC}"
			read nom
			echo -e "${purpura}Descomprimiendo archivo zip.... \nPor favor espera"
			unzip $nom.zip
			echo -e "${purpura}Descompresion Finalizada"
			pausa
		   	;;
		   4) 	echo -e "${verde}Lista de archivos en el directorio actual${NC}"
			find -type f -name "*.rar"
			echo -e "${rojo}Ingresa el Nombre del archivo que descomprimiras${NC}"
			read nom
			echo -e "${purpura}Descomprimiendo archivo rar.... \nPor favor espera"
			rar -x $nom.rar $ruta
			echo -e "${purpura}Descompresion Finalizada"
			pausa
		   	;;
		   5)	echo -e "${rojo}\nHASTA LUEGO!!!${NC}"
		   	exit 0;
		   	;;
		   *) 	echo -e "\nLa opcion que elegiste no es valida"
		   	echo -e "\nPRUEBA OTRA VEZ!!"
			pausa
		   	;;
		esac
		;;
	3)  echo -e "${rojo}\nHASTA LUEGO!!!${NC}"
	    exit 0;
	    ;;
	*)  echo -e "\nLa opcion que elegiste no es valida"
	    echo -e "\nPRUEBA OTRA VEZ!!"
	    pausa
	    ;;
	esac
done
