library ( ggpubr )

# Generar valores para una distribuci ón normal con media 0 y
# desviaci ón está ndar 1.
media <- 0
desv _ est <- 1
x <- seq ( -15, 35, 0.01)
y <- dnorm (x, mean = media , sd = desv _ est)
normal _1 <- data . frame (x, y)

# Repetir el proceso para una distribuci ón normal con media 10
# y desviaci ón está ndar 6.
media <- 10
desv _ est <- 6
x <- seq ( -15, 35, 0.01)
y <- dnorm (x, mean = media , sd = desv _ est)
normal _2 <- data . frame (x, y)

# Graficar ambas distribuciones .
g <- ggplot ( normal _1, aes(x, y)) + geom _ line ( color = " blue ")
g <- g + geom _ line ( data = normal _2, color = "red")
g <- g + theme _ pubr ()

print (g)