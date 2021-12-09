# Crear un vector de strings y guardarlo en la variable nombre .
nombre <- c(" Alan Brito Delgado ",
              " Zacar ías Labarca del Río",
              " Elsa Payo Maduro ")

# Crear un vector de fechas y guardarlo en la variable
# fecha _ nacimiento .
fecha _ nacimiento <- as.Date (c(" 2008 -1 -25", "2006 -10 -4", "2008 -3 -27"))

# Crear tres vectores de reales entre 1.0 y 7.0 y guardarlos
# en prueba _i, respectivamente .
prueba _1 <- c(5.5 , 3.4 , 4.5)
prueba _2 <- c(3.2 , 4.7 , 4.1)
prueba _3 <- c(4.8 , 4.3 , 5.1)

# Construir un data frame a partir de los vectores anteriores y
# guardarlo en la variable dataframe .
dataframe <- data . frame (nombre ,
                              fecha _ nacimiento ,
                              prueba _1,
                              prueba _2,
                              prueba _3,
                              stringsAsFactors = FALSE )

# Guardar un dataframe en un archivo csv ( formato espa ñol).
write . csv2 ( dataframe , "C:/ Inferencia / Ejemplo .csv ", row. names = FALSE )