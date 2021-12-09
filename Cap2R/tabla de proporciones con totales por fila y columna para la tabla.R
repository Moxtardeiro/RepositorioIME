# Proporciones con totales por fila .
proporciones _ fila <- prop . table ( contingencia , margin =1)
proporciones _ fila <- addmargins ( proporciones _fila , margin =2)
cat (" Tabla de contingencia con proporciones totales por fila :\n")
print ( proporciones _ fila )
cat ("\n")

# Proporciones con totales por columna .
proporciones _ columna <- prop . table ( contingencia , margin =2)
proporciones _ columna <- addmargins ( proporciones _ columna , margin =1)
cat (" Tabla de contingencia con proporciones totales por columna :\n")
print ( proporciones _ columna )
cat ("\n")

# Proporciones con totales .
proporciones <- prop . table ( contingencia )
proporciones <- addmargins ( proporciones )
cat (" Tabla de contingencia con proporciones totales :\n")
print ( proporciones )
cat ("\n")