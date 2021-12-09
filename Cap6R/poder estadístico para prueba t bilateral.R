library ( ggpubr )
2 library ( tidyverse )
3
4 # Generar un vector con un rango de valores para la efecto
5 # de medias .
6 efecto <- seq ( -2.5 , 2.5 , 0.01)
7
8 # Calcular el poder para una prueba t bilareral , para cada tama ño
9 # del efecto , asumiendo una muestra con desviaci ón est á ndar igual a 1.
10 # Se consideran 4 escenarios para calcular el poder :
11 # 1. Una muestra de tama ño 6 y nivel de significaci ón 0.05.