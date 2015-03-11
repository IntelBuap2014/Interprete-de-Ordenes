#! /bin/bash
for usuario in `cut -d":" -f1 /etc/passwd`
do
	echo "Usuario registrado en el sistema [ $usuario ]"
# ...
done

