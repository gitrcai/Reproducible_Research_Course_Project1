##plot1
##The file "household_power_consumption.txt" has been downloaded to my working directory
##read table to dat using header=TRUE for variable names, as.is=TRUE for character instead for factor, seperate by ";"

dat <- read.table("household_power_consumption.txt",sep=";", as.is=TRUE,header=TRUE)

##subset data set only for two days

subdata <- subset(dat, dat$Date=="1/2/2007" | dat$Date=="2/2/2007")

##create graph

hist(as.numeric(subdata$Global_active_power),col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")

##copy graph to plot1.png and close device

dev.copy(png, file="plot1.png", width=480, height=480, units="px")
dev.off()
