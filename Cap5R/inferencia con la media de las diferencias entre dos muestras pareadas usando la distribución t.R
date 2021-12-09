1 # Cargar los datos .
2 instancia <- seq (1, 35, 1)
3
4 t_A <- c (436.5736 , 470.7937 , 445.8354 , 470.9810 , 485.9394 ,
            5 464.6145 , 466.2139 , 468.9065 , 473.8778 , 413.0639 ,
            6 496.8705 , 450.6578 , 502.9759 , 465.6358 , 437.6397 ,
            7 458.8806 , 503.1435 , 430.0524 , 438.5959 , 439.7409 ,
            8 464.5916 , 467.9926 , 415.3252 , 495.4094 , 493.7082 ,
            9 433.1082 , 445.7433 , 515.2049 , 441.9420 , 472.1396 ,
            10 451.2234 , 476.5149 , 440.7918 , 460.1070 , 450.1008)
11
12 t_B <- c (408.5142 , 450.1075 , 490.2311 , 513.6910 , 467.6467 ,
             13 484.1897 , 465.9334 , 502.6670 , 444.9693 , 456.3341 ,
             14 501.1443 , 471.7833 , 441.1206 , 544.1575 , 447.8844 ,
             15 432.4108 , 477.1712 , 482.4828 , 458.2536 , 474.9863 ,
             16 496.0153 , 485.8112 , 457.4253 , 483.3700 , 510.7131 ,
             17 467.5739 , 482.5621 , 453.5986 , 385.9391 , 548.7884 ,
             18 467.2533 , 494.7049 , 451.9716 , 522.3699 , 444.1270)
19
20 diferencia <- t_A - t_B
21
22 # Verificar si la distribuci ón se acerca a la normal .
23 normalidad <- shapiro . test ( diferencia )
24 print ( normalidad )
25
26 # Fijar un nivel de significaci ón.
27 alfa <- 0.05
28
29 # Aplicar la prueba t de Student a la diferencia de medias .
30 prueba _1 <- t. test ( diferencia ,
                          31 alternative = " two. sided ",
                          32 mu = valor _nulo ,
                          33 conf . level = 1 - alfa )
34
35 print ( prueba _1)
36
37 # Otra alternativa puede ser aplicar la prueba t de Student
38 # para dos muestras pareadas .
39 prueba _2 <- t. test (x = t_A,
                         40 y = t_B,
                         41 paired = TRUE ,
                         42 alternative = " two. sided ",
                         43 mu = valor _nulo ,
                         44 conf . level = 1 - alfa )
45
46 print ( prueba _2)


Los resultados para esta prueba son:
  El valor para el estadístico de prueba T es t = ????1; 9816.
Se consideran df = 34 grados de libertad para la distribución t.
El valor p obtenido es p = 0; 05565.
El intervalo de confianza obtenido es [????24; 4804542; 0; 3086313].
La media de la muestra es x = ????12; 08591.