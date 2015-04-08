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
	echo -e "${rojo}\n\nPRESIONA ENTER PARA CONTINUAR...${NC}"
	read x;
}

while true
do
	clear
	echo -e "${verde}\n\n\t\t*************************************"
	echo -e "\t\t*         Gestor de archivos        *"
	echo -e "\t\t*************************************"
	echo -e "${rojo}Directorio Actual: ${NC}\c"
	pwd
	echo -e "${azul}\nSeleccione una opcion"
	echo -e "1.- Mostrar archivos"
	echo -e "2.- Cambiar de carpeta"
	echo -e "3.- Editor de archivos"
	echo -e "4.- Salir del programa${NC}"
	read opcion
	clear
	case $opcion in
		1) 	echo -e "${verde}***********MOSTRAR ARCHIVOS***********"
			echo -e "${rojo}\n\nArchivos dentro del directorio: ${NC}\c"
			pwd
			echo -e "${azul}\n"
			ls *.txt
			if(($?!=0)) 
			then
				echo -e "${amarillo}\nNo hay archivos."
			fi
			pausa
			;;
		2)	opcion1=0
			until (($opcion1 == 3))
			do
				echo -e "${verde}***********CAMBIAR DE CARPETA***********"
				echo -e "${rojo}\n\nActualmente te encuentras en el directorio: ${NC}\c"
				pwd
				echo -e "${azul}\nSeleccione una opcion"
				echo -e "1.- Avanzar hacia una carpeta"
				echo -e "2.- Retroceder una carpeta"
				echo -e "3.- Salir del menu${NC}"
				read opcion1
				clear
				case $opcion1 in
				1)	echo -e "${verde}***********AVANZAR CARPETA***********"
					echo -e "${rojo}\n\nCarpetas dentro del directorio: ${NC}\c"
					pwd
					ls -d */
					if(($?==0)) 
					then
						echo -e "${rojo}\nEscribe el nombre de la carpeta a la que deseas entrar:${NC}"
						read dir
						cd $dir
						echo -e "\nAccediendo a la carpeta..."
					else
						echo -e "${amarillo}\nNo hay mas carpetas."
					fi
					pausa
					clear
					;;
				2)	echo -e "${verde}***********RETROCEDER CARPETA***********"
					echo -e "${rojo}\n\nRetrocediendo carpeta...${NC}"
					cd ..
					pausa
					clear
					;;
				*)	echo -e "${rojo}\n\nOpcion no valida. Prueba otra vez!!${NC}"
					pausa
					clear
					;;
				esac
			done
			echo -e "${purpura}\n\nRegresando al menu principal...${NC}"
			pausa
			;;
		3) 	opcion2=0
			until (($opcion2 == 4))
			do
				echo -e "${verde}***********EDITOR DE ARCHIVOS***********"
				echo -e "${rojo}\n\nActualmente te encuentras en el directorio: ${NC}\c"
				pwd
				echo -e "${azul}\nSeleccione una opcion"
				echo -e "1.- Crear archivo"
				echo -e "2.- Editar archivo"
				echo -e "3.- Ver archivo"
				echo -e "4.- Salir del menu${NC}"
				read opcion2
				clear
				case $opcion2 in
				1)	echo -e "${verde}***********CREAR ARCHIVO***********"
					echo -e "${rojo}\n\nEscribe el nombre que deseas darle al archivo de texto:${NC}"
					read nom
					echo -e "${NC}\nComienza a escribir el contenido del archivo."
					echo -e "Para terminar pulsa 'ctrl+d' simultaneamente"
					echo -e "${azul}\n->\c"
					cat>$nom.txt
					if(($?==0)) 
					then
						echo -e "${purpura}\nArchivo creado con exito"
					else
						echo -e "${amarillo}\nError inesperado al crear archivo"
					fi
					pausa
					clear
					;;
				2)	echo -e "${verde}***********EDITAR ARCHIVO***********"
					echo -e "${rojo}\n\nArchivos dentro del directorio: ${NC}\c"
					pwd
					ls *.txt
					if(($?==0)) 
					then
						echo -e "${rojo}\nEscribe el nombre del archivo que deseas editar:${NC}"
						read arch
						echo -e "${rojo}\nPara terminar pulsa 'ctrl+d' simultaneamente"
						echo -e "\n${NC}"
						cat $arch.txt
						echo -e "${azul}->\c"
						cat>>$arch.txt
						if(($?==0)) 
						then
							echo -e "${purpura}\nArchivo modificado con exito"
						else
							echo -e "${amarillo}\nError inesperado al modificar archivo"
						fi
					else
						echo -e "${rojo}\nNo hay archivos."
					fi
					pausa 
					clear
					;;
				3)	echo -e "${verde}***********VER ARCHIVO***********"
					echo -e "${rojo}\n\nArchivos dentro del directorio: ${NC}\c"
					pwd
					ls *.txt
					if(($?==0)) 
					then
						echo -e "${rojo}\nEscribe el nombre del archivo que deseas ver:${NC}"
						read arch
						echo -e "${azul}\n"
						cat $arch.txt
					else
						echo -e "${amarillo}\nNo hay archivos."
					fi
					pausa
					clear
					;;
				*)	echo -e "${rojo}\n\nOpcion no valida. Prueba otra vez!!"
					pausa
					clear
					;;
				esac
			done
			echo -e "${purpura}\n\nRegresando al menu principal..."
			pausa
			;;
		4)	echo -e "${verde}\n\nAdios${NC}"
			exit 0
			;;
		*)	echo -e "${rojo}\n\nOpcion no valida, prueba otra vez"
			pausa
			;;
	esac
done
