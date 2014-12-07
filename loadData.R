##First read the data into R
##And store into df for just the needed data
LoadData <- function() {
	datafile = "./household_power_consumption.txt"
	## there are 9 cols
	df <- read.table(datafile, header=TRUE, colClasses=c("character", "character", rep("numeric",7)), sep=";",na.strings="?")

	#Subset the data
	df <- subset(df, Date %in% c('1/2/2007', '2/2/2007'))

	# convert date and time variables to Date/Time class
	df$Time <- strptime(df$Time, format="%H:%M:%S")
	df$Date <- as.Date(df$Date, format="%d/%m/%Y")	
	df$DateTime <-  as.POSIXct(paste(df$Date,df$Time),format="%d/%m/%Y %H:%M:%S")


	return(df)
} 

