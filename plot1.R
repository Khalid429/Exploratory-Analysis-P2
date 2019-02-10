## Load the data

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

aggr <- aggregate(Emissions~year,data = NEI,FUN = sum)

## Create BarPlot and Export as PNG file

png(filename = "plot1.png",width = 480, height = 480,units = "px")

barplot(
  (aggr$Emissions)/10^6,
  names.arg = aggr$year,
  col = "lightblue3",
  xlab = "Year",
  ylab = "PM2.5 Emissions (10^6 Tons)",
  main = "PM2.5 Emissions for all US Sources (Total)"
)

dev.off()