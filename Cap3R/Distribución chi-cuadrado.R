Las funciones de R para esta distribución, similares a las descritas para la distribución normal, son:
  dchisq(x, df).
pchisq(q, df, lower.tail).
qchisq(p, df, lower.tail).
rchisq(n, df).
Donde:
  x, q son vectores de cuantiles (enteros no negativos).
p es un vector de probabilidades.
n es la cantidad de observaciones.
df son los grados de libertad.
lower.tail es análogo al de la función pnorm.