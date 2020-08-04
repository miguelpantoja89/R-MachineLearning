#Tipos de datos
#character
"123"
"hola"

#Numeric
23
pi

#Integer
23L

#Logicos
TRUE
FALSE
T
F

## Para conocer tipo de datos
x <- 3L
class(x)

#Cambios entre tipos
z <- as.numeric("123")
class(z)
as.logical(0)
as.numeric(T)

#Operadores logicos
7 < 10
7 ==8
7 != 9
7 > 10
3 > 7 & 8 > 2
3 > 7 | 8 > 2

### vectores

w <- vector() 
v_num <- c(1.4,4,7.8,9)
as.character(v_num)

length(v_num)
l <- c(1,2,4,7,8)
l[3]
l[1] ###El primero es el 1 no el 0, OJOOOO
l[2:4]
l[l>3 & l<8] ### Coger los valores que son mayores que 3 y menor que 8

## Operaciones de vectores
v1 <- c(1,2,4,6,7,9)
v2 <- c(8,9,7,6,5,4)
v1 + v2
v1 / v2
v1 * v2
v1 %*% v2 ###producto escalar
max(v1)
min(v2)
which.max(v2)

##Secuencias
seq1 <- 1:10
sq2 <- seq(from=2,to=10,by=2) ##Desde hasta y saltando de 2 en 2
sq2

###Muestras aleatorias
sample(5) # De 5 elementos sin repeticion

rnorm(n=3,mean=5,sd=2) #3 valores de distr normal con media 5 y desviacion 2

##Listas 
lst1 <- list(edades = c(21,20,22), nombres=c("Juan","Antonio","Martin"))
###Para acceder a elementos de una lista
lst1$nombres[2] ###Accedemos a Antonio

##Introducir nuevo elemento a la lista
lst1$nuevo = c(T,F,T)

##Factores
fa1 <- factor(c("H","M","M","H","H"))
fa1   ###Nos dice los niveles, elementos unicos
