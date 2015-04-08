#! /bin/bash

azul='\e[1;34m'
nc='\e[0m'

while :
do
	echo "Seleccione su opción de busqueda"
	echo "1=> Tamaño"
	echo "2=> Nombre"
	echo "3=> Usuario"
	echo "4=> Permisos"
	echo "5=> Fechas"
	echo "6=> Salir"
	read opcion
	
	case "$opcion" in
		1) echo "Ingrese el tamaño deseado"
		   read tam
		   echo -e "${azul}$(find -size $tam)${nc}\n"
		   ;;
		2) echo "Ingrese el nombre a buscar"
		   read nom
		   echo -e "${azul}$(find -name $nom)${nc}\n"	           
		   ;;
		3) echo "Ingrese el nombre de usuario"
		   read usuario
		   echo -e "${azul}$(find . -user $usuario)${nc}\n"		   
		   ;;
		4) echo "Seleccione el tipo de permiso por el cual buscar"
		   echo "1=> Lectura"
		   echo "2=> Escritura"
		   echo "3=> Ejecucion"
		   read permiso
		   
 		   if [[ $permiso -eq 1 ]]
		   then
			echo -e "${azul}$(find . -type f -perm -444)${nc}\n"		   
		   elif [[ $permiso -eq 2 ]]
		   then
			echo -e "${azul}$(find . -type f -perm -644)${nc}\n"		   
		   elif [[ $permiso -eq 3 ]]
		   then
			echo -e "${azul}$(find . -type f -perm -744)${nc}\n"		   
		   fi
		   ;;
		5) echo "Ingrese la fecha en dias"
		   read fecha
		   echo -e "${azul}$(find -mtime $fecha)${nc}\n"		  	 
		   ;;
		6) echo "Adios"
		   exit 0
		   ;;
	esac
		
done
