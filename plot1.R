#Read table
library(dplyr)
fulldata<-read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".", as.is = TRUE)
str(fulldata)
data<-filter(fulldata, Date=="1/2/2007" | Date=="2/2/2007")
dim(data)
head(data)
str(data)
data$Global_active_power<-as.numeric(data$Global_active_power)

#Plot 1, hist plot
png("plot1.png", width=480, height=480, units = "px")
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
