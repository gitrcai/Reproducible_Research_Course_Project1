##This R code answer the question 4, show the pm2.5 emissions for coal realted emissions by type and year

##Read in data from my working directory

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

##Pick up source of coal in SCC file
 
coal <- SCC[grepl("Coal",SCC$Short.Name),]

##Subset data for all including coal

coalNEI <- NEI[NEI$SCC %in% coalSCC$SCC,]

##Sum of pm2.5 emissions by type and year

sumpm25 <- aggregate(list(Emissions=coalNEI$Emissions), by=list(type=coalNEI$type,year=coalNEI$year), sum)

##Plot the total pm2.5 emissions by type and year

g <- qplot(year,Emissions, data=sumpm25,color=type,geom="line")
g+ggtitle("Coal Related PM2.5 Emissions by Type and Year")+xlab("Year")+ylab("Coal Related PM2.5 Emissions")

##Copy graph to png file and close device
dev.copy(png, file="plot4.png", width=480, height=480, units="px")
dev.off()
rweq