
#Escriba un script bash que haga una sola cosa: decir "HELLO".
echo "HELLO"

 #es usar bucles for para mostrar solo los números naturales impares del 1 al 99.
 for i in {1..100..2}
do
echo $i
done
 
 #Escriba un script Bash que acepte como entrada y muestre un saludo: "welcome (name")
read name
echo "Welcome" $name

#un bucle for para mostrar los números naturales del 1 al 50.
X=1
while [ $X -le 50 ]
do
	echo $X
	X=$((X+1))
done

#Dados dos números enteros, X e Y, identifique si X <Y o X> Y o X = Y
#Exactamente una de las siguientes líneas:
#- X es menor que Y
#- X es mayor que Y
#- X es igual a Y

read x
read y
if [ $x -eq $y ]
then 
echo "X is equal to Y"  
 elif [ $x -gt $y ]
 then
  echo "X is greater than Y"
  else
  echo "X is less than Y"
  fi

  #Leer en un carácter de STDIN.
#Si el carácter es 'Y' o 'y', muestre "YES".
#Si el carácter es 'N' o 'n', muestre "NO".
#No se proporcionará ningún otro carácter como entrada

#Leer en un carácter de STDIN.
#Si el carácter es 'Y' o 'y', muestre "YES".
#Si el carácter es 'N' o 'n', muestre "NO".
#No se proporcionará ningún otro carácter como entrada
read ch;
if [ $ch == 'y' ] || [ $ch == 'Y' ]
then
echo "YES";
else
echo "NO";
fi

#Dados tres números enteros (x, y y z) que representan los tres lados de un triángulo, identifica si el triángulo es escaleno, isósceles o equilátero.

     #Si los tres lados son iguales, la salida EQUILATERAL.
     #De lo contrario, si dos lados son iguales, envíe ISOSCELES.
     #De lo contrario, emita SCALENE.

      read x;
read y;
read z;
if [ $x -eq $y ] && [ $y -eq $z ]
then
echo "EQUILATERAL";
elif [ $x -ne $y ] && [ $x -ne $z ] && [ $y -ne $z ]
then
echo "SCALENE";
else
echo "ISOSCELES";
fi

#Se proporcionará una expresión matemática que contenga +, -, *, ^, / y paréntesis. Lea la expresión y luego evalúela. Mostrar el resultado redondeado a lugares decimales
 read line;
printf "%.3f" $(echo "scale = 4; $line" | bc);

#Dados N números enteros, calcule su promedio, redondeado a tres lugares decimales
 read t;
sum=0;
for((i=0;i<t;i++))
do
read num;
sum=$((sum+num));
done
printf "%.3f" $(echo "scale=4; $sum / $t " | bc );

#

#Procesamiento de texto

#Dadas N líneas de entrada, 3ª imprima el carácter de cada línea como una nueva línea de salida. Se garantiza que cada una de las n líneas de entrada tendrá un tercer carácter.
cut -c 3

#Muestre el segundo y séptimo carácter de cada línea de texto.
cut -c 2,7

#Muestra un rango de caracteres comenzando en la 2ª posición de una cadena y terminando en la 7ª posición (ambas posiciones incluidas).
cut -c 2-7

#Muestra los primeros cuatro caracteres de cada línea de texto.
cut -c -4

#Dado un archivo delimitado por tabulaciones con varias columnas (formato tsv) imprima los primeros tres campos.
cut -d $'\t' -f1-3

#Imprime los caracteres desde la decimo tercera posición hasta el final.
 cut -c 13-

 #Dada una oración, identifica y muestra su cuarta palabra. Suponga que el espacio ('') es el único delimitador entre palabras.
cut -d ' ' -f4

#Dada una oración, identifica y muestra su cuarta palabra. Suponga que el espacio ('') es el único delimitador entre palabras.
cut -d ' ' -f4

#Dada una oración, identifica y muestra sus primeras tres palabras. Suponga que el espacio ('') es el único delimitador entre palabras.
cut -d ' ' -f1-3 

#Dado un archivo delimitado por tabulaciones con varias columnas (formato tsv), imprima los campos desde el segundo campo hasta el último campo.
cut -f2-

# el uso del comando head para mostrar las primeras n líneas de un archivo de texto. Muestra las primeras 20 líneas de un archivo de entrada.
head -n 20 

#el uso del comando head para mostrar las primeras n líneas de un archivo de texto. Muestra las primeras 20 líneas de un archivo de entrada.
head -n 20 

#usando el comando head para mostrar los primeros n caracteres de un archivo de texto.
#Muestra los primeros 20 caracteres de un archivo de entrada.
head -c 20

#Muestre las líneas (desde la línea número 12 a la 22, ambas inclusive) de un archivo de texto dado.
head -n 22 | tail -n 11

