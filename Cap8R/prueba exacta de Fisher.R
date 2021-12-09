1 # Construir la tabla de contingencia .
2 vacuna <- c(rep (" Argh ", 6) , rep (" Grrr ", 11))
3 resultado <- c(rep(" Humano ", 12) , rep(" Vampiro ", 5))
4 datos <- data . frame ( resultado , vacuna )
5 tabla <- xtabs (~. , datos )
6 print ( tabla )
7
8 # Aplicar prueba exacta de Fisher .
9 alfa <- 0.05
10 prueba <- fisher . test (tabla , 1- alfa )
11 print ( prueba )