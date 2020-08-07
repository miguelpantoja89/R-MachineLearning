####Relacion entre variables
datos <- as.table(matrix(c(5,1,3,10,8,3), ncol = 3))
colnames(datos) <- c("Alta","Baja","Media")
rownames(datos) <- c("Hombre","Mujer")
datos
chisq.test(datos)

###coeficiente correlacion
hora <- c(7,4,12,11,8,6,11,5)
peso <- c(74,50,89,84,65,60,70,52)
cor.test(hora,peso)

install.packages("corrplot")
library(corrplot)
corrplot(cor(iris[,1:4]), type = "upper")

Ownership <- read.csv("https://wiki.q-researchsoftware.com/images/b/b9/Ownership.csv")
corrplot(cor(Ownership),type = "upper")
