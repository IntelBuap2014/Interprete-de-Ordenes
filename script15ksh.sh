#!/bin/bash
echo -e "Introduzca un número: \c"
read numero
case "$numero" in
	?(+)+([0-9]) )
		echo "$numero es un número entero positivo"
		;;
	-+([0-9]) )
		echo "$numero es un número entero negativo"
		;;
	?(+)+([0-9]).+([0-9]) )
		echo "$numero es un número real positivo"
		;;
	-+([0-9]).+([0-9]) )
		echo "$numero es un número real negativo"
		;;
	*)
		echo "$numero no es un número"
 		exit 1
		;;
esac
exit 0

