DATIpartecipanti <- read.csv("DATIpartecipanti.csv", sep=";")

View(DATIpartecipanti)

data <- DATIpartecipanti
names(data)


table(data$LIVELLO)
table(data$LIVELLO, data$SPECIALIZZAZIONE)
table(data$SPECIALIZZAZIONE, data$LIVELLO)
prop.table(table(data$LIVELLO)) #proporzioni
round(prop.table(table(data$LIVELLO))*100) #percentuale


# install.packages("viridis")
library("viridis")



par(mfrow = c(1,2))

levelPalette <- viridis(2, alpha = 0.7, begin = 0.65)
levelData <- table(data$LIVELLO)
pie(levelData, labels = paste(round(prop.table(levelData)*100), "%", sep=""), col = levelPalette )
legend("bottom", legend = names(levelData), fill = levelPalette)



levelPalette <- magma(5, alpha = 1, begin = 0)
eventoData <- table(data$EVENTO)
pie(eventoData, labels = paste(round(prop.table(eventoData)*100), "%", sep=""), col = levelPalette )
legend("bottom", legend = names(eventoData), fill = levelPalette)


par(mfrow = c(1,1))
