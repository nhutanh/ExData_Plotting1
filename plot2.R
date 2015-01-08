#!/usr/bin/env Rscript
source("LoadData.R")

plot2 <- function(data=NULL) {
    data <- LoadData()
    
    png("plot2.png", width=480, height=480)
    
    plot(data$DateTime,data$Global_active_power, type="l",
         xlab="", ylab="Global Active Power (kilowatts)")
    
    garbage <- dev.off()
}

