#!/bin/bash

archivo_enlaces="C:/Users/kris_/Desktop/enlaces.txt"
dos2unix $archivo_enlaces

carpeta_destino=""

if [ ! -d "$carpeta_destino" ]; then
  mkdir "$carpeta_destino"
fi

while IFS= read -r enlace
do	
  curl -O "$enlace"

  echo "Descargado: $enlace"
done < "$archivo_enlaces"

echo "Descargas completadas."

