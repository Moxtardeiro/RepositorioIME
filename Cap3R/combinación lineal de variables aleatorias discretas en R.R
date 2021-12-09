library ( discreteRV )

# Crear una variable discreta para representar el dado adulterado de la tabla
# 3.1 , y calcular su valor esperado , varianza y desviaci ón está ndar .
resultados <- 1:6
probabilidades = c(0.25 , 0.125 , 0.125 , 0.125 , 0.125 , 0.25)
X <- RV( outcomes = resultados , probs = probabilidades )
esperado _x <- E(X)
varianza _x <- V(X)
desviacion _x <- SD(X)
cat ("E(X):", esperado _x, "\n")
cat ("V(X):", varianza _x, "\n")
cat ("SD(X):", desviacion _x, "\n\n")

# Crear una variable aleatoria para un dado balanceado , y calcular su valor
# esperado , varianza y desviaci ón está ndar .
Y <- RV( outcomes = resultados , probs = 1/6)
esperado _y <- E(Y)
varianza _y <- V(Y)
desviacion _y <- SD(Y)
cat ("E(Y):", esperado _y, "\n")
cat ("V(Y):", varianza _y, "\n")
cat ("SD(Y):", desviacion _y, "\n\n")

# Crear una combinaci ón lineal de variables aleatorias , y calcular su valor
# esperado , varianza y desviaci ón est á ndar .
Z <- 0.5 * X + 0.5 * Y
esperado _z <- E(Z)
varianza _z <- V(Z)
desviacion _z <- SD(Z)
cat ("E(Z):", esperado _z, "\n")
cat ("V(Z):", varianza _z, "\n")
cat ("SD(Z):", desviacion _z)