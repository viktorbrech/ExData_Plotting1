power_data=read.table("household_power_consumption.txt", sep=";",nrows = 1000000, header=TRUE, stringsAsFactors=FALSE, na.strings="?")
power_data=power_data[power_data$Date %in% c("1/2/2007","2/2/2007"),]

png(file="plot1.png")

hist(power_data$Global_active_power, col="red",xlab="Global Active Power (kilowatts)", main="Global Active Power")