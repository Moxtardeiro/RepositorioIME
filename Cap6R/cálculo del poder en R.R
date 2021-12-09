1 library (pwr)
2
3 # Fijar valores conocidos .
4 n <- 36
5 diferencia <- 4
6 desv _ est <- 12
7 alfa <- 0.05
8 poder <- 0.9
9
10 # Calcular el poder usando la funci ón power .t. test ().
11 cat ("Cá lculo del poder con power .t. test ()\n")
12
13 resultado <- power .t. test (n = n,
                                14 delta = diferencia ,
                                15 sd = desv _est ,
                                16 sig . level = alfa ,
                                17 power = NULL ,
                                18 type = " paired ",
                                19 alternative = " two. sided ")
20
21 print ( resultado )
22
23 # Cá lculo del tama ño de la muestra usando la funci ón power .t. test ().
24 cat ("Cá lculo del tama ño de la muestra con power .t. test ()\n")
25
26 resultado <- power .t. test (n = NULL ,
                                27 delta = diferencia ,
                                28 sd = desv _est ,
                                29 sig . level = alfa ,
                                30 power = poder ,
                                31 type = " paired ",
                                32 alternative = " two. sided ")
33
34 n <- ceiling ( resultado [["n" ]])
35 cat ("n = ", n, "\n")
36
37 # Calcular el tama ño del efecto (d de Cohen ).
38 d <- (4 / desv _est ) * ((n - 2) / (n - 1.25) )
39
40 # Calcular el poder usando la funci ón pwr.t. test ().
41 cat ("\n\nCá lculo del poder con pwr .t. test ()\n")
42
43 resultado <- pwr.t. test (n = n,
                             44 d = d,
                             45 sig . level = alfa ,
                             46 power = NULL ,
                             47 type = " paired ",
                             48 alternative = " two. sided ")
49
50 print ( resultado )
51
52 # Cá lculo del tama ño de la muestra usando la funci ón pwr.t. test ().
53 cat ("\nCá lculo del tama ño de la muestra con pwr.t. test ()\n")
54
55 resultado <- pwr.t. test (n = NULL ,
                             56 d = d,
                             57 sig . level = alfa ,
                             58 power = poder ,
                             59 type = " paired ",
                             60 alternative = " two. sided ")
61
62 n <- ceiling ( resultado [["n"]])
63 cat ("n = ", n, "\n")