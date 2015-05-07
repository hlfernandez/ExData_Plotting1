source("data.R")

data <- readData()

png(file = "plot3.png")
plot(
  data$DateTime,
  data$SubMetering1,
  ylab='Energy sub metering', 
  xlab='', 
  type='l'
)
lines(
  data$DateTime,
  data$SubMetering2, 
  col='red'
)
lines(
  data$DateTime,
  data$SubMetering3, 
  col='blue'
)
legend(
  'topright', 
  c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
  lty=1, 
  col=c('black','red', 'blue')
)
dev.off();