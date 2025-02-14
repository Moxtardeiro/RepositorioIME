# Leer un dataframe desde archivo csv .
datos <- read . csv2 ("C:/ Inferencia / Ejemplo .csv ", stringsAsFactors = FALSE )

# Eliminar del data frame la columna fecha _ nacimiento .
dataframe $ fecha _ nacimiento <- NULL

# Agregar al data frame la columna edad .
dataframe $ edad <- c(23 , 25, 23)


# Crear una nueva observaci �n.
nueva <- data . frame ( nombre =" Elba Calao del R�o",
                           prueba _1 = 6.4 ,
                           prueba _2 = 2.3 ,
                           prueba _3 = 4.6 ,
                           edad = 24)

# Agregar la nueva observaci �n al data frame .
dataframe <- rbind ( dataframe , nueva )

# Eliminar las primeras 3 observaciones del data frame .
dataframe <- dataframe [-c (1:3) ,]

# Guardar el dataframe en un archivo csv .
write . csv2 ( dataframe , "C:/ Inferencia / Ejemplo _mod .csv", row. names = FALSE )