plot(dateTime, data$Sub_metering_1, col="white", ylab="Energy sub Metering", xlab="")
lines(dateTime, data$Sub_metering_1, col="black")
lines(dateTime, data$Sub_metering_2, col="red")
lines(dateTime, data$Sub_metering_3, col="blue")

legend("topright", # places a legend at the appropriate place
       c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"), # puts text in the legend 
       lty=c(1,1), # gives the legend appropriate symbols (lines)
       lwd=c(2.5,2.5),col=c("black", "red","blue")) # gives the legend lines the 