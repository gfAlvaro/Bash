#!/bin/bash
# Crear un script que reciba como parámetro
# el nombre de una carpeta y genere un archivo
# empaquetado y comprimido de esa carpeta
# como copia de seguridad.
# @author Alvaro Garcia Fuentes

if [ $# -ne 1 ]
then
	echo "ERROR: numero de parametros incorrecto."
	exit 1
	fi

if [ ! -d $1 ]
then
	echo "ERROR: el parametro no es un directorio valido."
	exit 2
	fi

tar -cvf paquete.tar $1
