1 library ( ggpubr )
2
3 # Establecer la semilla para generar nú meros aleatorios .
4 set . seed (94)
5
6 # Generar aleatoriamente una poblaci ón de tama ño 1500
7 # (en este caso , con una distribuci ón cercana a la normal ).
8 poblacion <- rnorm (n = 1500 , mean = 4.32 , sd = 0.98)
9
10 # Calcular la media de la poblaci ón.
11 media _ poblacion <- mean ( poblacion )
12 cat (" Media de la poblaci ón:", media _ poblacion , "\n")
14 # Tomar 1000 muestras de tama ño 100. Quedan almacenadas
15 # como una matriz donde cada columna es una muestra .
16 tamano _ muestra <- 100
17 repeticiones <- 1000
18
19 muestras <- replicate ( repeticiones ,
                           20 sample ( poblacion , tamano _ muestra ))
21
22 # Calcular medias muestrales y almacenar los resultados
23 # en forma de data frame .
24 medias <- colMeans ( muestras )
25 medias <- as. data . frame ( medias )
26
27 # Construir un histograma de las medias muestrales .
28 g <- gghistogram ( data = medias ,
                      29 x = " medias ",
                      30 bins = 20,
                      31 title = " Distribuci ón de la media muestral ",
                      32 xlab = " Media ",
                      33 ylab = " Frecuencia ",
                      34 color = " blue ",
                      35 fill = " blue ",
                      36 alpha = 0.2)
37
38 # Agregar lí nea vertical con la media de la poblaci ón.
39 g <- g + geom _ vline (aes ( xintercept = media _ poblacion ),
                          40 color = " red", linetype = 1)
41
42 print (g)