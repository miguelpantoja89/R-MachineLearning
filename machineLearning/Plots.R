###Plotting
x <- 0:10
y <- log(x,base = exp(1))
plot(x,y,type = 'l', xlab = "tiempo", ylab= "horas",main = "Carrera", xlim = c(0,5), ylim = c(0,3))

#Scatter
x1 <- rnorm(100)
y2 <- rnorm(100)
plot(x1,y2)


#Histogram

z <- rnorm(1000)
hist(z)

##Barplot con frecuencias
f <- c(1,1,1,3,3,4,5,6,7,7,7,7,7,8,8,8,9,9)
barplot(table(f)) # con table hacemos para las frec

###Other plots
x <- -10:10
y <- x
func <- function(x,y){
  1-abs(x+y)-abs(y-x)
}
z <- outer(x,y,func)
persp(x,y,z, col="green", shade = TRUE, phi = 15, theta = -25)


