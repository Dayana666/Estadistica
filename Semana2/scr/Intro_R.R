## Semana 2: Introduccion a R##
##Lizeth Dayana Villamizar Leal, 18/10/19, GLP-2
## Ejercicio 1. Reasigne 5 a la letra *z*, usando el operador *<-*, ahora, pregunte ¿qué es *z*?

4 -> z

z <- 5

z

## ejercicio 2.Revisemos que es rnorm(1). Empecemos buscando la funcion en help o ?rnorm

?rnorm

rnorm(1)

## ejercicio 3. multiplique x por 2 y sumele 1 y dividalo por 1.5, ese resultado elevelo al cuadrado. 
#Esto se escribe igual que en una calculadora manual.

x <- 1:10

(((x*2)+1)/1.5)^2

# Ejercicio 4. tome cualquier objeto anterior y preguntele la clase#

enteros <- seq(from = 1,to = 10,by = 2)

class(enteros)

# Ejercicio 5.  ¿Qual clase tiene el vector?#

prueba <- c(1, "perro", FALSE, "gato", 1.5)

class(prueba)

# Ejercicio 6.  Hasta el momento hemnos generado varios vectores/objetos/variables, 
#podemos listarlas usando la funcion ls() o ls.str(), la cual nos permite, 
#no solo ver las variables, sino el tipo de cada una.

ls()
ls.str()


# Ejercicio 7. Cree un una secuencia que repita los numeros de 1 a 4, 3 veces y#
# asignela a un objeto llamado vector1. Ahora, cree una secuencia de numeros #
# pares del 2 al 24 y asignela a un objeto llamado vector2.Genere un arreglo #
# con ambos vectores y busque la columna 2, fila 1 de la segunda matriz y para la primera.#

vector1<-rep(1:4,3)
vector2<- seq(2,24,2)
x <-array(data = c(vector1,vector2),dim = c(3,4,2))

x[1,2,2]

x[1,2,1]

# Ejercicio 8. tome la primera columna y la segunda, concatenelas con c() ¿Que encuentra? 
# Ahora, tome amabas columnas y use la funcion cbind(), asignelo a un objeto 
# llamado minuevatabla. Haga lo mismo, con las filas del 1:5 y del 10:30, use 
# primero c() y luego rbind() ¿Que encuentra?

data(iris)

# Concatenando las dos primeras columnas
c(iris[,1],iris[,2])

# Usando la funcion cbind para unir las dos columnas

cbind(iris[,1],iris[,2])

# asignando las dos primeras columnas a  un vector llamado minuevatabla##

minuevatabla<- cbind(iris[,1],iris[,2])

minuevatabla

# Concatenando las filas del 1:5 y del 10:30##

c(iris[1:5,],iris[10:30,])


rbind(iris[1:5,],iris[10:30,])

# Ejercicio final#
# Busque el archivo suministrado por el profesor, carguelo a R y revise que contiene. 
# Extraiga las 5 primeras columnas con las 10 primeras filas, escriba esa nueva matriz 
# como csv en su computador.


#Descargar Araceae https://datadryad.org/stash/dataset/doi:10.5061/dryad.68n40


#Leer archivo

data <- read.csv('Matrix_Multivariate_Mega.csv')


# extraer las 5 primeras columnas con las 10 primeras filas

x <- data[1:5,1:10]

# Escribir en el archivo final

write.csv(x, file = "mi_matriz.csv", append = FALSE, quote = TRUE, sep = ";", na = "NA", dec = ".", row.names = TRUE, col.names = TRUE)
