##This R code answer the question 5, show motor velhicle related pm2.5 emissions for Baltimore by year

##Read in data from my working directory

NEI <- readRDS("summarySCC_PM25.rds")

##Subset data for Baltimore and Motor velhicle

Bvel <- subset(NEI, fips=="24510" & type=="ON-ROAD")

##Plot the motor velhicle related pm2.5 emissions for Baltimore by year

g <- ggplot(Bvel,aes(x=factor(year),y=Emissions))
g+geom_bar(stat="identity",width=.3)+xlab("Year")+ylab("PM2.5 Motor Velhicle Emissions")+ggtitle("PM2.5 Motor Velhicle Emissions in Baltimore")

##Copy graph to png file and close device

dev.copy(png, file="plot5.png", width=480, height=480, units="px")
dev.off()
