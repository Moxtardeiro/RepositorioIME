1 library ( ggpubr )
2
3 # Cargar los datos .
4 vacuna _A <- c(6.04 , 19.84 , 8.62 , 13.02 , 12.20 , 14.78 , 4.53 , 26.67 ,
                 5 3.14 , 19.14 , 10.86 , 13.13 , 6.34 , 11.16 , 7.62)
6
7 vacuna _B <- c(5.32 , 3.31 , 5.68 , 5.73 , 4.86 , 5.68 , 2.93 , 5.48 , 6.10 ,
                 8 2.56 , 7.52 , 7.41 , 4.02)
9
10 # Verificar si las muestras se distribuyen de manera cercana
11 # a la normal .
12 normalidad _A <- shapiro . test ( vacuna _A)
13 print ( normalidad _A)
14 normalidad _B <- shapiro . test ( vacuna _B)
15 print ( normalidad _B)
16
17 # Fijar un nivel de significaci ón.
18 alfa <- 0.01
19
20 # Aplicar la prueba t para dos muestras independientes .
21 prueba <- t. test (x = vacuna _A,
                      22 y = vacuna _B,
                      23 paired = FALSE ,
                      24 alternative = " greater ",
                      25 mu = 0,
                      26 conf . level = 1 - alfa )
27
28 print ( prueba )
29
30 # Calcular la diferencia entre las medias .
31 media _A <- mean ( vacuna _A)
32 media _B <- mean ( vacuna _B)
33 diferencia <- media _A - media _B
34 cat (" Diferencia de las medias =", diferencia , "[mg/ml ]\n")