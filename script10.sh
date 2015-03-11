#!/bin/bash

# Compararemos $1 y $2 con (())

if (( $1 == $2 )); then
	echo "$1 y $2 son iguales"
else
	echo "$1 y $2 son diferentes"
fi
