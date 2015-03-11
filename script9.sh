#! /bin/bash

if [ $# -ne 2 ]
then
	echo "Uso: $0 argumento1 argumento2"
	exit 1
fi
echo "El numero de argumentos es correcto"
# Comparar num1 y num2 con expr
if expr $1 \> $2 > /dev/null
then
	echo "expr: $1 es mayor que $2"
fi

# La verificación también puede realizarse con [[ ]] (o [ ])
 if [[ $1 -gt $2 ]]
then
   echo "[[ ]]: $1 es mayor que $2"
fi

