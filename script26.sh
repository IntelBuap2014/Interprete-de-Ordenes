#!/bin/bash

function f1 {
	echo "Parámetros de la función f1:"
	echo "\$0 => $0"
	echo "\$1 => $1"
	echo "\$2 => $2"
	echo "\$3 => $3"
	echo "\$* => $*"
	echo "\$# => $#"
}
function f2 {
	echo "Parámetros de la función f2:"
	echo "\$0 => $0"
	echo "\$1 => $1"
	echo "\$2 => $2"
	echo "\$3 => $3"
	echo "\$* => $*"
	echo "\$# => $#"
}
function f3 {
	echo "Parámetros de la función f3:"
	echo "\$0 => $0"
	echo "\$1 => $1"
	echo "\$2 => $2"
	echo "\$3 => $3"
	echo "\$* => $*"
	echo "\$# => $#"
}
echo "Prámetros del programa principal: "
echo "\$0 => $0"
echo "\$1 => $1"
echo "\$2 => $2"
echo "\$3 => $3"
echo "\$* => $*"
echo "\$# => $#"
f1 1 2 3
f2 100 200 fic.c
f3 $2 $3

