1 library ( ggpubr )
2
3 # Cargar los datos .
4 tiempo <- c (411.5538 , 393.2753 , 445.8905 , 411.4022 , 498.8969 ,
               5 388.6731 , 430.0382 , 469.4734 , 409.5844 , 442.0800 ,
               6 418.1169 , 408.4110 , 463.3733 ,407.0908 , 516.5222)
7
8 # Establecer los datos conocidos .
9 n <- length ( tiempo )
10 grados _ libertad <- n - 1
11 valor _ nulo <- 500
12
13
14 # Verificar si la distribuci ón se acerca a la normal .
15 g <- ggqqplot ( data = data . frame ( tiempo ),
                   16 x = " tiempo ",
                   17 color = " steelblue ",
                   18 xlab = "Teó rico ",
                   19 ylab = " Muestra ",
                   20 title = "Grá fico Q-Q muestra v/s distr . normal ")
21
22 print (g)
23
24 # Fijar un nivel de significaci ón.
25 alfa <- 0.025
26
27 # Calcular el estad í stico de prueba .
28 cat ("\ tPrueba t para una muestra \n\n")
29 media <- mean ( tiempo )
30 cat (" Media =", media , "M$\n")
31 desv _est <- sd( tiempo )
32 error <- desv _est / sqrt (n)
33 t <- ( media - valor _ nulo ) / error
34 cat ("t =", t, "\n")
35
36 # Calcular el valor p.
37 p <- pt(t, df = grados _ libertad , lower . tail = TRUE )
38 cat ("p =", p, "\n")
39
40 # Construir el intervalo de confianza .
41 t_ critico <- qt(alfa , df = grados _ libertad , lower . tail = FALSE )
42 superior <- media + t_ critico * error
43 cat (" Intervalo de confianza = (-Inf , ", superior , "]\n", sep = "")
44
45 # Aplicar la prueba t de Student con la funcu ón de R.
46 prueba <- t. test ( tiempo ,
                       47 alternative = " less ",
                       48 mu = valor _nulo ,
                       49 conf . level = 1 - alfa )
50
51 print ( prueba )