#!/bin/bash
# script que recibe dos parámetros:
# el nombre de un archivo y un directorio.
# compruba si el archivo existe
# formando la ruta completa con su nombre y el directorio.
# @author Alvaro Garcia Fuentes

if [ ! $# -eq 2 ]
then
	echo "ERROR: número de parametros incorrecto."
	exit 1
fi

rutaFichero=$2$1

#echo "$rutaFichero"

if [ -f $rutaFichero ]
then
	echo "El archivo existe"
else
	echo "El archivo no existe"
fi
	
