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
echo "Hola y bienvenid@ a mi primer script con bash"

sleep 3

echo "Vamos a buscar la información de un la carpeta  opentraveldata y ahora estás en la carpeta de Proyecto-Shell"

pwd

sleep 2

echo "Entonces vamos a irnos a la carpeta con el comando cd y los puntos (..) para volver pero en este caso utilizaremos solo cd para volver a home/dsc"

cd 
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

ls -lSh

sleep 2

echo "Llevaremos esta información al primer archivo para el ejercicio 1. Necesitarás darle un nombre al archivo que vamos a crear"

read OUTPUT

ls -lSh | head -n 2 > $OUTPUT

sleep 4

echo "Ya tenemos creado el primer archivo vamos a comprobarlo con ls"

sleep 3

ls -lrt

sleep 5

echo "Vamos a llevarlo a nuestra carpeta para tenerlo todo en el mismo fichero"

sleep 3

mv $OUTPUT /home/dsc/Documents/kschool_master/GIT/Proyecto-Shell/

sleep 3

echo "Vemos que ya no está aquí"

ls -l

sleep 4

echo "Observamos que optd_por_public.csv es el mas grande. Vamos a hacer wc"

sleep 2
echo "Cargando........"
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

sleep 4

echo "¿Funcionó? Entonces, hemos visto el número de palabras del archivo optd_por_public.csv y la hemos guardado en el archivo que hemos creado anteriormente"

wc optd_por_public.csv >> $OUTPUT /home/dsc/Documents/kschool_master/GIT/Proyecto-Shell/

sleep 5

echo "Vamos a comprobar su contenido"

sleep 3

cat $OUTPUT /home/dsc/Documents/kschool_master/GIT/Proyecto-Shell/

echo "Ahora vamos a ver el número de palabras que contienen las 5 primeras líneas de Finn.txt"

sleep 2

echo "El archivo Finn.txt está en data/shell y estamos en: "

sleep 3

pwd

sleep 3

echo "Volvemos a utilizar cd .. para volver a data/"

cd ..

sleep 2

pwd

sleep 3

echo "Ahora nos vamos a shell donde está el archivo de texto Finn.txt"

cd shell

sleep 2

pwd

sleep 3

echo "Y vamos a ver cuantas palabras hay en el head de las 5 primeras lineas del archivo Finn.txt"

sleep 4

head -5 Finn.txt | wc -w

sleep 3

echo "Llevamos esta información al siguiente archivo para el ejercicio 2, dale un nombre:"

read OUTPUT2

head -5 Finn.txt | wc -w > $OUTPUT2

sleep 3

mv $OUTPUT2 /home/dsc/Documents/kschool_master/GIT/Proyecto-Shell/

echo "IMPRIMIR LAS 3 PRIMERAS LINEAS DE TEXT_EXAMPLE.TXT CON EL NÚMERO DE LÍNEA DELANTE.."

sleep 4

nl Text_example.txt | head -n 3

sleep 4

echo "Ejercicio 3 llevamos esto a un nuevo archivo:"

read OUTPUT3

nl Text_example.txt | head -n 3 > $OUTPUT3

sleep 2

echo "Copiamos el archivo en nuestro repositorio utilizando una ruta absoluta"

sleep 3

cp Text_example.txt /home/dsc/Documents/kschool_master/GIT/Proyecto-Shell


echo "Vamos a generar un archivo que contenga el shebang en la primera línea y en la segunda el usuario y la fecha de creación del archivo"

sleep 3

echo "¿Cómo quieres que se llame tu archivo?"
read OUTPUT4

echo "Vamos a poner la primera linea de tu archivo !/bin/bash"

echo "#!/bin/bash" > $OUTPUT4

sleep 3

echo "Verifiquemos su contenido"

sleep 3

cat $OUTPUT4

sleep 5

echo "Genial! a por la segunda linea, utilizaremos el método de append"

sleep 2

echo "Este es tu usuario: 'whoami' y este archivo fue creado: 'date -r $OUTPUT4'" >> $OUTPUT4

sleep 3

echo "Veamos que tenemos"

sleep 3

cat $OUTPUT4

sleep 3

echo "Fantástico"
