#!/usr/bin/env Rscript

##First read the data into R
##And store into df for just the needed data
#	Classes = c("character", "character", rep("numeric",7))
#	selector <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
#    df <- read.csv.sql(datafile, sql=selector,header=TRUE, sep=";", colClasses=Classes)
#  There is no way for read.csv.sql to filter "NA"
#
#library(sqldf)   
## Connect to "household_power_consumption.txt" file  myFile <- file("./household_power_consumption.txt")   
## select only observations needed  
## DF <- sqldf('select * from myFile where Date = "1/2/2007" OR Date = "2/2/2007"',  dbname = NULL,  file.format = list(header = TRUE,  sep = ";",  eol = '\r\n',  na.strings = "?"))  
##  read.table is too slow
## 

LoadData <- function() {
	datafile = "./household_power_consumption.txt"
	## there are 9 cols
	df <- read.table(datafile, header=TRUE, colClasses=c("character", "character", rep("numeric",7)), sep=";",na.strings="?")

	#Subset the data
	df <- subset(df, Date %in% c('1/2/2007', '2/2/2007'))

	# convert date and time variables to Date/Time class
	#df$Time <- strptime(df$Time, format="%H:%M:%S")
	df$Date <- as.Date(df$Date, format="%d/%m/%Y")	
	df$DateTime <- as.POSIXct(paste(df$Date, df$Time), format="%Y-%m-%d %H:%M:%S")

	return(df)
} 

