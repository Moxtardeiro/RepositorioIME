1 library ( ggpubr )
2
3 # Generar un vector con un rango para el tama ño de la muestra .
4 n <- seq (5, 8000 , 5)
5
6 # Definir constantes
7 desv _ est <- 6
8 alfa <- 0.05
9 tam _ efecto <- 0.5
10
11 # Se calcula el poder con que se detecta el tama ño del efecto para
12 # cada tama ño de la muestra , asumiendo una prueba bilateral para
13 # una sola muestra .
14 poder <- power .t. test (n = n,
                            15 delta = tam_efecto ,
                            16 sd = desv _est ,
                            17 sig . level = alfa ,
                            18 type = "two. sample ",
                            19 alternative = " two. sided ")$ power
20
21 # Crear un data frame .
22 datos <- data . frame (n, poder )
23
24 # Graficar la curva de poder .
25 g <- ggplot (datos , aes (n, poder ))
26 g <- g + geom _ line ( colour = "red")
27 g <- g + ylab (" Poder estad í stico ")
28 g <- g + xlab (" Tama ño de la muestra ")
29 g <- g + theme _ pubr ()
30 g <- g + ggtitle (" Relaci ón entre el poder y el tama ño de la muestra ")
31
32 print (g)