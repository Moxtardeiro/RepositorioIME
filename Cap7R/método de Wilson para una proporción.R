1 # Fijar valores conocidos
2 n <- 150
3 p_ exito <- 0.64
4 alfa <- 0.05
5 valor _ nulo <- 0.7
6
7 # Calcular cantidad de é xitos .
8 exitos <- p_ exito * n
9
10 # Prueba de Wilson en R.
11 prueba <- prop . test ( exitos , n = n, p = valor _nulo ,
                           12 alternative = " greater ", conf . level = 1 - alfa )
13
14 print ( prueba )
Script 7.5: método de Wilson para la diferencia entre dos proporciones.
1 # Fijar valores conocidos ( hombres , mujeres )
2 n <-c(48 , 42)
3 exitos <- c(26 , 20)
4 alfa <- 0.05
5
6 # Prueba de Wilson en R.
7 prueba <- prop . test ( exitos , n = n, alternative = "two. sided ",
                          8 conf . level = 1 - alfa )
9
10 print ( prueba )