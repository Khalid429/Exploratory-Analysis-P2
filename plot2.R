## Load the data

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

baltimorenei <- (NEI[NEI$fips == "24510",])
aggrbaltimore <- aggregate(Emissions~year,data = baltimorenei,FUN = sum)

## Create BarPlot and Export as PNG file

png(filename = "plot2.png",width = 480, height = 480,units = "px")

barplot(aggrbaltimore$Emissions,
        names.arg = aggrbaltimore$year,
        col = "palegreen3",
        xlab = "Years",
        ylab = "PM2.5 Emissions by Ton",
        main = "PM2.5 Emissions for Baltimore (Total)"
)

dev.off()