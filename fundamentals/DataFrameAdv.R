load(ChickWeight)
ChickWeight

ChickWeight$weightPerDay <- ChickWeight$weight / (ChickWeight$Time+1)
ChickWeight$weightPerDay <- NULL

ChickWeight[-c(560),] ###Todas menos esa


###combinar Dataframes

##interseccion de dataframes
df1 <- data.frame(Ciudades=c("Sevilla","Granada","Huelva","Cadiz"),
                 Habitantes= c(150,100,98,76),
                 Precipitaciones=c(103,44,140,78))
df2 <- data.frame(Ciudades=c("Sevilla","Santander","Huelva","Cadiz"),
                 Habitantes= c(150,30,98,76),
                 Precipitaciones=c(103,12,140,78),
                 Precios=c(10,20,15,39))
remove(dfT)
dfT <- merge(df1,df2,by="Ciudades",all= TRUE) ###by que tienen en comun, all true para que no elimine las diferentes


###
df3 <- data.frame(Paro=c(100,34,200,340),other=c(103,44,140,78))
####cbind()
####rbind()

###Agregacion de datos
aggregate(weight ~ Diet, ChickWeight, mean) ###Media por dieta de los pesos
aggregate(. ~ Diet, ChickWeight, mean) ###Media de cada dieta para todas las variables
aggregate(cbind(weight,Time) ~ Diet, ChickWeight, max) ###Maximo peso y tiempo para cada dieta
