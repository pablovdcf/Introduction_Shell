#!/bin/bash

#1. OBTENER LA INFORMACIÓN (PERMISSIONS, SIZE, MODIFICATION DATE ETC.) SOBRE EL ARCHIVO MÁS GRANDE DE LA CARPETA OPENTRAVELDATA .
#2. OBTENER CUÁNTAS PALABRAS CONTIENEN LAS 5 PRIMERAS LÍNEAS DEL ARCHIVO FINN.TXT.
#3. IMPRIMIR LAS 3 PRIMERAS LINEAS DE TEXT_EXAMPLE.TXT CON EL NÚMERO DE LÍNEA DELANTE..
#4. USE TEXT_EXAMPLE.TXT TO GENERATE A NEW FILE WITH THE SAME CONTENT BUT WITH LINE NUMBER AT THE BEGINNING OF EACH LINE.
#5. GENERAR UN ARCHIVO QUE CONTENGA :
#	1. LINEA 1: #!/BIN/BASH
#2. LINEA 2: EL NOMBRE DEL USUARIO Y LA FECHA EN EL MOMENTO DE LA CREACIÓN.
#6. (BONUS) ESCRIBIR UN SCRIPT DE BASH QUE PREGUNTE LA EDAD AL USUARIO Y LE DEVUELVA UN MENSAJE ORIGINAL SOBRE LO QUE LE OCURRIRÁ CUANDO CUMPLA SU EDAD + 5.

echo "Crear primer archivo en el que obetenedremos la informacion"

read input

touch $input

echo "Donde estoy?"

pwd

sleep 2

echo "A donde me llevas?"

cd ../..

echo "Primero aquí"

cd opentraveldata

pwd

echo "Luego a donde quieres ir"

sleep 2

echo "Este es la lista de archivos"

ls -lsh

sleep 2

echo "Ahora ves que optd_por_public.csv es el mas grande. Vamos a hacer wc"

wc optd_por_public.csv

echo "¿Funcionó?"
