#!/usr/bin/env Rscript

source("LoadData.R")

plot3 <- function(data=NULL) {
    data <- LoadData()
    
    png("plot3.png", width=480, height=480)
    
    plot(data$DateTime,data$Sub_metering_1, col="black",
         type="l", xlab="", ylab="Energy sub metering")
	lines(data$DateTime, data$Sub_metering_2, col="red")
	lines(data$DateTime, data$Sub_metering_3, col="blue")
	legend("topright", col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1:2)
    
    garbage <- dev.off()
}
