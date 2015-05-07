source("data.R")

data <- readData()

png(file = "plot1.png")
hist(
  data$GlobalActivePower, 
  main='Global Active Power',
  xlab='Global Active Power (kilowatts)', 
  breaks=11, 
  col='red'
)
dev.off();