1 library ( ggpubr )
2
3 # Generar una muestra donde la media cumpla con la hipó tesis nula .
4 set . seed (208)
5
6 media _ poblacion _ antiguo <- 530
7 media _ muestra _ nuevo <- 527.9
8 desv _ est <- 48
9 n <- 1600
10 error _est <- desv _est / sqrt (n)
11
12 x <- seq( media _ poblacion _ antiguo - 5.2 * error _est ,
             13 media _ poblacion _ antiguo + 5.2 * error _est ,
             14 0.01)
15
16 y <- dnorm (x,
               17 mean = media _ poblacion _ antiguo ,
               18 sd = error _est )
19
20 dataframe <- data . frame (x, y)
21
22 # Graficar la muestra .
23 g <- ggplot ( data = dataframe , aes(x))
24
25 g <- g + stat _ function (fun = dnorm ,
                             26 args = list ( mean = media _ poblacion _ antiguo ,
                                              27 sd = error _est ),
                             28 colour = " steelblue ", size = 1)
  29
30 g <- g + ylab ("")
31 g <- g + scale _y_ continuous ( breaks = NULL )
32 g <- g + scale _x_ continuous ( name = " Tiempo de procesamiento [ms]")
33 g <- g + theme _ pubr ()
34
35 # Colorear el área igual o menor que la media observada .
36 g <- g + geom _ area ( data = subset ( dataframe ,
                                          37 x < media _ muestra _ nuevo ),
                          38 aes (y = y),
                          39 colour = " steelblue ",
                          40 fill = " steelblue ",
                          41 alpha = 0.5)
42
43 # Calcular el área bajo la cola inferior .
44 area _ inferior <- pnorm ( media _ muestra _nuevo ,
                              45 mean = media _ poblacion _ antiguo ,
                              46 sd = desv _est )
47
48
49 # Colorear igual área en la cola restante .
50 corte _x <- qnorm (1 - area _ inferior ,
                      51 mean = media _ poblacion _ antiguo ,
                      52 sd = desv _est )
53
54 g <- g + geom _ area ( data = subset ( dataframe ,
                                          55 x > corte _x),
                          56 aes (y = y),
                          57 colour = " steelblue ",
                          58 fill = " steelblue ",
                          59 alpha = 0.5)
60
61 # Agregar una línea vertical para el valor nulo .
62 g <- g + geom _ vline (aes( xintercept = media _ poblacion _ antiguo ),
                          63 color = " red", linetype = 1)
64
65 print (g)
66
67 # Calcular el valor Z para la muestra .
68 Z <- ( media _ muestra _ nuevo - media _ poblacion _ antiguo ) / error _ est
69
70 # Calcular el valor p ( recordando ahora que la hip ó tesis es bilateral ).
71 p <- 2 * pnorm (Z, lower . tail = TRUE )
72
73 cat (" Valor p: ", p)