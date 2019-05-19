#!/bin/bash
# Script que recibe como parámetro
# la extensión de un archivo. Posteriormente
# crea un directorio temporal para el usuario
# que ejecuta el script en el directorio /tmp
# con el mismo nombre del usuario
# y copia allí todos los archivos con dicha extensión.
# @author Alvaro Garcia Fuentes

if [ $# -ne 1 ]
then
	echo "ERROR: número de parámetros incorrecto."
	exit 1
	fi

tmpDir=$(mktemp -d /tmp/$USER"XXX" )
echo $tmpDir
cp *.$1 tmpDir
