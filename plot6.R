##This R code answer the question 6, show the motor velhicle related pm2.5 emissions for Baltimore and Los Angeles by year

##Read in data from my working directory

NEI <- readRDS("summarySCC_PM25.rds")

##Subset data for Baltimore, Los Angeles, and Motor velhicle

BLvel <- subset(NEI, (fips=="24510" | fips=="06037") & type=="ON-ROAD")

##Sum of emmissions by fips and year

sumpm25 <- aggregate(list(Emissions=BLvel$Emissions), by=list(fips=BLvel$fips,year=BLvel$year), sum)

##Plot the motor velhicle related pm2.5 emissions for Baltimore and Los Angeles by year

g <- qplot(year,Emissions,data=sumpm25,color=fips,geom="line")
g+geom_line()+xlab("Year")+ylab("PM2.5 Motor Velhicle Emissions")+ggtitle("Motor Velhicle Emissions in Baltimore(24510) and Los Angeles(06037)")

##Copy graph to png file and close device

dev.copy(png, file="plot6.png", width=480, height=480, units="px")
dev.off()
