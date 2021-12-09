1 # Fijar valores conocidos
2 n_ hombres <- 89
3 n_ mujeres <- 61
4 exitos _ hombres <- 45
5 exitos _ mujeres <- 21
6 alfa <- 0.05
7 valor _ nulo <- 0.1
8
9 # Calcular probabilidades de é xito .
10 p_ hombres <- exitos _ hombres / n_ hombres
11 p_ mujeres <- exitos _ mujeres / n_ mujeres
12
13 # Estimar la diferencia .
14 diferencia <- p_ hombres - p_ mujeres
15
16 # Prueba de hipó tesis .
17 p_ agrupada <- ( exitos _ hombres + exitos _ mujeres ) / (n_ hombres + n_ mujeres )
18 error _ hombres <- (p_ hombres * (1 - p_ hombres )) / n_ hombres
19 error _ mujeres <- (p_ mujeres * (1 - p_ mujeres )) / n_ mujeres
20 error _est <- sqrt ( error _ hombres + error _ mujeres )
21 Z <- ( diferencia - valor _ nulo ) / error _est
22 p <- pnorm (Z, lower . tail = FALSE )
23 cat ("Hipó tesis alternativa bilateral \n")
24 cat ("Z =", Z, "\n")
25 cat ("p =", p)