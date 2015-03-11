#! /bin/bash

echo -e "Entre un número: \c"

read numero

# Se verifica si el número se compone de un conjunto de cifras

# precedidas de un signo + o - si se da el caso

if [[ $numero = ?([+-])+([0-9]) ]]
then
	echo "$numero es un número"

	exit 0
fi

echo "$numero no es un numero"
exit 1

