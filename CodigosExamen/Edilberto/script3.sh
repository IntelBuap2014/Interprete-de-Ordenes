#! /bin/bash

clear

while :
do 
	#se cambiar el prompt, a unos personalizado
	echo -e "[$(pwd)]=p: \c"
	#se espera la entrada del usuario
	read comando opcion	

	#condicion para realizar la accion deseada
	if [[ "$comando" = "listar" ]]
	then 	
		#opcion de listar contenido del directorio actual
		ls
	elif [[ "$comando" = "cambiar" ]]
	then		
		#opcion de cambiar a una nueva direccion
		cd $opcion
	elif [[ "$comando" = "editar" ]]
	then 
		#opcion que permite editar un archivo a partir del nombre dad
		if [[ "$opcion" = "" ]]
		then 
			echo "Nombre de archivo no valido"
		else
			cat>>$opcion		
		fi
	elif [[ "$comando" = "exit" ]]
	then
		exit 0
	fi
done
