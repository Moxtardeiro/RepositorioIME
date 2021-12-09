# Cargar datos .
datos <- read . csv2 ("C:/ Inferencia / Mtcars .csv", stringsAsFactors = TRUE ,
                        row . names = 1)

# Crear tabla de contingencia para las variables Transmision y gear .
contingencia <- table ( datos [[" Transmision "]], datos [[" Cambios "]])
cat (" Tabla de contingencia generada con table () :\n")
print ( contingencia )
cat ("\n")

# Otra forma de crear la misma tabla .
contingencia <- xtabs (~ Transmision + Cambios , data = datos )
cat (" Tabla de contingencia generada con xtabs () :\n")
print ( contingencia )
cat ("\n")