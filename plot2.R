##This R code answer the question 2, show the pm2.5 emissions for Baltimore City by year

##Read in data from my working directory

NEI <- readRDS("summarySCC_PM25.rds")

##Subset data only for Baltimore City

Baltimore <- subset(NEI,fips=="24510")

##Sum of pm2.5 emissions by year

sumpm25 <- with(Baltimore,aggregate(Emissions, by=list(year), sum))

##Plot the total pm2.5 emissions by year

plot(sumpm25,xlab="year",ylab="PM2.5 Emissions",main="Total PM2.5 Emissions in Baltimore City by Year",type="o",col="red",lty=5,pch=8)

##Copy graph to png file and close device
dev.copy(png, file="plot2.png", width=480, height=480, units="px")
dev.off()
