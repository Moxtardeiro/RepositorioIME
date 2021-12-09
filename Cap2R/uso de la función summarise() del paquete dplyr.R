library ( dplyr )

datos <- read . csv2 ("C:/ Inferencia / Mtcars .csv", stringsAsFactors = TRUE ,
                        row . names = 1)

# Cá lculo de varias medidas para la variable Potencia .
medidas _ potencia <- datos %> % summarise ( Media = mean ( Potencia ),
                                               Mediana = median ( Potencia ),
                                               Varianza = var( Potencia ),
                                               IQR = IQR( Potencia ))

print ( medidas _ potencia )
cat ("\n")

# Cá lculo de la media y la desviaci ón está ndar para las variables Peso y
# Cuarto _ milla .
medidas _ varias <- datos %> % summarise ( Media _P = mean ( Peso ),
                                              Media _C = median ( Cuarto _ milla ),
                                              SD_P = sd( Peso ),
                                              SD_C = sd( Cuarto _ milla ))

print ( medidas _ varias )
cat ("\n")