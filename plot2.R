power_data=read.table("household_power_consumption.txt", sep=";",nrows = 1000000, header=TRUE, stringsAsFactors=FALSE, na.strings="?")
power_data=power_data[power_data$Date %in% c("1/2/2007","2/2/2007"),]

png(file="plot2.png")

plot(power_data$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)", xaxt="n")
axis(side=1, at=c(0,1440,2880), labels=c("Thu","Fri","Sat"))
lines(power_data$Global_active_power)