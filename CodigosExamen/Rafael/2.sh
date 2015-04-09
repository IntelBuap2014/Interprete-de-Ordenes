#! /bin/bash
function leeArchivo
{
 echo "Ingrese la ruta del archivo a comprimir: "
 read rutaArchivo
 if [[ -f $rutaArchivo ]]; then
  echo -e "La ruta $rutaArchivo es valida...\n"
  echo "¿Con que nombre lo desea crear?: "
  read nombre
 else
  echo -e "Ruta invalida\n"
  continue
 fi
}

clear
while :
do
  echo "Ejercicio 2"
  echo "¿Que algoritmo quiere utilizar para comprimir?"
  echo "[1] tar.bz"
  echo "[2] tar.gz"
  echo "[3] zip"
  echo "[4] rar"
  echo "[5] salir"
  read opcion
  case "$opcion" in
    1) echo "*** tar.bz ***"
      leeArchivo
      tar -jcvf $nombre.tbz2 $rutaArchivo
      echo -e "Archivo .tar.bz creado \n"
    ;;
    2) echo "*** tar.gz ***"
      leeArchivo
      tar -zcvf $nombre.tar.gz $rutaArchivo
      echo -e "Archivo .tar.gz creado \n"
    ;;
    3) echo "*** zip ***"
      leeArchivo
      zip $nombre.zip $rutaArchivo
      echo -e "Archivo .zip creado \n"
    ;;
    4) echo "*** rar ***"
      leeArchivo
      rar a $nombre.rar $rutaArchivo
      echo -e "Archivo .rar creado \n"
    ;;
    5) echo "*** Adios!! ***"
      exit 1
    ;;
    *) echo "Opcion no valida"
    ;;
  esac
done

