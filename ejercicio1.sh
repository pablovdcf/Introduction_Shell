#!/bin/bash

#1. OBTENER LA INFORMACIÓN (PERMISSIONS, SIZE, MODIFICATION DATE ETC.) SOBRE EL ARCHIVO MÁS GRANDE DE LA CARPETA OPENTRAVELDATA .
#2. OBTENER CUÁNTAS PALABRAS CONTIENEN LAS 5 PRIMERAS LÍNEAS DEL ARCHIVO FINN.TXT.
#3. IMPRIMIR LAS 3 PRIMERAS LINEAS DE TEXT_EXAMPLE.TXT CON EL NÚMERO DE LÍNEA DELANTE..
#4. USE TEXT_EXAMPLE.TXT TO GENERATE A NEW FILE WITH THE SAME CONTENT BUT WITH LINE NUMBER AT THE BEGINNING OF EACH LINE.
#5. GENERAR UN ARCHIVO QUE CONTENGA :
#	1. LINEA 1: #!/BIN/BASH
#2. LINEA 2: EL NOMBRE DEL USUARIO Y LA FECHA EN EL MOMENTO DE LA CREACIÓN.
#6. (BONUS) ESCRIBIR UN SCRIPT DE BASH QUE PREGUNTE LA EDAD AL USUARIO Y LE DEVUELVA UN MENSAJE ORIGINAL SOBRE LO QUE LE OCURRIRÁ CUANDO CUMPLA SU EDAD + 5.

echo "Crear archivo en el que vamos a dejar la información"

read input

touch $input

echo "Vamos a buscar la información de opentraveldata y ahora estás en" pwd

sleep 2

echo "Entonces vamos a irnos a la carpeta con el comando cd y los puntos para volver"

cd ../..

echo "Estamos en" pwd " abrimos ahora con cd opentraveldata"

cd opentraveldata

pwd

echo "Para ver la lista de archivos utilizamos el comando ls"

sleep 2

ls -lsh

sleep 2

echo "Observamos que optd_por_public.csv es el mas grande. Vamos a hacer wc"

echo "Cargando...."
sleep 2
echo "........................"
sleep 1
echo "**......................"
sleep 1
echo "********................"
sleep 1
echo "****************........"
sleep 1
echo "***********************."
wc optd_por_public.csv

echo "¿Funcionó?"
sleep 3
echo "Ahora vamos a ver el número de palabras que contienen las 5 primeras líneas de Finn.txt"
sleep 1

echo pwd "el archivo Finn.txt está en: "
