#!/bin/bash
col='\e[1;35m'
scol='\033[0m'
while :
	do	
	echo -e "${col}=P${scol}\c"
	read comando parametro

	case "$comando" in
		"listar") echo "Listando archivos"
			ls -la $parametro						
			;;
		"cambiar") echo "Moviendo a ruta:<<$parametro>>"
			# Ejecución de la restauración			
			cd $parametro
			;;
		"editor") echo "Editando archivo <$parametro>"
			echo -e ">$(cat > $parametro)"
			;;
		*) echo "Opción incorrecta <Confirmar>\c"
			read enter
			;;
	esac
done