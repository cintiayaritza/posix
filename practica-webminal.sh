
Pacheco Mex Cintya Yaritza 
########################################################
# 1 leccion Comandos básicos para navegar por los directorios

#mostrará su directorio de trabajo actual. Sí, home  es un directorio.
pwd
/home/Yaritza176

# crear un nuevo directorio
mkdir -v dir1
mkdir -v dir2
mkdir -v dir2/dir3
mkdir -v dir2/dir3/dir4
mkdir -vp dir2/dir3/dir4

 #muestra un listado con los archivos y directorios de un determinado directorio.
ls
#mostrara las listado de archivo recursivo 
ls -R
#muestra de forma gráfica la estructura de carpetas de una unidad o ruta.
tree

#cambiar el directorio de trabajo 
cd dir3
cd .
.
tree
cd -
####################### #############################################################################################################
#lecccion 2 crear archivos, mostrar contenido y estadísticas
#crear un archivo nuevo 
touch file1.txt
touch file2.txt
#se usa para listar el contenido del directorio
dir
#los archivos se enumeran en columnas, ordenados verticalmente, y los caracteres especiales se representan mediante secuencias de escape con barra invertida.
dir -ls
dir -C
dir -b
#limpiar la terminal 
clear 

#el mensaje se muestra en la pantalla.
echo "hello"
edirigamos el mensaje a un nuevo archivo
echo "hello" > hello.txt
#para agregar datos >> 
echo "linux" >> hello.txt
echo "world" >> hello.txt

#para ver  el contenido de archivo 
cat hello.txt

#mostró las dos primeras líneas de los archivos  
head -2 hello.txt

#se usará para mostrar las dos últimas líneas
tail -2 hello.txt
tail hello.txt

#checar algunas estadísticas de los archivos y directorios que hemos creado hasta ahora.
stat hello.txt
stat dir1 

###########################################################################################################
#leccion 3 Copiar, renombrar, borrar archivos
#muestra el uso del disco del directorio actual
du

#muestra el uso del disco del directorio actual
#Utilice el conmutador h para generar en un formato legible por humanos y el conmutador x para excluir otros sistemas de archivos y ~ denota su hogar.
du -xh ~

#especificar la profundidad máxima del directorio
du --max.depth 3 ~

#el archivo se copia en la nueva ubicación
cp - v hello.txt dir2

# el archivo se copiará hello.txt en dir2 al mismo tiempo, renómbrelo como "file2.txt".
cp -v hello.txt dir2/file2.txt

