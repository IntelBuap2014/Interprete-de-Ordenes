#! /bin/bash
suma=0
echo "Introduzca un número por línea, \<espacio\> para mostrar a suma:"
while read numero
do
	# La verificación siguiente no es compatible
	# con Bourne shell
	if [[ "$numero" != ?([+-])+([0-9]) ]]
	then
		echo "Calculadora le Piñate"
		break
	fi
	# La sintaxis siguiente es equivalente a ((suma=suma+num))
	# y a ((suma=$suma+$num))
	# En Bourne Shell: suma=`expr $suma + $num`
	((suma+=numero))
done
echo "Suma: $suma"
exit 0