#el uso del comando tail para mostrar las últimas n líneas de un archivo de texto. Muestra las últimas 20 líneas de un archivo de entrada.
tail -n 20

#practicamos el uso del comando tail para mostrar los últimos n caracteres de un archivo de texto. Muestra los últimos 20 caracteres de un archivo de entrada.
tail -c 20

#el uso del comando tr porque es una herramienta de traducción útil en Linux.
#En un fragmento de texto dado, reemplace todos los paréntesis ()
#con soportes de caja [].
tr '()' '[]'

#el uso del comando tr porque es una herramienta de traducción útil en Linux. en un fragmento de texto dado, elimine todos los caracteres en minúscula a-z
tr -d '[a-z]' 

#En un fragmento de texto determinado, reemplace todas las secuencias de varios espacios con un solo espacio.
tr -s ' '

#practicamos el uso del comando sort para ordenar la entrada en formato de texto o tsv.
#Dado un archivo de texto, ordene las líneas en orden lexicográfico.
sort 

#practicamos el uso del comando sort para ordenar la entrada en formato de texto o TSV.

#Dado un archivo de texto, ordene las líneas en orden lexicográfico inverso (es decir, Z-A en lugar de A-Z).
sort -r

#el uso del comando sort para ordenar la entrada en formato de texto o TSV.

#el uso del comando sort para ordenar la entrada en formato de texto o TSV.

#Se le proporciona un archivo de texto donde cada línea contiene un número. Los números pueden ser enteros o tener decimales. No habrá caracteres adicionales que no sean el número o el salto de línea al final de cada línea. 
#Ordene las líneas en orden ascendente, de modo que la primera línea contenga el número numéricamente más pequeño y la última línea contenga el número numéricamente más grande.
sort -n

#Ordene las líneas en orden descendente - - de modo que la primera línea contenga el número (numéricamente) más grande y la última línea contenga el número (numéricamente) más pequeño.
sort -n -r

#Se le proporciona un archivo de texto, que contiene información sobre la temperatura de las ciudades estadounidenses, en formato TSV 
#Reorganice las filas de la tabla en orden descendente de los valores para la temperatura promedio en enero (es decir, el valor de temperatura promedio proporcionado en la segunda columna).
sort -n -k2 -r -t $'\t'

#Se le proporciona un archivo de datos meteorológicos separados por tabulaciones 
#Las primeras cinco columnas de estos datos son: (a) el nombre de la ciudad (b) la temperatura promedio mensual en enero (en Fahreneit). (c) la temperatura media mensual en abril (en Fahreneit). (d) la temperatura media mensual en julio (en Fahreneit). (e) la temperatura media mensual en octubre (en Fahreneit).
#Debe ordenar este archivo en orden ascendente de la segunda columna (es decir, la temperatura mensual promedio en enero).
sort -n -k2 -t $'\t'

#Se le proporciona un archivo de datos meteorológicos delimitados por tuberías (TSV). No hay ninguna columna de encabezado en este archivo de datos
#Debe ordenar este archivo en orden descendente de la segunda columna (es decir, la temperatura mensual promedio en enero).
sort -n -k2 -r -t '|'

#el uso del comando uniq para eliminar las repeticiones consecutivas de una línea cuando se envía un archivo de texto a través de ella.
#Dado un archivo de texto, elimine las repeticiones consecutivas de cualquier línea.
uniq

#Dado un archivo de texto, cuente el número de veces que se repite cada línea. Solo considere las repeticiones consecutivas. Muestra el recuento y la línea separados por espacios, respectivamente. No debe haber espacios al principio o al final.
uniq -c | cut -c 7-

#compare líneas consecutivas sin distinción entre mayúsculas y minúsculas. Entonces, si una línea X va seguida de variantes de caso, la salida debe contar todas ellas como iguales 
uniq -c -i | cut -c 7-

#Dado un archivo de texto, muestre solo aquellas líneas que no están seguidas o precedidas por réplicas idénticas.
uniq -u

#Dado un archivo CSV donde cada fila contiene el nombre de una ciudad y su estado separados por una coma, su tarea es reemplazar las nuevas líneas en el archivo con pestañas como se muestra en el 
paste -s
tr '\n' '\t'

#Dado un archivo CSV donde cada fila contiene el nombre de una ciudad y su estado separados por una coma, su tarea es reestructurar el archivo de tal manera que tres filas consecutivas se pliegan en una y se separan por tabulaciones.
paste -d '\t' - - -

#Se le proporciona un archivo CSV donde cada fila contiene el nombre de una ciudad y su estado separados por una coma. Su tarea es reemplazar las nuevas líneas en el archivo con punto y coma

paste -d ';' -s

# Su tarea es reestructurar el archivo para que tres filas consecutivas se doblen en una línea y estén separadas por punto y coma.
paste -d ';' - - -

