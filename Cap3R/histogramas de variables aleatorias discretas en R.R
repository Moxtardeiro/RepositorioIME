library ( discreteRV )
library ( ggpubr )

# Crear una variable discreta para representar el dado
# adulterado de la tabla 4.1.
resultados <- 1:6

probabilidades = c(0.25 , 0.125 , 0.125 , 0.125 , 0.125 , 0.25)
X <- RV( outcomes = resultados , probs = probabilidades )

# Crear vector con los resultados de 5 lanzamientos del dado .
lanzar _5 <- SofIID (X, n=5)

# Crear vector con los resultados de 10 lanzamientos del dado .
lanzar _10 <- SofIID (X, n =10)

# Crear vector con los resultados de 20 lanzamientos del dado .
lanzar _20 <- SofIID (X, n =20)

# Graficar los resultados .
par ( mfrow =c(1, 3))

plot ( lanzar _5,
          main =" Lanzamiento de 5 dados ",
          xlab =" Suma de resultados ",
          ylab =" Probabilidad ")

plot ( lanzar _10 ,
          main =" Lanzamiento de 10 dados ",
          xlab =" Suma de resultados ",
          ylab =" Probabilidad ")

plot ( lanzar _20 ,
          main =" Lanzamiento de 20 dados ",
          xlab =" Suma de resultados ",
          ylab =" Probabilidad ")