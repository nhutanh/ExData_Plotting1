source("LoadData.R")

plot1 <- function(data=NULL) {
	data <- LoadData()

    png("plot1.png", width=400, height=400)
    
    hist(data$Global_active_power,
		xlab="Global Active Power (kilowatts)",
		ylab="",
		col="red")
	garbage <- dev.off()
    
}

