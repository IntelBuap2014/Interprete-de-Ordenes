#! /bin/bash

while :
do
	echo -e "\e[0;34m Seleccione su opcion\e[0m"
	echo "1=> Comprimir tar.bz"
	echo "2=> Descomprimir tar.bz"
	echo "3=> Comprmir tar.gz"
	echo "4=> Descomprimir tar.gz"
	echo "5=> Comprimir zip"
	echo "6=> Descomprimir zip"
	echo "7=> Comprimir rar"
	echo "8=> Descomprimir rar"
	echo "9=> Salir"
	read formato

	case "$formato" in
		1) echo "Proporciones la ruta del archivo a comprimir"
		   read ruta
	  	   if tar -c $ruta | bzip2 > archivo.tar.bz2
	           then
			echo "Compresion correcta: archivo.tar.bz2"
		   else
			echo "Error en la compresion"
		   fi
		   ;;
		2) echo "Proporciones la ruta del archivo a descomprimir"
		   read ruta
	  	   if bzip2 -dc $ruta | tar -xv
	           then
			echo "Descompresion correcta"
		   else
			echo "Error en la descompresion"
		   fi
		   ;;
		3) echo "Proporciones la ruta del archivo a comprimir"
		   read ruta
	  	   if tar -czvf archivo.tar.gz $ruta
	           then
			echo "Compresion correcta: archivo.tar.gz"
		   else
			echo "Error en la compresion"
		   fi
		   ;;
		4) echo "Proporciones la ruta del archivo a descomprimir"
		   read ruta
	  	   if tar -xzvf $ruta
	           then
			echo "Descompresion correcta"
		   else
			echo "Error en la descompresion"
		   fi
		   ;;
		5) echo "Proporciones la ruta del archivo a comprimir"
		   read ruta
	  	   if zip archivo.zip $ruta 
	           then
			echo "Compresion correcta: archivo.zip"
		   else
			echo "Error en la compresion"
		   fi
		   ;;
		6) echo "Proporciones la ruta del archivo a descomprimir"
		   read ruta
	  	   if unzip $ruta
	           then
			echo "Descompresion correcta"
		   else
			echo "Error en la descompresion"
		   fi
		   ;;
	 	7) echo "Proporciones la ruta del archivo a comprimir"
		   read ruta
	  	   if rar -a archivo.rar $ruta
	           then
			echo "Compresion correcta: archivo.tar.bz2"
		   else
			echo "Error en la compresion"
		   fi
		   ;;
		8) echo "Proporciones la ruta del archivo a descomprimir"
		   read ruta
	  	   if unrar -x $ruta
	           then
			echo "Descompresion correcta"
		   else
			echo "Error en la descompresion"
		   fi
		   ;;
		9) echo "Adios"
		   exit 0
		   ;;
	esac	
done
