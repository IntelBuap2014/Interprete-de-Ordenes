#!/bin/bash
numero=1
until [ $numero -gt 10 ] 
do
	echo "El valor de numero es [ $numero ]"
	numero=$(( numero + 1 ))
done

