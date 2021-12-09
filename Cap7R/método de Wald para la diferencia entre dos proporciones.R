1 # Fijar valores conocidos
2 n_ hombres <- 48
3 n_ mujeres <- 42
4 exitos _ hombres <- 26
5 exitos _ mujeres <- 20
6 alfa <- 0.05
7 valor _ nulo <- 0
8
9 # Calcular probabilidades de é xito .
10 p_ hombres <- exitos _ hombres / n_ hombres
11 p_ mujeres <- exitos _ mujeres / n_ mujeres
12
13 # Estimar la diferencia .
14 diferencia <- p_ hombres - p_ mujeres
15
16 # Construcci ón del intervalo de confianza .
17 error _ hombres <- (p_ hombres * (1 - p_ hombres )) / n_ hombres
18 error _ mujeres <- (p_ mujeres * (1 - p_ mujeres )) / n_ mujeres
19 error _est <- sqrt ( error _ hombres + error _ mujeres )
20 Z_ critico <- qnorm ( alfa / 2, lower . tail = FALSE )
21 inferior <- diferencia - Z_ critico * error _ est
22 superior <- diferencia + Z_ critico * error _ est
23 cat (" Intervalo de confianza = [", inferior , ", ", superior , "]\n", sep = "")
24
25 # Prueba de hipó tesis .
26 p_ agrupada <- ( exitos _ hombres + exitos _ mujeres ) / (n_ hombres + n_ mujeres )
27 error _ hombres <- (p_ agrupada * (1 - p_ agrupada )) / n_ hombres
28 error _ mujeres <- (p_ agrupada * (1 - p_ agrupada )) / n_ mujeres
29 error _est _hip <- sqrt ( error _ hombres + error _ mujeres )
30 Z <- ( diferencia - valor _ nulo ) / error _ est_hip
31 p <- 2 * pnorm (Z, lower . tail = FALSE )
32 cat ("Hipó tesis alternativa bilateral \n")
33 cat ("Z =", Z, "\n")
34 cat ("p =", p)