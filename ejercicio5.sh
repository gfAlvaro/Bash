#!/bin/bash
# Script que visualiza por pantalla
# cuanto ocupan los archivos con una determinada
# extensión que hay en un directorio, ambos
# pasados como parámetros. Si no se pasa el
# directorio como parámetro, entonces será
# por defecto el directorio actual. Se usa bucle for,
# comando stat y expresión aritmética.
# @author Alvaro Garcia Fuentes

if [ $# -gt 2 ]
then
	echo "ERROR: numero de parámetros incorrecto."
	exit 1
	fi

if [ $# -eq 2 ]
then
	directorio='$2/'
else
	directorio=''
	fi

for i in $directorio*.$1;
do
	stat -c "%n %s" $i
	done

