library ( ggpubr )
2 library ( tidyverse )
3
4 # Generar un vector con un rango de valores para la efecto
5 # de medias .
6 efecto <- seq ( -2.5 , 2.5 , 0.01)
7
8 # Calcular el poder para una prueba t bilareral , para cada tama �o
9 # del efecto , asumiendo una muestra con desviaci �n est � ndar igual a 1.
10 # Se consideran 4 escenarios para calcular el poder :
11 # 1. Una muestra de tama �o 6 y nivel de significaci �n 0.05.