#es leerlos en una matriz y luego mostrar la matriz completa, con un espacio entre los nombres de cada uno de los países
array=($(cat))
echo ${array[@]}

#Dada una lista de países, cada uno en una nueva línea, su tarea es leerlos en una matriz. Luego, corte la matriz y muestre solo los elementos que se encuentran entre las posiciones y, ambos inclusive.
array=($(cat))
echo ${array[@]:3:5}

#En este desafío, practicamos la lectura y el filtrado de una matriz.
array=($(cat))
echo ${array[@]/*[a|A]*/}

#concatene la matriz consigo misma (dos veces), de modo que tenga un total de tres repeticiones de la matriz original, y luego muestre la matriz concatenada completa, con un espacio entre los nombres de cada uno de los países
array=($(cat))
echo ${array[@]} ${array[@]} ${array[@]}

#Given a list of countries, each on a new line, your task is to read them into an array and then display the element indexed at . Note that indexing starts from .

array=($(cat))
echo ${array[@]:3:1}

#Dada una lista de países, cada uno en una nueva línea, su tarea es leerlos en una matriz y luego mostrar el recuento de elementos en esa matriz.
array=($(cat))
echo ${#array[@]}

#Quite la primera letra mayúscula de cada elemento
array=($(cat))
echo ${array[@]/[:A-Z:]/.}

#Hay N números enteros en una matriz A. Todos los enteros menos uno aparecen en pares. Su tarea es encontrar el número que aparece solo una vez.
read
arr=($(cat))
arr=${arr[*]}
echo $((${arr// /^}))

#No habrá más de 10 filas de datos. Cada línea tendrá el formato:
[Identificador] <espacio> [Puntaje en inglés] <espacio> [Puntaje en matemáticas] <espacio> [Puntaje en ciencias]
awk 'ORS=NR%2?";":"\n"'

#practicamos el uso del comando grep para encontrar cadenas específicas o expresiones regulares.
grep -w the

#Se le proporciona un archivo de texto que se enviará a su comando a través de STDIN. Use grep para mostrar todas las líneas que contienen la palabra "the" en ellas.
grep -wi the

#Se le proporciona un archivo de texto que se enviará a su comando a través de STDIN. Utilice grep para eliminar todas aquellas líneas que contienen la palabra 'that'
grep -vi that

#ado un archivo de texto, que se enviará a su comando a través de STDIN, use grep para mostrar todas aquellas líneas que contienen cualquiera de las siguientes palabras:
#the
#that
#then
#those
grep -Ewi 'the|that|then|those'

#con N números de tarjeta de crédito, cada uno en una nueva línea, su tarea es extraer y generar solo aquellos números de tarjeta de crédito que tienen dos o más ocurrencias consecutivas del mismo dígito

grep '([0-9]) *\1+'

#Para cada línea en un archivo de entrada dado, transforme la primera aparición de la palabra 'the' con 'this'
sed -e '/the /s/the/this/'

#Para cada línea en un archivo de entrada dado, transforme todas las apariciones de la palabra  'thy' with 'your' 

sed -e 's/thy/your/ig'

#n cada línea, resalte todas las apariciones de'thy' en volviéndolas entre corchetes.
sed s/thy/{\&}/ig

# N líneas de números de tarjeta de crédito, enmascare los primeros 12 dígitos de cada número de tarjeta de crédito con un asterisco (es decir, *) e imprima el número de tarjeta enmascarado en una nueva línea.

sed 's/\([0-9]\{4\}\)/****/1' | sed 's/\([0-9]\{4\}\)/****/1' | sed 's/\([0-9]\{4\}\)/****/1'

#dado un archivo de entrada, con N números de tarjetas de crédito, cada uno en una nueva línea, su tarea es invertir el orden de los segmentos en cada número de tarjeta de crédito
sed -e 's/\([0-9]\+\) \([0-9]\+\) \([0-9]\+\) \([0-9]\+\)/\4 \3 \2 \1/'

#Se le entrega un archivo con cuatro columnas separadas por espacios que contienen las puntuaciones de los estudiantes en tres materias. La primera columna contiene un solo carácter (A-Z), el identificador del estudiante. Las siguientes tres columnas tienen tres números cada una. Los números están entre 0 y
#100. Su tarea es identificar aquellas líneas que no contienen las tres puntuaciones de los estudiantes

awk '{if($4 =="") print("Not all scores are available for"), $1}'

#Se le entrega un archivo con cuatro columnas separadas por espacios que contienen las puntuaciones de los estudiantes en tres materias. La primera columna contiene un solo carácter (A-Z), el identificador del estudiante. Las siguientes tres columnas tienen tres números cada una. Los números están entre 0 y
#100. es identificar si cada uno de los estudiantes aprobó o reprobó.
awk '{print $1,":", ($2<50||$3<50||$4<50) ? "Fail" : "Pass"}'

#Se le proporciona un archivo con cuatro columnas separadas por espacios que contienen las puntuaciones de los estudiantes en tres materias. La primera columna contiene un solo carácter (A-Z): el identificador del estudiante. Las siguientes tres columnas tienen tres números (cada uno entre 0 y 100, ambos inclusive

#Functions and Fractals - Recursive Trees - Bash!
#Este desafío involucra la construcción de árboles, en forma de Arte ASCII.
#Tenemos que lidiar con las limitaciones del mundo real, por lo que no podemos seguir repitiendo el patrón infinitamente. Por lo tanto, le proporcionaremos una serie de iteraciones, y debe generar la versión ASCII del Fractal Tree solo para esas muchas iteraciones (o niveles de recursividad)
#i el promedio de las tres calificaciones es 80 o más, la calificación es 'A'. Si el promedio es 60 o más, pero menos de 80, la calificación es 'B'. Si el promedio es 50 o más, pero menos de 60, la calificación es 'C'. De lo contrario, la calificación es "REPROBADA"
awk '{total=$2+$3+$4;
avg=total/3;
if(avg>=80) grade="A";
else if(avg>=60 && avg<80) grade ="B";
else if(avg>=50 && avg<60) grade ="C";
else grade="FAIL"; print $0,":",grade;}'

#Dados dos números enteros, X e Y, calcule su suma, diferencia, producto y cociente.
read x
read y

echo $((x + y))
echo $((x - y))
echo $((x * y))
echo $((x / y))

	





____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
_________________________________1_______________________________1__________________________________
__________________________________1_____________________________1___________________________________
___________________________________1___________________________1____________________________________
____________________________________1_________________________1_____________________________________
_____________________________________1_______________________1______________________________________
______________________________________1_____________________1_______________________________________
_______________________________________1___________________1________________________________________
________________________________________1_________________1_________________________________________
_________________________________________1_______________1__________________________________________
__________________________________________1_____________1___________________________________________
___________________________________________1___________1____________________________________________
____________________________________________1_________1_____________________________________________
_____________________________________________1_______1______________________________________________
______________________________________________1_____1_______________________________________________
_______________________________________________1___1________________________________________________
________________________________________________1_1_________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1______________________________________________

#En la parte superior de las ramas izquierda y derecha de la primera Y, ahora agregamos un par de formas de Y, que son la mitad del tamaño de la Y original.
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
____________________________________________________________________________________________________
_________________________1_______________1_______________1_______________1__________________________
__________________________1_____________1_________________1_____________1___________________________
___________________________1___________1___________________1___________1____________________________
____________________________1_________1_____________________1_________1_____________________________
_____________________________1_______1_______________________1_______1______________________________
______________________________1_____1_________________________1_____1_______________________________
_______________________________1___1___________________________1___1________________________________
________________________________1_1_____________________________1_1_________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
_________________________________1_______________________________1__________________________________
__________________________________1_____________________________1___________________________________
___________________________________1___________________________1____________________________________
____________________________________1_________________________1_____________________________________
_____________________________________1_______________________1______________________________________
______________________________________1_____________________1_______________________________________
_______________________________________1___________________1________________________________________
________________________________________1_________________1_________________________________________
_________________________________________1_______________1__________________________________________
__________________________________________1_____________1___________________________________________
___________________________________________1___________1____________________________________________
____________________________________________1_________1_____________________________________________
_____________________________________________1_______1______________________________________________
______________________________________________1_____1_______________________________________________
_______________________________________________1___1________________________________________________
________________________________________________1_1_________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________
_________________________________________________1__________________________________________________

declare -A matrix
num_rows=63
num_columns=100

declare -a roots
roots[0]=50

for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
        matrix[$i,$j]='_'
    done
done

read n
j=63
len=16
for ((i=1; i<=n; i++)) do
    lim=$((${#roots[@]}-1))
    elems=${#roots[@]}
    old_j=$j
    for((k=0; k<=lim; k++)) do
        pos=${roots[$k]}
        #print the trunk
        for((m=0; m<=len-1; m++)) do
            matrix[$j,$pos]='1'
            ((j--))
        done
        #print the branches
        for((m=1; m<=len; m++)) do
            matrix[$j,$((pos-m))]='1'
            matrix[$j,$((pos+m))]='1'
            ((j--))
        done
        roots=("${roots[@]}" "$((pos-m+1))" "$((pos+m-1))" )
        if (( $k < $lim ))
        then
            j=$old_j
        fi
    done
    for((k=0; k<$elems; k++)) do
        unset roots[$k]
    done
    roots=( "${roots[@]}" )
    len=$((len/2))
done

# print the matrix
for ((i=1;i<=num_rows;i++)) do
    for ((j=1;j<=num_columns;j++)) do
        printf ${matrix[$i,$j]}
    done
    printf "\n"
done
