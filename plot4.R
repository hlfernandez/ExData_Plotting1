source("data.R")

data <- readData()

png(file = "plot4.png")
par(mfrow=c(2,2))

plot(
  data$DateTime,
  data$GlobalActivePower,
  ylab='Global Active Power', 
  xlab='', 
  type='l'
)


plot(
  data$DateTime,
  data$Voltage,
  ylab='Voltage', 
  xlab='datetime', 
  type='l'
)


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
  col=c('black','red', 'blue'),
  bty='n' # no border
)


plot(
  data$DateTime,
  data$GlobalReactivePower,
  ylab='Globa_reactive_power', 
  xlab='datetime', 
  type='l'
)
dev.off();