##Esto copiará todos los archivos que terminen con ".txt" de dir2 a dir2 / dir3.
cp -vr dir2/*.text dir2/dir3

#Esto copiará el directorio llamado "dir3" al directorio actual.
cp -vr dir2/dir3

ls

#la suma de comprobación calculada para un archivo. Esto ayuda a detectar la corrupción accidental o deliberada del archivo.
ms5sum hello.txt

#Al transferir un archivo de una máquina a otra o descargar archivos de Internet, para verificar la integridad del archivo, compare md5sum en las máquinas de origen y de destino.
md5sum dir2/hello.txt

#moverá un archivo al directorio dir4 y lo llamará hi.txt.
mv hello.txt dir2/dir3/dir4/hi.txt
mkdir dir5
mv dir2/*.txt dir5

#moverá todos los archivos "* .txt" bajo dir2 a dir5. luego cambie el nombre del directorio "dir5" a "dir50".
mv dir5 dir50

#creador un enlace 
ln -s dir2/dir3/dir4/hi.txt hello
stat hello 
stat dir2/dir3/dir4/hi.txt

#Los enlaces softlink se crean usando el interruptor s.
ln -s dir2/dir3/dir4/hi.txt softlink

#Se crea un nuevo inodo para este nuevo enlace simbólico "softlink"
stat softlink

#para eliminar archivos individuales 
rm -i file2.txt

#le mostrará un mensaje.rm: ¿eliminar el archivo vacío normal  escriba y para eliminar el archivo. Para eliminar el directorio, primero elimine su contenido con la opción "r",
rm -ri dir50/*

#a que tener cuidado cuando usamos rm -rf podemos borrar archivo y que no podras regresa otra vez automatico si preguntarle si lo quiere borrar o no
rm -rf junk/*
rmdir dir50

############################################################################
#leccion 4 Comandos basicos para administrar procesos

#Ejecuta el comando ps y analiza su salida
ps

#Crea un nuevo proceso
sleep 60 &
ps

#el proceso creado en el paso 2 (Reemplaza 12345 por el ID del proceso)
kill 12345

#Obliga al proceso a morir enviando la señal -9
kill -9 12345


sleep 30 &
sleep 30 &

#killall termina procesos por nombre de proceso
killall sleep 

#mata solo los procesos que pertenecen al usuario "webminal"
killall -u webminal

#Espere a que muera todo el proceso de búsqueda 
killall -w find

#proporciona el ID de proceso de un programa en ejecución bash
pidof bash

#devuelve solo un ID de proceso, en lugar de que todos los procesos se ejecuten como bash
pidof -s bash 

#ejecuta un programa con prioridad de programación modificada.
nice -n 19 sleep 30 &
renice -n 19 12345
renice +1 -u webminal

#proporciona una vista dinámica en tiempo real de un sistema en ejecución
top

#mostrar un árbol de procesos, para mostrar pid 
pstree
pstree -p 

#el tiempo proporciona estadísticas sobre el programa que ejecutó.
time ls -l

#real: el tiempo real transcurrido entre la invocación y la terminación.

#user: el tiempo de CPU del usuario.

#sys: el tiempo de CPU del sistema.


################################################################################################################
#lecccion 5 Manipulate or parse file contents

#puedes buscar una palabra o patrón y se imprimirán la línea o líneas que la contengan 
grep "linux" hello 

#habilita la búsqueda recursiva en el directorio actual
grep -r 'hello'

#la búsqueda no distinguirá entre mayúsculas y minúsculas. 
grep -i 'linux' hello

#se nos muestran las líneas que no coinciden con el patrón que hemos buscado
grep -v 'linux' hello
grep -v 'world' hello

#Muesra solamente el número de líneas contenidas en el archivo procesado
wc -L hello

#mprimir los argumentos definidos con echo en nuestra consola  -e Habilita la interpretación de secuencias de escape.
echo -e "col1 col2 rn\nco15 col6 r2\nco13 col4 r3" >> new.txt
echo -e "hello\nlinux\nprogrammers paradise" >> linux.txt

#es eliminar o recortar las secciones de cada línea de un archivo especificado. 
#-f se puede usar para mencionar el número de columna y -d se usa para especificar el delimitador
cut -f1 -d '' new.txt

#el comando e usa para pegar el contenido de un archivo a otro.
paste hello new.txt

#Pegar un archivo detrás de otro en vez de en paralelo.
paste -s hello new.text

#Permite ordenar y fusionar archivos de texto. 
sort new.txt

#usca diferencias entre dos ficheros
diff hello linux.txt

####################################################################################3
#lecccion 6  Cambio de atributos de archivo

# crear una serie de directorio sobre los que trabajaremos.
dirname dir2/dir3/dir4/hi.txt

#sin opciones y seguido por la ruta a un archivo nos devolverá el nombre del mismo.
basename dir2/dir3/dir4/hi.txt

# Esto significa que el propietario, el grupo y otros pueden leer y escribir en el archivo. 
chmod -v 666 file1.txt

#nadie puede leer o escribir en este archivo ni el usuario 
chmod a+rw file1.txt

#solo el propietario puede leer o escribir en este archivo
chmod a-rw file1.txt

# para cambiar el permiso de más de un archivo,ahora para cambiar el propietario del archivo
chmod -R 644 ~/chmod_dir

#para cambiar los archivos que pertenecen a un grupo de usuarios específico
chowm root:staff -R ~/dir2

#cambiará los archivos que pertenecen al usuario del webminal y al grupo del webminal a la raíz y otros archivos de usuario
chowm --from=webminal:webminal root:staff -R ~/dir2

#puede usar chgrp solo como usuario root,
chgrp root file1.txt

#Para cambiar el grupo de dir2 y subarchivos a "root"
chgrp -hR root dir2

#################################################################################################################################################
#leccion 7  localizar el archivo y su tipo

#determina el tipo de archivo como texto ASCII
file linux.txt

#determinar si el archivo tiene caracter  especiales
file /dev/null

#También puede encontrar información sobre el sistema de archivos de dispositivos especiales.
file -s/dev/sda2

#localizará los archivos fuente y binarios,
whereis ls

# la búsqueda del archivo fuente
whereis stdio.h

#busquedad la version tiene instaladar de php  
which php 

#Busca archivos en una jerarquía de directorios.
find ~ -name "linux.text"
find . -type f exec ls -l '{}'\;
find . -type f size +20c -exec ls h1 {}\;
find . -type f size +20c -exec cp dir1 {}\;


####################################################################################################################################33
#leccion 8 - Detalles del sistema y del usuario
#el siguiente comando para averiguar cuánto tiempo ha estado funcionando este sistema,
uptime 
 
 #este comando es Para saber la fecha y hora actuales
date

#Para mostrar detalles sobre los usuarios registrados actualmente
who

#imprimir información sobre los usuarios que están conectados actualmente al sistema
who -a

#Muestra la lista del sistema de archivos montado
mount

#para mostrar el espacio libre en disco en los dispositivos montados.
mount -t ext4

#encuentra el uso del disco, pero para encontrar el uso de la memoria, necesitamos usar
df -h

#muestra la cantidad total de memoria física y de intercambio libre y utilizada en el sistema, así como los búferes utilizados por el kernel.
free -m 

############################################################################################################################################3
#leccion 9 Comandos básicos del proceso de Linux

#nombre de host 
hostname 

#Cuando decimos file / bin / hostname contiene instrucciones almacenadas en formato binario. Estas instrucciones serán del núcleo para realizar alguna tarea o acción.
file /bin/hostname 

#le estamos diciendo a Kernel que lea un nombre de archivo '/ etc / hosts' y busque la entrada 
cat /bin/hostname 

#es una ID de proceso del comando en ejecución 
#TTY es un lugar donde se ejecuta el comando en ejecución
#TIME informa sobre cuánto tiempo usa la CPU mientras ejecuta el comando
#CMD es un comando que se ejecuta como un proceso actual
ps

#Esto mostrará todos los procesos secundarios de un proceso y es útil para descubrir qué procesos se han bifurcado de este proceso principal.
ps -o ppid 31400
ps -o ppid,cmd 31400
ps -0 ppid,cmd 27447


#################################################################################################################################################
#leccion 10

# Cada vez que inicia sesión, se crea un nuevo bash padre. 
ps

#cada comando es un proceso,  Creemos algunos procesos para esta sesión
sleep 5

#ejecute el proceso hijo y espere a que se complete y luego regrese a mí nuevamente.
#Shell tiene la opción de ejecutar el proceso secundario en segundo plano, lo que significa que no esperará a
 #que el hijo  termine antes de aceptar las entradas del usuario
sleep 5 &
sleep 2

#tenemos Bash y un proceso hijo llamado 'pstree'. Ejecute nuestro hijo
pstree 52454
sleep 5 &

#tenemos Bash y un proceso hijo llamado 'pstree'. 
pstree 5254
sleep 5 &

#el pid que obtuvimos al iniciar el proceso en segundo plano es el mismo que obtuvimos de la salida de pstree.
pstree -p 5254
sleep 45 &
sleep 45 &
sleep 45 &
pstree 3000 &


pstree -p 5254

#Está detenido, podemos reiniciar el proceso nuevamente en segundo 
jobs
#se utiliza para mover un trabajo a segundo plano.
bg 5
jobs


###################################################################################################################################
#leccion 11 Estados del proceso de Linux
# man ps muestra que el proceso puede ser cualquiera de los siguientes estados
# D sleep ininterrumpido (generalmente IO)
 #  R En ejecución o ejecutable (en cola de ejecución)
 #  S sleep interrumpible (esperando a que se complete un evento)
  # T Detenido, ya sea por una señal de control de trabajo.
   #X muerto (nunca debería ser visto) Proceso Z Defunct ("zombie"), terminado pero no cosechado por su padre.   
man ps

 #sleep  interrumpible (esperando a que se complete un evento)
ps -s

#bash / shell está esperando que se complete su hijo está en estado de ejecución. s - significa líder de sesión y + indica que se ejecuta en primer plano
ps Sí
#Tenga en cuenta que este proceso se detiene y no se termina.
seq 1 500000
#procesos zombie 
#Zombie es un proceso terminado pero no cosechado por su padre. 

#Si inicia este shell bash, recopilará el estado de salida de 2547 y obtendrá su hijo. Por tanto, el proceso zombi desaparecerá.
jobs
ps S
ps -o ppid 3376 


