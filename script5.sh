archivoresultado=/tmp/encontrado.$$
find "$1" -name "$2" 2> /dev/null 1> $archivoresultado
echo "Contenido del archivo $archivoresultado: "
more $archivoresultado

