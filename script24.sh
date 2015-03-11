#!/bin/bash
# Provocar una pausa en pantalla
function pausa {
	echo "Pulse una tecla para continuar"
	read x
}
# Saber si un usuario existe en el sistema
function existe_usuario {
	echo -e "Introduzca el nombre de un usuario: \c"
	read usuario
	if grep -q $usuario /etc/passwd
	then
		return 0
	fi
	return 1
}
# Programa principal
while true
do
	clear
	echo "- 1 - Saber si un usuario existe en el sistema"
	echo "- 2 - Saber el uid de un usuario"
	echo "- 3 - Fin"
	echo -e "Su elección: \c"
	read eleccion
	case $eleccion in
		1)
		# Llamada a la función
		# Verificar el código de retorno de la función ($?)
			if existe_usuario
			then
				echo "El usuario $user existe en el sistema"
			else
				echo "El usuario $user no existe en el sistema"
			fi
			pausa
			# Llamada a la función pausa
			;;
		2)
			echo "Elección no implementada por flojera" 
			;;
		3)
			exit 0 
			;;
	esac
done
