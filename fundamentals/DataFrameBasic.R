###Dataframes
df <- data.frame(Ciudades=c("Sevilla","Granada","Huelva","Cadiz"),
                 Habitantes= c(150,100,98,76),
                 Precipitaciones=c(103,44,140,78))
####Operaciones
nrow(df) #Num filas del data frames
ncol(df)
names(df) #Labels
df$Ciudades
df[,c("Ciudades","Precipitaciones")] ####[fila, columna] con nombres o indices
df[,2:3]
df[1:2,]

###Borrar colmns
df$Habitantes <- NULL
df

###Cambiar labels
names(df) <- c("Cities","Lluvia")
df

###Filtros
subset(df, Lluvia > 130) ###Huelva tiene mas de 130 de precipitaciones

###Load Dataframes de R
data("ChickWeight")
ChickWeight
head(ChickWeight)
tail(ChickWeight)
summary(ChickWeight) ####Datos importantes


##Valores unicos
length(unique(ChickWeight$Chick))

#Multifiltro
subset(ChickWeight, Diet == 3 & Time==21)

###ordenar
ChickWeight[order(ChickWeight$weight),] ###ordenado por la var weight

###Add col con valores condicionales
ChickWeight$type <- ifelse(ChickWeight$weight> 50, "pesado","no pesado")
