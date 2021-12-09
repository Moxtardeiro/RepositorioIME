1 # Crear tabla de contingencia .
2 programadores <- c(42 , 56, 51, 27, 24)
3 programadoras <- c(25 , 24, 27, 15, 9)
4
5 tabla <- as. table ( rbind ( programadores , programadoras ))
6
7 dimnames ( tabla ) <- list ( sexo = c(" programadores ", " programadoras "),
                               8 lenguajes = c("C", " Java ", " Python ", " Ruby ", " Otro "))
9
10 print ( tabla )
11
12 # Hacer prueba chi - cuadrado de homogeneidad .
13 prueba <- chisq . test ( tabla )
14 print ( prueba )