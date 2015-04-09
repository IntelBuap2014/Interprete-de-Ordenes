#! /bin/bash
function verificaDir
{
 echo "Ingrese la ruta de la carpeta en la que desea trabajar"
 read rutaDirectorio
 if [[ -d $rutaDirectorio ]]; then
  echo -e "La ruta $rutaDirectorio es valida...\n"
  cd $rutaDirectorio
 else
  echo -e "Ruta invalida o no es un Directorio\n"
  continue
 fi
}

function leeArchivo
{
 echo "Ingrese el nombre del archivo a editar: "
 read rutaArchivo
 if [[ -w $rutaArchivo && -f $rutaArchivo ]]; then
  echo -e "El archivo $rutaArchivo ..."
  echo -e "esta listo para ser modificado."
  echo -e "Para terminar de editar, oprima ctrl+D \n"
  cat >> $rutaArchivo
 else
  echo -e "Ruta invalida\n"
  continue
 fi
}

clear
while :
do
echo "Interprete piniata"
echo "Elija una opcion:"
echo "[1] Mostrar archivos"
echo "[2] Moverte entre carpetas"
echo "[3] Editar archivo"
echo "[4] Salir"
read opcion

case "$opcion" in 
  1) echo "*** Mostrar archivos ***"
    echo "Los archivos de la carpeta actual son:"
    ls --color
  ;;
  2) echo "*** Moverte entre carpetas ***"
     verificaDir
  ;;
  3) echo "*** Editar Archivo ***"
    leeArchivo
  ;;
  4) echo "*** Salir***"
     echo "Adios :)"
     exit 1
  ;;
  *) echo "Opcion no valida..."
  ;;
esac
done