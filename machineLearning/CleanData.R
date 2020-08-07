#Limpieza de datos
x <- c(30,NA, 40, NA, 50, 55)
is.na(x)
#filtrar los datos del vector que no sean NA
x[!is.na(x)]
mean(x, na.rm = TRUE) ##Media ignorando valores NA
######### More datasets https://stat.ethz.ch/R-manual/R-devel/library/datasets/html/00Index.html
data("airquality")
air <- airquality
sum(is.na(air))
summary(air)
colSums(is.na(air))

###compute NA values to median
air$Ozone[is.na(air$Ozone)] <- median(air$Ozone, na.rm= TRUE)
air$Solar.R[is.na(air$Solar.R)] <- median(air$Solar.R, na.rm= TRUE)

### Otra forma
air2 <- na.omit(airquality)
sum(is.na(air2))

### OUTLIERS valores atipicos
boxplot(air2)
###IQR rango intercuartilico
ric <- IQR(air2$Ozone)
q2 <- quantile(air2$Ozone,0.75)
air2[air2$Ozone > q2+1.5*ric,]


###Variables categoricas
data("Titanic")
t1 <- as.data.frame(Titanic)
###cambio los valores de la calse 1st 2nd 3rd y crew a numerica para poder trabajar
t1$Class_num <- ifelse(t1$Class=="1st",1,
                       ifelse(t1$Class=="2nd",2,
                              ifelse(t1$Class=="3rd",3,4)))
t1$Sex_num <- ifelse(t1$Sex=="Male",0,1)
t1$Age_num <- ifelse(t1$Age=="Child",0,1)
t1$Survived_num <- ifelse(t1$Survived=="No",0,1)

###One hot enconding transforma las columnas categoricas a binarias
install.packages("dummies")
library(dummies)
bint1 <- dummy.data.frame(t1)
