 #! /bin/bash
echo -e "Intoduzca un código postal: \c"
read CodigoPostal
if [[ $CodigoPostal = 72@([0-5][0-9][0-9]) ]]
then
	echo "$CodigoPostal es un código postal de (Heroica Puebla de Zaragoza)"
elif [[ $CodigoPostal = 74@([0-1][0-8][0-9]) ]]
then
	echo "$CodigoPostal es un código postal de San Martín Texmelucan de Labastida"
elif [[ $CodigoPostal = 74@([0][0-8][0-9]) ]]
then
	echo "$CodigoPostal es un código postal de Tepexi de Rodríguez"
elif [[ $CodigoPostal = @([7][0-5][0-9][0-9][0-7]) ]]
then
	echo "$cp es un código postal de México"
else
	echo "$cp no es un código postal de México"
fi

