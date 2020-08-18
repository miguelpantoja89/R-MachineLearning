###One variable LReg
data("cars")
cars
plot(cars$speed, cars$dist, xlab = 'velocidad', ylab = 'dist. frenada',main = 'Coches')

model <- lm(dist ~ speed, data = cars)
summary(model)

abline(a = model$coefficients[1], b= model$coefficients[2], col='red')


### Predictions
predict(model, data.frame(speed=c(10,20,30,40,50)))

## RMSE error cuadratico medio
RMSE <- function(error){
  sqrt(mean(error^2))
}

##  MAE Error medio
MAE <- function(error){
  mean(abs(error))
}

pr <- predict(model,cars)
error <- pr - cars$dist ###Residuos, nos lo proporciona ya el modelo
model$residuals
error
MAE(error)
RMSE(error)

#### More vars
install.packages("carData")
library(carData)
data("Salaries")
Salaries
 
model2 <- lm(salary~sex,data = Salaries) ### EL salario depende del sexo?
summary(model2)
####
model2 <- lm(salary ~ . , data=Salaries ) ### Con todas las vars
summary(model2)

predict(model2, data.frame(rank='AsstProf', discipline='B',yrs.since.phd=3,yrs.service=1,sex='Male'))
