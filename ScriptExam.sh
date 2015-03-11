#! /bin/bash
red='\033[0;31m'
NC='\033[0m' # No Color
black='\033[0;30m'
azul='\033[0;34m'
#creamos la carpeta de usuario
sudo mkdir /home/usuario
#agregamos el grupo
sudo addgroup usuario
archivo=archivo.txt
ruta=/home/usuario/
grupo=usuario
echo usuario > $archivo
#guardamos del archivo el usuario en la variable
variable=$(cat $archivo)
echo -e "${azul}$ruta${NC}"
echo -e "${azul}$variable${NC}"
echo -e "${red}Este usuario se agregara $variable${NC}"
echo -e "sudo useradd -g grupo -d rutahome -m -s /bin/bash Usuario"
sudo useradd -g $grupo -d $ruta -m -s /bin/bash  $variable
echo $?
