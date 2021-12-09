1 # Fijar valores conocidos
2 n <- 150
3 p_ exito <- 0.64
4 alfa <- 0.05
5 valor _ nulo <- 0.7
6
7 # Construcci ón del intervalo de confianza .
8 error _est <- sqrt ((p_ exito * (1 - p_ exito )) / n)
9 Z_ critico <- qnorm ( alfa / 2, lower . tail = FALSE )
10 inferior <- p_ exito - Z_ critico * error _est
11 superior <- p_ exito + Z_ critico * error _est
12 cat (" Intervalo de confianza = [", inferior , ", ", superior , "]\n", sep = "")
13
14 # Prueba de hipó tesis .
15 error _est _hip <- sqrt (( valor _ nulo * (1 - valor _ nulo )) / n)
16 Z <- (p_ exito - valor _ nulo ) / error _est _hip
17 p <- pnorm (Z, lower . tail = FALSE )
18 cat ("Hipó tesis alternativa unilateral \n")
19 cat ("Z =", Z, "\n")
20 cat ("p =", p)