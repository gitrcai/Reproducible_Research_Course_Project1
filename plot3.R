##This R code answer the question 3, show the pm2.5 emissions for Baltimore City by type and year

##Read in data from my working directory

NEI <- readRDS("summarySCC_PM25.rds")

##Subset data only for Baltimore City

Baltimore <- subset(NEI,fips=="24510")

##Sum of pm2.5 emissions by type and year

sumpm25 <- aggregate(list(Emissions=Baltimore$Emissions), by=list(type=Baltimore$type,year=Baltimore$year), sum)

##Plot the pm2.5 emissions by type and year

g <- qplot(year,Emissions, data=sumpm25,color=type,geom="line")
g+ggtitle("PM2.5 Emissions in Baltimore City by Source Type and Year")+xlab("year")+ylab("PM2.5 Emissions")

##Copy graph to png file and close device
dev.copy(png, file="plot3.png", width=480, height=480, units="px")
dev.off()
