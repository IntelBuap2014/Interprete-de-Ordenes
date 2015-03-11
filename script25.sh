#!/bin/bash

function f1 {
	# variable1 es una variable local
	typeset variable1
	echo "En f1 => variable1 antes: $variable1"
	variable1=100
	echo "En f1 => variable1 despues: $variable1"

	echo "En f1 => variable2 antes: $variable2"
	variable2=200
	echo "En f1 => variable2 después: $variable2"
}
# variable1  variable2 son 2 variables globales
variable1=1
variable2=2
echo "En el programa principal => variable1 antes de invocar a f1: $variable1"
echo "En el programa principal => variable2 antes de invocar a f1: $variable2"
f1
echo "En el programa principal => variable1 después de invocar a f1: $variable1"
echo "En el programa principal => variable2 después de invocar a f1: $variable2"

