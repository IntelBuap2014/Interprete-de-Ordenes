# Autor: Rosa Elena Pérez Ramírez
# Este programa tiene como objetivo usar el comando find 
#con 5 diferentes opciones (realiza la búsqueda en la carpeta donde se ejecuta el programa):
# - buscar archivos según el tamaño (valor entero en unidades de bytes)
# - buscar archivos según el nombre (nombre incluyendo extensión)
# - buscar archivos según el usuario propietario
# - buscar archivos según los permisos de los archivos
# - buscar archivos según la fechas de modificación días atras (Archivo modificado entre X, Y días)

#! /bin/bash

# Definición de colores
azul='\e[1;34m'
negro='\e[1;37m'
verde='\e[1;32m'
NC='\e[0m'
morado='\e[1;35m'
rojo='\e[1;31m'

# Función que busca según el tamaño recibiendo un parámetro (el primero)
function busq_tamano
{
	echo  -e  "${morado}Ejecutando:::..  find -size $1c  " 
	b1=$(find -size $1c) 
	if [[ -n $b1  ]]
		then
		echo -e  "${verde}Exito.  ${b1}  "
	else
        	echo -e "${rojo} Fallo! No encontrado"
	fi
	echo -e "${NC}"

}

# Función que busca según el nombre recibiendo un parámetro (el primero)
function busq_nombre
{
	echo -e  "${morado}Ejecutando:::..  find -name  $1  " 
	busq2=$(find -name $1)
	if [[ -n $busq2  ]]
		then 
		echo -e "${verde}Exito. $busq2"
	else
		echo -e  "${rojo}Fallo! No encontrado"
	fi 
	echo -e "${NC}"
}

# Función que busca según el usuario propietario recibiendo un parámetro (el primero)
function busq_usuario
{
	echo "Ejecutando:::.. find -user $1 \ " 
	busq3=$(find -user $1)
	if [[ -n $busq3 ]]
		then
        	echo -e "${verde}Exito de busqueda $busq3"
	else
        	echo -e "${rojo}Archivo no encontrado"
	fi
	echo -e "${NC}"
}

# Función que busca según los permisos del archivo dado el usuario logueadorecibiendo un parámetro (el primero)
function busq_permisos
{
	usuario=$(whoami)
	busq4=$(find -user $usuario -perm $1)
	echo "${morado} Ejecutando:::.. find -user $usuario -perm $1"
	if [[ -n $busq4 ]]
		then
        	echo -e "${verde}Exito de busqueda $busq4"
	else
	        echo -e "${rojo}Archivo no encontrado"
	fi
	echo -e "${NC}"
}

# Función que imprime menu de opciones
function imprime_menu
{
	echo "-----Criterio de  Busqueda--------------"
	echo "- 1 - tamaño "
	echo "- 2 - nombre "
	echo "- 3 - usuario "
	echo "- 4 - permisos"
	echo "- 5 - fechas"
	echo -e "Su respuesta es: \c"
}

function imprime_permisos
{
	echo "Recuerda Permisos: Propietario|Grupo|Demas (rwx) *"
}

# Función que busca según un intervalo de fechas hacia atras de la fecha actual en la cual fue modificado el archivo
function busq_fechas
{
	$busq5="find  -mtime $1 -mtime -$2 "
}

# Limpia pantalla
clear
# Llamado a función qu imprime menú de opciones
imprime_menu
# Mientras el usuario seleccione una opción del menú se ejecutará la función 
# correspondiente, pero sino es así el programa saldrá de ejecución.

while read respuesta
do
 case "$respuesta" in
                1) echo "Dar tamano (unidades en bytes)"
		read dato1 
                busq_tamano $dato1
                ;;
                2) echo "Dar nombre de archivo"
		read nombre
                busq_nombre $nombre
                ;;
                3)
		echo "Dar nombre usuario"
		read usuario
                busq_usuario $usuario
                ;;
                4)	
		imprime_permisos
		echo "Dar permisos"
		read permisos 
          	busq_permisos $permisos
	        ;;
                5)
		echo "Archivo modificado entre X, Y dias"
                echo "Dar valor entero X"
                read dato
        	echo "Dar valor entero Y "
		read dato2        
		busq_fechas $dato $dato2
                imprime_menu
                ;;
                *) echo "Opción incorrecta"
                exit 1
                ;;
        esac

imprime_menu
done
exit 0

