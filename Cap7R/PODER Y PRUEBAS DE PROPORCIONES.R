En el cap�tulo anterior conocimos el poder estad�stico y vimos que est� relacionado con el nivel de significaci�n,
el tama�o de la muestra y el tama�o del efecto que queremos detectar.
R base nos ofrece la funci�n power.prop.test(n, p1, p2, sig.level, power, alternative), donde:
  n: n�mero de observaciones por cada grupo.
p1: probabilidad de �xito en un grupo.
p2: probabilidad de �xito en otro grupo.
8
sig.level: nivel de significaci�n.
power: poder de la prueba.
alternative: tipo de hip�tesis alternativa ("one.sided" si es unilateral, "two.sided" si es bilateral).
Al igual que vimos en el cap�tulo anterior para la funci�n power.t.test(), recibe cuatro de los primeros
argumentos y al restante debe asigrn�rsele el valor NULL. Como resultado, retorna un objeto que incluye el
valor calculado para el argumento faltante.
Una vez m�s, el paquete pwr de R nos ofrece varias funciones que podemos usar como alternativa:
  pwr.p.test(h, n, sig.level, power, alternative): para pruebas con una �nica proporci�n.
pwr.2p.test(h, n, sig.level, power, alternative): para pruebas con dos proporciones donde
ambas muestras son de igual tama�o.
pwr.2p2n.test(h, n1, n2, sig.level, power, alternative): para pruebas con dos proporciones
y muestras de diferente tama�o.
Donde:
  h: tama�o de efecto.
n, n1, n2: tama�o(s) de la(s) muestra(s).
sig.level: nivel de significaci�n.
power: poder.
alternative: tipo de hip�tesis alternativa ("two.sided", "less" o "greater").
El funcionamiento de esta familia de funciones es igual al que ya conocimos en el cap�tulo anterior para la
funci�n pwr.t.test(). Se entrega el par�metro alternative y todos los dem�s excepto uno (al cual debe
                                                                                         asignarse expl�citamente el valor NULL). Como resultado, la funci�n calcula dicho valor.
El tama�o del efecto puede calcularse como muestra la ecuaci�n 7.6, implementada en R en la funci�n
ES.h(p1, p2) del paquete pwr.
h = 2 arcsin(
  p
  p1) ???? 2 arcsin(
    p
    p2) (7.6)
En el caso de una �nica proporci�n, los autores del paquete pwr sugieren usar p2 = 0; 5 (Champely y col.,
                                                                                         2020).
Otra funci�n que nos puede ser de ayuda es bsamsize(p1, p2, fraction, alpha, power), del paquete
Hmisc. En el caso de una prueba de Wilson con dos muestras, calcula los tama�os de cada grupo dados los
siguientes argumentos:
  p1: probabilidad de la poblaci�n para el grupo 1.
p2: probabilidad del grupo 2.
fraction: fracci�n de las observaciones en el grupo 1 (n1=(n1 + n2).
                                                       alpha: nivel de significaci�n.
                                                       power: poder deseado.