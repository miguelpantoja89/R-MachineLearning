###Default functions

##Num Functions
a = -25
a = abs(a)
a
sqrt(a)
b= 4.25
ceiling(b) ## Techo
floor(b)   ## Suelo
c = 7.82
trunc(c) ## Parte entera
round(c,1) ##Redondea
x = 12
y = 7
x%%y ### x mod y
x/y
x%/%y ### division entera

################Char functions
f = 'hello'
substring(f,2,4)
grep('ell',f,ignore.case = FALSE)
h = 'hello,coders,how,u,doing?'
strsplit(h,',')
toupper(h)
tolower(h)

####Stadistics 
vector = c(10,13,4,5,9)

mean(vector)
median(vector)
range(vector)
min(vector); max(vector)
sum(vector) ###Sumatorio

###Some other functions
x = 4:13 ## Vector step 1
x
sort(x)
length(x)
which.min(x) ###Regresa el indice del minimo
which.max(x)

d = c(4,5,6,7,7,7,8,9) ### vector con valores repetidos
z= unique(d) ### Elimina repetidos
print(z)
class(z) ## Regresa la clase
is.numeric(z)
is.vector(z)
is.na(z)
