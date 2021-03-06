power_data=read.table("household_power_consumption.txt", sep=";",nrows = 1000000, header=TRUE, stringsAsFactors=FALSE, na.strings="?")
power_data=power_data[power_data$Date %in% c("1/2/2007","2/2/2007"),]

png(file="plot3.png")

plot(power_data$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering", xaxt="n")
axis(side=1, at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))
lines(power_data$Sub_metering_1)
lines(power_data$Sub_metering_2, col="red")
lines(power_data$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
