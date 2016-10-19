##pplot3
##The file "household_power_consumption.txt" has been downloaded to my working directory
##read table to dat using header=TRUE for variable names, as.is=TRUE for character instead for factor, seperate by ";"

dat <- read.table("household_power_consumption.txt",sep=";", as.is=TRUE,header=TRUE)

##subset data set only for two days

subdata <- subset(dat, dat$Date=="1/2/2007" | dat$Date=="2/2/2007")

##create new date and time variable

subdata$newdate <- with(subdata, as.POSIXct(paste(Date,Time),format="%d/%m/%Y %H:%M:%S"))

##plot graph

plot(subdata$newdate,as.numeric(subdata$Sub_metering_1),type="l",xlab="",ylab="Energy sub metering")
lines(subdata$newdate,as.numeric(subdata$Sub_metering_2),col="red")
lines(subdata$newdate,as.numeric(subdata$Sub_metering_3),col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

##copy graph to plot3.png and close device

dev.copy(png, file="plot3.png", width=480, height=480, units="px")
dev.off()
