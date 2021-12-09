1 library ( tidyverse )
2 library ( RVAideMemoire )
3 library ( rcompanion )
4
5 # Crear matriz de datos .
6 instancia <- 1:15
7 annealing <- c(0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0)
8 hormigas <- c(0, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1)
9 genetico <- c(1, 0, 1, 1, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1)
10 datos <- data . frame ( instancia , annealing , hormigas , genetico )
11
12 # Llevar matriz de datos a formato largo .
13 datos <- datos %> % pivot _ longer (c(" annealing ", " hormigas ", " genetico "),
                                       14 names _to = " metaheuristica ",
                                       15 values _to = " resultado ")
16
17 datos [[" instancia "]] <- factor ( datos [[" instancia "]])
18 datos [[" metaheuristica "]] <- factor ( datos [[" metaheuristica "]])
19
20 # Hacer prueba Q de Cochran .
21 prueba <- cochran . qtest ( resultado ~ metaheuristica | instancia ,
                               22 data = datos , alpha = 0.05)
23
24 print ( prueba )
25
26 # Procedimiento post -hoc con correcci ón de Bonferroni .
27 post _ hoc _1 <- pairwiseMcnemar ( resultado ~ metaheuristica | instancia ,
                                      28 data = datos , method = " bonferroni ")
29
30 cat ("\ nProcedimiento post - hoc con correcci ón de Bonferroni \n")
31 print ( post _hoc _1)
32
33 # Procedimiento post -hoc con correcci ón de Holm .
34 post _ hoc _2 <- pairwiseMcnemar ( resultado ~ metaheuristica | instancia ,
                                      35 data = datos , method = " holm ")
36
37 cat ("\ nProcedimiento post - hoc con correcci ón de Holm \n")
38 print ( post _hoc _2)