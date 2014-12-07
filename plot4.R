source("LoadData.R")

plot4 <- function(data=NULL) {
    data <- LoadData()
   
    png("plot4.png", width=400, height=400)
	par(mfrow=c(2,2))

##Plot1	
 	hist(data$Global_active_power,
		xlab="Global Active Power (kilowatts)",
		ylab="", col="red")

##Plot2
	plot(data$DateTime,data$Global_active_power,
         ylab="Global Active Power (kilowatts)", xlab="")

##Plot3
	plot(data$DateTime,data$Sub_metering_1,col="black",
         ylab="Energy sub metering", xlab="")
	lines(data$DateTime, data$Sub_metering_2, col="red")
	lines(data$DateTime, data$Sub_metering_3, col="blue")
	legend("topright", col=c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           lty=1)
	
##Plot4
	plot(data$DateTime, data$Global_reactive_power, type="n",
         xlab="datetime", ylab="Global_reactive_power")
    lines(data$DateTime, data$Global_reactive_power)

    dev.off()
}


