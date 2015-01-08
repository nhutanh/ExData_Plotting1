#!/usr/bin/env Rscript
source("LoadData.R")

plot1 <- function(data=NULL) {
	data <- LoadData()

    png("plot1.png", width=480, height=480)
    
    hist(data$Global_active_power, main = paste("Global Active Power"),
		xlab="Global Active Power (kilowatts)",
		ylab="Frequency", col="red")
	garbage <- dev.off()
    
}

