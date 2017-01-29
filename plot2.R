#Read table
library(dplyr)
fulldata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", as.is = TRUE)
str(fulldata)
data<-filter(fulldata, Date=="1/2/2007" | Date=="2/2/2007")
dim(data)
head(data)
str(data)
data$Global_active_power<-as.numeric(data$Global_active_power)

#Plot 2
dateandtime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
png("plot2.png", width=480, height=480, units = "px")
plot(dateandtime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
