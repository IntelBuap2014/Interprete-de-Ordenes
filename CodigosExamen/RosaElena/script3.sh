# Autor: Rosa Elena Pérez Ramírez
# Programa que realiza algunas operaciones sobre archivos
# - muestra achivos
# - se mueve entre carpetas ( ingresar a una carpeta o subir a un nivel superior de la carpeta actual)
# - edita (solo concatena texto) el texto de un archivo


#! /bin/bash

# Definición de colores
azul='\e[1;34m'
negro='\e[1;37m'
verde='\e[1;32m'
NC='\e[0m'
morado='\e[1;35m'
rojo='\e[1;31m'

# Muestra los archivos que se encuentran en el nivel de carpetas donde el usuario ejecuto el script 
function muestra
{
	var=$(ls -la)
	echo -e "${verde}$var ${NC} "
}

# Para moverse entre carpetas, el usuario debe decidir si sube de nivel o ingresa a una carpeta 
function moverse
{
echo "Elija opc 1)Ingresa a carpeta  2)subir carpeta"
read respuesta
case "$respuesta" in
                1)
                ingresar_carpeta
                ;;
                2)
                subir_carpeta
                ;;
esac
}
# Solicita el nombre de la carpeta y si existe se ejcutara el comando para ingresar a dicha carpeta
function ingresar_carpeta
{
	echo "Nombre de la carpeta a ingresar"
	read carpeta
	echo " Ejecutando: cd $carpeta   " 
	ruta=$(pwd)
	path="$ruta/$carpeta"
	cd $path
	echo -e "${verde} ubicados en $(pwd) ${NC}"

}
# Si el usuario eligio subir carpeta, saldrá del nivel actual posicionandose en uno mas arriba
function subir_carpeta
{
	cd ..
	echo -e  "${verde} ubicados en $(pwd) ${NC}"
}

# Editar es unafunción que dado un archivo (primer parámetro de la función) se muestra el contenido y
# el usuario ingresa texto a agregarle (dando Ctrl+D para indicar que se finalizo la entrada)

function editar 
{
	var4=""
	var3=$(cat $1)
	echo "$var3 "
	while read input
	do 
		var4="$var4 $input"
	done
	echo -e  "${verde}entrada dada   $var4"
	echo $var4 >> $(pwd)/$1   

}
 
#Función imprime opcions de operaciones a realizar
function imprime_menu
{
	echo "----Interprete Piñata--------------"
	echo "- 1 - Muestra archivos "
	echo "- 2 - Moverse en carpetas "
	echo "- 3 - Editar Archivo "
	echo -e "Su respuesta es: \c"
}
#Programa principal
# Limpiar pantalla
clear
#Imprime menu de opciones
imprime_menu
#Mientras el usuario ingrese una opcion valida, el sistema le guia para realizar
# dicha operación
while read respuesta
do

 case "$respuesta" in
                1)echo "Tus archivos son"
                muestra
             	imprime_menu   
                ;;
                2)echo  "Moverse en carpetas"
           
                moverse 
		imprime_menu
                ;;
                3)
                echo "Indique el nombre del archivo a editar"
                read archivo
                editar $archivo
                imprime_menu
                ;;
                *) echo "Opción incorrecta"
                exit 1
                ;;
        esac
done
exit 0

