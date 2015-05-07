source("data.R")

data <- readData()

png(file = "plot2.png")
plot(
  data$DateTime,
  data$GlobalActivePower,
  xlab='',
  ylab='Global Active Power (kilowatts)', 
  type='l'
)
dev.off();
