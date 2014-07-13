source("loadData.R")

png("plot4.png")

par(mfrow=c(2,2))

source("globalActivePowerPlot.R")

plot(dateTime, data$Voltage,
     col="white", ylab="Voltage", xlab="datetime")

lines(dateTime, data$Voltage, col="black")

source("energySubMeteringPlot.R")

plot(dateTime, data$Global_reactive_power,
     col="white", ylab="Global_reactive_power", xlab="datetime")

lines(dateTime, data$Global_reactive_power, col="black")

dev.off()
