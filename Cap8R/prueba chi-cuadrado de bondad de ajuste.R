1 # Crear tabla de contingencia .
2 nomina <- c(236 , 78, 204 , 76, 66)
3 muestra <- c(17 , 9, 14, 10, 5)
4
5 tabla <- as. table ( rbind (nomina , muestra ))
6
7 dimnames ( tabla ) <- list ( grupo = c("Nó mina ", " Muestra "),
                               8 lenguajes = c("C", " Java ", " Python ", " Ruby ", " Otro "))
9
10 print ( tabla )
11
12 # Verificar si se esperan más de 5 observaciones por cada grupo .
13 n_ nomina <- sum( nomina )
14 n_ muestra <- 55
15 proporciones <- round ( nomina /n_nomina , 3)
16 esperados <- round ( proporciones * n_ muestra , 3)
17 print ( esperados )
18
19 # Hacer prueba chi - cuadrado de homogeneidad .
20 prueba <- chisq . test (tabla , correct = FALSE )
21 print ( prueba )