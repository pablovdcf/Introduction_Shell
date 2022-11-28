#!/bin/bash

#1. OBTENER LA INFORMACIÓN (PERMISSIONS, SIZE, MODIFICATION DATE ETC.) SOBRE EL ARCHIVO MÁS GRANDE DE LA CARPETA OPENTRAVELDATA .
#2. OBTENER CUÁNTAS PALABRAS CONTIENEN LAS 5 PRIMERAS LÍNEAS DEL ARCHIVO FINN.TXT.
#3. IMPRIMIR LAS 3 PRIMERAS LINEAS DE TEXT_EXAMPLE.TXT CON EL NÚMERO DE LÍNEA DELANTE..
#4. USE TEXT_EXAMPLE.TXT TO GENERATE A NEW FILE WITH THE SAME CONTENT BUT WITH LINE NUMBER AT THE BEGINNING OF EACH LINE.
#5. GENERAR UN ARCHIVO QUE CONTENGA :
#	1. LINEA 1: #!/BIN/BASH
#2. LINEA 2: EL NOMBRE DEL USUARIO Y LA FECHA EN EL MOMENTO DE LA CREACIÓN.
#6. (BONUS) ESCRIBIR UN SCRIPT DE BASH QUE PREGUNTE LA EDAD AL USUARIO Y LE DEVUELVA UN MENSAJE ORIGINAL SOBRE LO QUE LE OCURRIRÁ CUANDO CUMPLA SU EDAD + 5.

#echo "Crear archivo en el que vamos a dejar la información"

#read input

#touch $input

echo "Vamos a buscar la información de opentraveldata y ahora estás en la carpeta de Proyecto-Shell"

pwd

sleep 2

echo "Entonces vamos a irnos a la carpeta con el comando cd y los puntos (..) para volver"

cd ../../../..
sleep 3
pwd

echo "Estamos en home/dsc y desde ahí  nos vamos ahora a data/shell/ y abrimos ahora con cd opentraveldata"

cd data/opentraveldata

sleep 3
echo "Vemos ahora con el comando pwd donde estamos"

pwd

sleep 2

echo "Para ver la lista de archivos utilizamos el comando ls"

sleep 2

ls -lsh

sleep 2

echo "Observamos que optd_por_public.csv es el mas grande. Vamos a hacer wc"

sleep 2
echo "Cargando...."
sleep 3
echo "........................"
sleep 1
echo "**......................"
sleep 1
echo "********................"
sleep 1
echo "****************........"
sleep 1
echo "***********************."
sleep 1

wc optd_por_public.csv

echo "¿Funcionó? Observamos la información del archivo optd_por_public.csv"
sleep 3

echo "Ahora vamos a ver el número de palabras que contienen las 5 primeras líneas de Finn.txt"
sleep 2

echo "El archivo Finn.txt está en data/shell y estamos en: "
sleep 3
pwd

echo "Volvemos a utilizar cd .. para volver a data/"

cd ..
pwd
sleep 3
echo "Ahora nos vamos a shell donde está el archivo de texto Finn.txt"

cd shell
pwd
sleep 3

echo "Y vamos a ver cuantas palabras hay en el head de las 5 primeras lineas del archivo Finn.txt"

head -5 Finn.txt | wc -w

sleep 3

echo "IMPRIMIR LAS 3 PRIMERAS LINEAS DE TEXT_EXAMPLE.TXT CON EL NÚMERO DE LÍNEA DELANTE.."

ls -l

wc -l Text_example.txt | head -3

sleep 4

head -n 3 Text_example.txt | wc -w
