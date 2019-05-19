#!/bin/bash
# uestra en pantalla
# el nombre del usuario que ejecuta el script, su
# directorio personal y la fecha del sistema.
# @author Alvaro Garcia Fuentes

nombre=$USER
home=$HOME
fecha=$(date  +"%d/%m/%Y")

echo $nombre $home $fecha
