#!/bin/bash
echo -e "Introduzca el codigo postal: \c"
read CodigoPostal

case $CodigoPostal in
	72[0-5][0-9][0-9])
		echo "$CodigoPostal es un codigo postal de (Heroica Puebla de Zaragoza)"
		;;
	
	74[0][0-8][0-9])
		echo "$CodigoPostal es un codigo postal de San Martín Texmelucan de Labastida"
		;;
	
	74[0][0-8][0-9])
		echo "$CodigoPostal es un codigo postal de Tepexi de Rodríguez"
		;;

	[7][0-5][0-9][0-9][0-7])
		echo "$CodigoPostal es un codigo postal de México"
		;;
	* )
		echo "No es un codigo postal de México"
esac
