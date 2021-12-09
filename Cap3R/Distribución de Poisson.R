Las funciones de R para esta distribución son:
  dpois(x, lambda).
ppois(q, lambda, lower.tail).
qqpois(p, lambda, lower.tail).
rpois(n, lambda).
Donde:
  x, q son vectores de cuantiles (enteros no negativos).
p es un vector de probabilidades.
n es la cantidad de observaciones.
lambda es un vector no negativo de medias.
lower.tail es análogo al de la función pnorm.