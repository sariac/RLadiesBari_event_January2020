#esempi di grafici
example(image)
demo(graphics)

#Esercizio 1
#plot del dataset cars
data(cars)
names(cars)
plot(cars)

#Esercizio 2
#Parametro las
par(c(col.axis = "red"))
par(mfrow = c(2,2))


plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "default = 0 PARALLELE",
)


plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "las = 1 ORIZZONTALI",
     las  = 1
)
plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "las = 2 PERPENDICOLARI",
     las  = 2
)


plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "las = 3 VERTICALI",
     las  = 3
)

par(mfrow = c(1,1))
par(c(col.lab = "black"))

#Esercizio 3
#Parametro pch
par(mfrow = c(1,2))


plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "pch = 3",
     pch  =  3
)

plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "pch = 15",
     pch  =  15
)

par(mfrow = c(1,1))

#Colori disponibili
colors()
demo(colors)

#Esercizio 4
#plot di cars con i parametri modificati
plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "cars data", 
     cex = 2, 
     lwd = 2, 
     las = 1, 
     col = "red", 
     col.axis = "blue", 
     col.lab = "darkgreen", 
     col.main = "violet"
)

#Esercizio 5
par(mfrow = c(1,2))

plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "cars data" 
)


plot(cars, 
     xlab = "Speed (mph)", 
     ylab = "Stopping distance (ft)", 
     main = "cars data", 
     cex = 2, 
     lwd = 2, 
     las = 1, 
     col = "red", 
     col.axis = "blue", 
     col.lab = "darkgreen", 
     col.main = "violet"
)

par(mfrow = c(1,1))

#Esercizio 6
#istogramma
hist(
  cars$speed, 
  prob = TRUE
)

#Esercizio 7
#barplot
data(VADeaths)

barplot(VADeaths)

#Esercizio 8
#boxplot
boxplot(
  cars$speed,
  col = "orange", 
  main= "velocità"
)


median(cars$speed)

#Esercizio 9
#grafico a torta
pie(
  rep(1, 10), 
  col 		= rainbow(10), 
  radius 	= 0.9, 
  main 	= "grafico a torta"
)

#Esercizio 10
#mosaicplot
eyehair <- matrix(c(35, 12, 16, 60), 
                  nrow = 2, 
                  byrow = TRUE)

eye <- c("chiari", "scuri")

hair <- c("biondi", "neri")

dimnames(eyehair) <- list(eye, hair)

eyehair

mosaicplot(eyehair, col=rainbow(14))

#Esercizio 11
#image
data("volcano")

image(volcano)

#Esercizio 12
#contour
contour(volcano)

#OTTIMO LAVORO!