1 # Crear tabla de contingencia .
2 comestible <- c(404 , 1948 , 32, 228 , 1596)
3 venenoso <- c(48 , 1708 , 0, 600 , 1556)
4
5 tabla <- as. table ( rbind ( comestible , venenoso ))
6
7 dimnames ( tabla ) <- list ( tipo = c(" comestible ", " venenoso "),
                               8 sombrero = c(" campana ", " convexo ", " hundido ",
                                              9 " nudoso ", " plano "))
10
11
12 print ( tabla )
13
14 # Hacer prueba chi - cuadrado de independencia .
15 prueba <- chisq . test ( tabla )
16 cat ("\ nLa prueba internamente calcula los valores esperados :\n")
17 esperados <- round ( prueba [[" expected "]], 3)
18 print ( esperados )
19
20 cat ("\ nResultado de la prueba :\n")
21 print ( prueba )