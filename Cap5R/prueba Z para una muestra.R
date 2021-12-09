1 library ( TeachingDemos )
2 library ( ggpubr )
3
4 # Ingresar los datos .
5 muestra <- c (19.33 , 29.37 , 29.14 , 32.10 , 25.04 , 22.22 , 31.26 , 26.92 ,
                6 31.40 , 17.66 , 22.55 , 20.69 , 24.68 , 28.74 , 26.85 , 29.68 ,
                7 29.27 , 26.72 , 27.08 , 20.62)
8
9 # Establecer los datos conocidos .
10 desv _est <- 2.32
11 n <- length ( muestra )
12 valor _ nulo <- 20
13
14 # Crear grá fico Q-Q para verificar la distribuci ón de la muestra ,
15 datos <- data . frame ( muestra )
16
17 g <- ggqqplot (datos , x = " muestra ", color = " SteelBlue ")
18 print (g)
19
20 # Verificar distribuci ón muestral usando la prueba de normalidad
21 # de Shapiro - Wilk .
22 normalidad <- shapiro . test ( muestra )
23 print ( normalidad )
24
25 # Fijar un nivel de significaci ón.
26 alfa <- 0.01
27
28 # Calcular la media de la muestra .
29 cat ("\ tPrueba Z para una muestra \n\n")
30 media <- mean ( muestra )
31 cat (" Media =", media , "M$\n")
32
33 # Calcular el estad í stico de prueba .
34 Z <- ( media - valor _ nulo ) / desv _est
35 cat ("Z =", Z, "\n")
36
37 # Calcular el valor p.
38 p <- 2 * pnorm (Z, lower . tail = FALSE )
39 cat ("p =", p, "\n")
40
41 # Hacer la prueba Z con R.
42 prueba <- z. test (media , mu = valor _nulo , alternative = "two. sided ",
                      43 stdev = desv _est , conf . level = 1- alfa )
44
45 print ( prueba )