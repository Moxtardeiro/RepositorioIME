12 # 2. Una muestra de tama ño 6 y nivel de significaci ón 0.01.
13 # 3. Una muestra de tama ño 10 y nivel de significaci ón 0.05.
14 # 4. Una muestra de tama ño 10 y nivel de significaci ón 0.01.
15 n_6_ alfa _05 <- power .t. test (n = 6,
                                    16 delta = efecto ,
                                    17 sd = 1,
                                    18 sig . level = 0.05 ,
                                    19 type = "one. sample ",
                                    20 alternative = " two. sided ")$ power
21
22 n_6_ alfa _01 <- power .t. test (n = 6,
                                    23 delta = efecto ,
                                    24 sd = 1,
                                    25 sig . level = 0.01 ,
                                    26 type = "one. sample ",
                                    27 alternative = " two. sided ")$ power
28
29 n _10_ alfa _05 <- power .t. test (n = 10,
                                      30 delta = efecto ,
                                      31 sd = 1,
                                      32 sig . level = 0.05 ,
                                      33 type = "one. sample ",
                                      34 alternative = " two. sided ")$ power
35
36 n _10_ alfa _01 <- power .t. test (n = 10,
                                      37 delta = efecto ,
                                      38 sd = 1,
                                      39 sig . level = 0.01 ,
                                      40 type = "one. sample ",
                                      41 alternative = " two. sided ")$ power
42
43 # Construir matriz de datos en formato ancho .
44 datos <- data . frame (efecto , n _6_ alfa _05 , n_6_ alfa _01 ,
                          45 n _10_ alfa _05 , n _10_ alfa _01)
46
47 # Llevar a formato largo .
48 datos <- datos %> % pivot _ longer (!" efecto ",
                                       49 names _to = " fuente ",
                                       50 values _to = " poder ")
51
52 # Formatear fuente como variable categ ó rica .
53 niveles <- c("n_6_ alfa _05", "n_6_ alfa _01", "n _10_ alfa _05 ",
                54 "n _10_ alfa _01")
55
56 etiquetas <- c("n=6, alfa =0 ,05", "n=6, alfa =0 ,01", "n=10 , alfa =0 ,05",
                  57 "n=10 , alfa =0 ,01")
58
59 datos [[" fuente "]] <- factor ( datos [[" fuente "]], levels = niveles ,
                                    60 labels = etiquetas )
61
62 # Graficar las curvas de poder .
63 g <- ggplot (datos , aes (efecto , poder , colour = factor ( fuente )))
64 g <- g + geom _ line ()
65 g <- g + labs ( colour = "")
66 g <- g + ylab (" Poder estad í stico ")
67 g <- g + xlab (" Tama ño del efecto ")
68
69 g <- g + scale _ color _ manual ( values =c("red ", " blue ", " chartreuse4 ",
                                               70 " orange "))
71
72 g <- g + theme _ pubr ()
73 g <- g + ggtitle (" Curvas de poder para prueba t bilateral ")
74 g <- g + geom _ vline ( xintercept = 0, linetype = " dashed ")
75
76 print (g)