#!/bin/bash
col='\e[1;35m'
colA='\e[1;34m'
scol='\033[0m'
echo "------------------------------------------------------------"
echo "Bienvenido a este pequeño interprete, el cual cuenta con los"
echo "siguientes comandos:"
echo "  listar <ruta_directorio>"
echo "  cambiar <ruta_directorio>"
echo "  editar <ruta_archivo_a_crear>"
echo "  limpiar"
echo "  Salir"
echo "------------------------------------------------------------"
while :
	do
	echo -e "${col}=P ${scol}\c"
	read comando parametro

	case "$comando" in
		"listar") echo "Listando archivos"
			ls -la $parametro
			;;
		"cambiar") echo "Moviendo a ruta:<<$parametro>>"
			# Ejecución de la restauración
			cd $parametro
			;;
		"editar") echo "Editando archivo <$parametro>"
			echo -e ">$(cat > $parametro)"
			;;
		"limpiar")
			clear
			;;
		"salir")
			echo -e "${colA}\nTerminado...\n${scol}"


			exit 0
			;;
		*) echo "Comando incorrecto! <Confirmar>\c"
			read enter
			;;
	esac
done