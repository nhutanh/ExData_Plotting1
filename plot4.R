#!/usr/bin/env Rscript
source("LoadData.R")

plot4 <- function(data=NULL) {
    data <- LoadData()
   
    png("plot4.png", width=480, height=480)
	par(mfrow=c(2,2))

##Plot1	
 	plot(data$DateTime,data$Global_active_power,type="l", xlab="", ylab="Global Active Power")

##Plot2
	plot(data$DateTime,data$Voltage, type="l", xlab="datetime", ylab="Voltage")

##Plot3
	plot(data$DateTime,data$Sub_metering_1,type="l", col="black",
         xlab="", ylab="Energy sub metering")
	lines(data$DateTime, data$Sub_metering_2, col="red")
	lines(data$DateTime, data$Sub_metering_3, col="blue")
	legend("topright", col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)
	
##Plot4
	plot(data$DateTime,data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")


    dev.off()
}


