# Autor: Rosa Elena Pérez Ramírez
# Programa que comprime archivos según 4 opciones para realizarlo 
# según su extensión
#! /bin/bash


# Definición de colores
azul='\e[1;34m'
negro='\e[1;37m'
verde='\e[1;32m'
NC='\e[0m'
morado='\e[1;35m'
rojo='\e[1;31m'
# Función imprime menú de opciones para comprimir
function imprime_menu
{
	echo "-----Criterio de Compresion--------------"
	echo "- 1  tar.bz "
	echo "- 2  tar.gz "
	echo "- 3  zip "
	echo "- 4  rar"
	echo -e "Su respuesta es: \c"
}
# Función comprime el archivo recibido en el primer parámetro c en un archivo 
# con extensión tar.bz
function comp_tarbz
{
	tar -cvzf empaquetado_tarbz.tar.bz $1
}
# Función comprime el archivo recibido en el primer parámetro c en un archivo 
# con extensión tar.gz
function comp_targz
{
	tar -cvzf empaquetado_targz.tar.gz $1

}
# Función comprime el archivo recibido en el primer parámetro c en un archivo 
# con extensión .zip
function comp_zip
{
	zip archivo_zip.zip $1
}
# Función comprime el archivo recibido en el primer parámetro c en un archivo 
# con extensión .rar
function comp_rar
{
rar a archivo_rar.rar $1
}

#Programa Principal
#Limpiar Pantalla
clear
# Imprime opciones del menú para comprimir
imprime_menu
#Mientras el usuario de una opción valida, el programa según la opción elegida le solicitara el nombre del archivo a comprimir
#*Tal vez en otra version debería de poder comprimir mas de un archivo.
while read respuesta
do
 case "$respuesta" in
                1) echo "Carpeta a comprimir (tar.bz)"
		read dato1 
                comp_tarbz $dato1
                ;;
                2) echo "Carpeta a comprimit (tar.gz)"
		read dato2
                comp_targz $dato2
                ;;
                3) echo "Carpeta a comprimir (zip)"
		read dato3
                comp_zip $dato3

                ;;
                4) echo "Carpeta a comprimir (rar)"	
		read dato4
		comp_rar $dato4

                ;;
                
                *) echo "Opción incorrecta"
                exit 1
                ;;
        esac

imprime_menu
done
exit 0

