#! /bin/bash

#Colores
azul='\e[1;34m'
negro='\e[1;37m'
verde='\e[1;32m'
NC='\e[0m'

echo -e "${verde}Este script piñata solo muestra el uso de las variables reservadas${NC}"
echo -e "${negro}Se recibieron [${azul} $# ${negro}] -> argumentos${NC}"
echo -e "${negro}El nombre del script es [${azul} $0 ${negro}]${NC}"
echo -e "${negro}El primer argumento es [${azul} $1 ${negro}]${NC}"
echo -e "${negro}El segundo argumento es [${azul} $2 ${negro}]${NC}"
echo -e "${negro}El tercer argumento es [${azul} $3 ${negro}]${NC}"
echo -e "${negro}La lista de argumentos es [${azul} $* ${negro}]${NC}"
echo -e "${negro}La lista de argumentos es [${azul} $@ ${negro}]${NC}"
