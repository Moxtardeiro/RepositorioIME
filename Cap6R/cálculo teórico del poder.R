1 library ( ggpubr )
2 library (pwr)
3
4 # Fijar valores conocidos .
5 sigma <- 12
6 alfa <- 0.05
7 n <- 36
8
9 # Calcular el error está ndar .
10 SE <- sigma / sqrt (n)
11
12 # Grá ficar la distribuci ón muestral de la media de las diferencias si
13 # la hipó tesis nula fuera verdadera .
14 x <- seq (-6 * SE , 4 * SE , 0.01)
15 y <- dnorm (x, mean = media _nula , sd = SE)
16 g <- ggplot ( data = data . frame (x, y), aes(x))
17
18 g <- g + stat _ function (
  19 fun = dnorm ,
  20 args = list ( mean = media _nula , sd = SE),
  21 colour = "red ", size = 1)
  22
23 g <- g + ylab ("")
24 g <- g + scale _y_ continuous ( breaks = NULL )
25 g <- g + scale _x_ continuous ( name = " Diferencia en tiempos de ejecuci ón [ms]",
                                   26 breaks = seq (-6, 4, 2))
27
28 g <- g + theme _ pubr ()
29
30 # Colorear la regi ón de rechazo de la hipó tesis nula .
31 media _ nula <- 0
32 Z_ critico <- qnorm ( alfa /2, mean = media _nula , sd = SE , lower . tail = FALSE )
33 q_ critico _ inferior <- media _ nula - Z_ critico
34 q_ critico _ superior <- media _ nula + Z_ critico
35
36 g <- g + geom _ area ( data = subset (df , x < q_ critico _ inferior ),
                          37 aes (y = y),
                          38 colour = "red ",
                          39 fill = "red",
                          40 alpha = 0.5)
41
42 g <- g + geom _ area ( data = subset (df , x > q_ critico _ superior ),
                          43 aes (y = y),
                          44 colour = "red ",
                          45 fill = "red",
                          46 alpha = 0.5)
47
48 print (g)
49
50 # Superponer la distribuci ón muestral de la media de las diferencias
51 # si la la diferencia de medias fuera -4.
52 g <- g + stat _ function (
  53 fun = dnorm ,
  54 args = list ( mean = media _efecto , sd = SE),
  55 colour = " blue ", size = 1)
  56
57 # Colorear la regi ón de la nueva curva situada en la regi ón de
58 # rechazo de la curva original .
59 x1 <- seq (-6 * SE , 4 * SE , 0.01)
60 y1 <- dnorm (x, mean = media _efecto , sd = SE)
61 g <- g + geom _ area ( data = subset ( data . frame (x1 , y1),
                                          62 x < q_ critico _ inferior ),
                          63 aes (x = x1 , y = y1),
                          64 colour = " blue ",
                          65 fill = " blue ",
                          66 alpha = 0.5)
67
68 g <- g + geom _ area ( data = subset ( data . frame (x1 , y1),
                                          69 x > q_ critico _ superior ),
                          70 aes (x = x1 , y = y1),
                          71 colour = " blue ",
                          72 fill = " blue ",
                          73 alpha = 0.5)
74 print (g)
75
76 # Calcular el poder de acuerdo al aná lisis teó rico .
77 poder <- pnorm (q_ critico _ inferior ,
                   78 mean = media _efecto ,
                   79 sd = SE ,
                   80 lower . tail = TRUE )
81 + pnorm (q_ critico _ superior ,
            82 mean = media _efecto ,
            83 sd = SE ,
            84 lower . tail = FALSE )
85
86 cat (" Poder = ", poder , "\n")
87
88 # Calcular la probabilidad de cometer un error tipo II.
89 beta <- 1 - poder _ teorico
90 cat (" Beta = ", beta , "\n")