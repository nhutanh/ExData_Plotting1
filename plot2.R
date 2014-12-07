source("LoadData.R")

plot2 <- function(data=NULL) {
    data <- LoadData()
    
    png("plot2.png", width=400, height=400)
    
    plot(data$DateTime,data$Global_active_power, type="l",
         ylab="Global Active Power (kilowatts)", xlab="")
    
    garbage <- dev.off()
}

