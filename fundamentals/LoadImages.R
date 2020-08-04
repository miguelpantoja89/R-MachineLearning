x <- 3
y <-5 
##Listar objetos diferentes variables creadas
objects()

##Eliminar variables
remove(x)
## guardar la imagen
save.image(file = "variables.RData")
### vaciar todas las variables
remove(list= ls())

##Recuperar las variables
load(file = "variables.RData")

### Other
d = 3.14
s = "pi"
sprintf("%s is not just %g",s,d)

### Vectores
v = c(12,5,89,6,78)

20/v
