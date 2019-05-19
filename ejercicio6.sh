#!/bin/bash
# Script que recibe un parámetro
# que indica que información hay que visualizar por
# pantalla. Esta puede ser:
# Nombre del host (hostname),
# nombre del kernel,
# versión del kernel,
# sistema operativo
# y plataforma hardware (32 o 64 bits).
# Pista: estructura case y comando uname.
# @author Alvaro Garcia Fuentes

if [ $# -ne 1 ]
then
	echo "ERROR: numero de parámetros incorrecto"
	exit 1
	fi

case $1 in
	'host')
		echo $HOSTNAME
	;;
	'kernel')
		uname
	;;
	'versionKernel')
		uname -r
	;;

	'sistemaOperativo')
		uname -v
	;;

	'plataformaHardware')
		uname -i
	;;
	*)
		echo "Opción incorrecta."
		exit 2
	esac

