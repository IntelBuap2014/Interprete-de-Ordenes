#! /bin/bash
find / -name $1 1> /tmp/respaldo 2> /dev/null &
date
echo "PID $$"
echo "*****************************"
echo "Resultado del comando ps: "
ps
echo "*****************************"
echo "PID de find: $!"
exit 0


