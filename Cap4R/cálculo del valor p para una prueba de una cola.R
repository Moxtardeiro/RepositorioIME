1 library ( ggpubr )
2
3 # Generar una muestra donde la media cumpla con la hipó tesis nula .
4 set . seed (872)
5
6 media _ poblacion _ antiguo <- 530
7 media _ muestra _ nuevo <- 527.9
8 desv _est <- 48
9 n <- 1600
10 error _est <- desv _est / sqrt (n)
11
12 x <- seq( media _ poblacion _ antiguo - 5.2 * error _est ,
             13 media _ poblacion _ antiguo + 5.2 * error _est ,
             14 0.01)
15
16 y <- dnorm (x, mean = media _ poblacion _ antiguo , sd = error _est)
17
18 datos <- data . frame (x, y)
19
20 # Graficar la muestra .
21 g <- ggplot ( data = datos , aes(x))
22
23 g <- g + stat _ function (fun = dnorm ,
                             24 args = list ( mean = media _ poblacion _ antiguo ,
                                              25 sd = error _est ),
                             26 colour = " steelblue ", size = 1)
  27
28 g <- g + ylab ("")
29 g <- g + scale _y_ continuous ( breaks = NULL )
30 g <- g + scale _x_ continuous ( name = " Tiempo de procesamiento [ms]")
31 g <- g + theme _ pubr ()
32
33 # Colorear el área igual o menor que la media observada .
34 g <- g + geom _ area ( data = subset (datos ,
                                         35 x < media _ muestra _ nuevo ),
                          36 aes (y = y),
                          37 colour = " steelblue ",
                          38 fill = " steelblue ",
                          39 alpha = 0.5)
40
41 # Agregar una línea vertical para el valor nulo .
42 g <- g + geom _ vline (aes ( xintercept = media _ poblacion _ antiguo ),
                          43 color = " red", linetype = 1)
44
45 print (g)
46
47 # Calcular el valor Z para la muestra .
48 Z <- ( media _ muestra _ nuevo - media _ poblacion _ antiguo ) / error _est
50 # Calcular el valor p.
51 p_1 <- pnorm (Z, lower . tail = TRUE )
52
53 cat (" Valor p: ", p_1, "\n")
54
55 # Tambi én se puede calcular el valor p directamente a partir de la
56 # distribuci ón muestral definida por el valor nulo y el error
57 # est á ndar .
58 p_2 <- pnorm ( media _ muestra _nuevo , mean = media _ poblacion _ antiguo ,
                  59 sd = est_err)
60
61 cat (" Valor p: ", p_2)