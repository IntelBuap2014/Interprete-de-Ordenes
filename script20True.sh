#!/bin/bash
while true
	do
	echo "- 1 - Copia de seguridad "
	echo "- 2 - Restaurar "
	echo "- 3 - Fin"
	echo -e "Su eleccion:\e"
	read respuesta
	case "$respuesta" in
		1) echo "Su elección ha sido copia de seguridad <Confirmar>\c"
			# Ejecución de la copia de seguridad
			read enter
			;;
		2) echo "Su elección ha sido restaurar <Confirmar>\c"
			# Ejecución de la restauración
			read enter
			;;
		3) echo "Fin del tratamiento"
			echo "Hasta luego ..."
			exit 0
			;;
		*) echo "Opción incorrecta <Confirmar>\c"
			read enter
			;;
	esac
done

