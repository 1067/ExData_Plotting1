setClass("DataDate")
setAs("character", "DataDate", function(from) as.Date(from, format="%d/%m/%Y"))

data <- read.table("data/household_power_consumption.txt",
                   sep=";",
                   na.strings = "?",
                   colClasses = c("DataDate", "character", "double", "double", "double", "double", "double", "double", "double"),
                   header=TRUE)

data <- data[data$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]

dateTime <- strptime(paste(strftime(data$Date, "%d/%m/%Y"), data$Time), format="%d/%m/%Y %H:%M:%S")