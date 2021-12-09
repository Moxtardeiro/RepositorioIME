1 # Construir la tabla de contingencia .
2 alumno <- seq (1:25)
3 modelo _1 <- c(rep(" Correcto ", 16) , rep(" Incorrecto ", 9))
4 modelo _2 <- c(rep(" Correcto ", 9) , rep(" Incorrecto ", 11) , rep(" Correcto ", 5))
5 datos <- data . frame (alumno , modelo _2, modelo _1)
6 tabla <- table ( modelo _2, modelo _1)
7 print ( tabla )
8
9 # Aplicar prueba de McNemar .
10 prueba <- mcnemar . test ( tabla )
11 print ( prueba )