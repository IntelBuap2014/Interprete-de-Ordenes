#! /bin/bash
suma=0
# Bucle infinito
while true
do
	echo -e "Introduzca un número: \c"
	# Entrada de un número
	if read numero
	then
		# Si la entrada es incorrecta, se sube a la condición del bucle de nuevo
		if [[ "$numero" != ?([+-])+([0-9]) ]]
		then
			echo "El valor entrado no es un número"
			continue
		fi
		# La entrada es correcta, se realiza la suma
		(( suma = $suma + $numero ))
	else
		# El usuario ha entrado ˆd: Salida 
		echo "El usuario decidio salir"
		break
	fi
done
# Impresión del resultado
echo -e "\nLa suma es: $suma"
exit 0

