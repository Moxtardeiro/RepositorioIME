En el capítulo anterior conocimos el poder estadístico y vimos que está relacionado con el nivel de significación,
el tamaño de la muestra y el tamaño del efecto que queremos detectar.
R base nos ofrece la función power.prop.test(n, p1, p2, sig.level, power, alternative), donde:
  n: número de observaciones por cada grupo.
p1: probabilidad de éxito en un grupo.
p2: probabilidad de éxito en otro grupo.
8
sig.level: nivel de significación.
power: poder de la prueba.
alternative: tipo de hipótesis alternativa ("one.sided" si es unilateral, "two.sided" si es bilateral).
Al igual que vimos en el capítulo anterior para la función power.t.test(), recibe cuatro de los primeros
argumentos y al restante debe asigrnársele el valor NULL. Como resultado, retorna un objeto que incluye el
valor calculado para el argumento faltante.
Una vez más, el paquete pwr de R nos ofrece varias funciones que podemos usar como alternativa:
  pwr.p.test(h, n, sig.level, power, alternative): para pruebas con una única proporción.
pwr.2p.test(h, n, sig.level, power, alternative): para pruebas con dos proporciones donde
ambas muestras son de igual tamaño.
pwr.2p2n.test(h, n1, n2, sig.level, power, alternative): para pruebas con dos proporciones
y muestras de diferente tamaño.
Donde:
  h: tamaño de efecto.
n, n1, n2: tamaño(s) de la(s) muestra(s).
sig.level: nivel de significación.
power: poder.
alternative: tipo de hipótesis alternativa ("two.sided", "less" o "greater").
El funcionamiento de esta familia de funciones es igual al que ya conocimos en el capítulo anterior para la
función pwr.t.test(). Se entrega el parámetro alternative y todos los demás excepto uno (al cual debe
                                                                                         asignarse explícitamente el valor NULL). Como resultado, la función calcula dicho valor.
El tamaño del efecto puede calcularse como muestra la ecuación 7.6, implementada en R en la función
ES.h(p1, p2) del paquete pwr.
h = 2 arcsin(
  p
  p1) ???? 2 arcsin(
    p
    p2) (7.6)
En el caso de una única proporción, los autores del paquete pwr sugieren usar p2 = 0; 5 (Champely y col.,
                                                                                         2020).
Otra función que nos puede ser de ayuda es bsamsize(p1, p2, fraction, alpha, power), del paquete
Hmisc. En el caso de una prueba de Wilson con dos muestras, calcula los tamaños de cada grupo dados los
siguientes argumentos:
  p1: probabilidad de la población para el grupo 1.
p2: probabilidad del grupo 2.
fraction: fracción de las observaciones en el grupo 1 (n1=(n1 + n2).
                                                       alpha: nivel de significación.
                                                       power: poder deseado.