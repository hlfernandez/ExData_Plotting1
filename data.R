Sys.setlocale("LC_TIME", "en_US.UTF-8")

# This function loads this file and adds a new column 'DateTime' with the date and the time unified and formatted.
# In order to load only the specified range of dates, the original file was filtered with:
#  cat household_power_consumption.txt | grep -e "^1/2/2007.*" -e "^2/2/2007.*" > household_power_consumption_filtered.txt 
readData <- function(){
  colClasses 	<- c(rep('character',2), rep('numeric',7))
  colNames 	<- c('Date','Time','GlobalActivePower','GlobalReactivePower','Voltage','GlobalIntensity','SubMetering1','SubMetering2','SubMetering3')
  
  data <- read.table(
    "household_power_consumption_filtered.txt", 
    header=TRUE, 
    sep=";", 
    na.strings="?",
    col.names=colNames,
    colClasses=colClasses
  )
  
  data$DateTime <-paste(data$Date,data$Time)
  data$DateTime <- strptime(data$DateTime,format="%d/%m/%Y %H:%M:%S")
  
  return(data)
}