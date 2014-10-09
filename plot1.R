plot1 <- function () {
  if (!exists("p")) {
    source('loadPower.R')
    p <- loadPower()
  }
  
	hist(as.numeric(as.character(p$Global_active_power)), main="Global Active Power", xlab="Global Active Power (kilowatts)", col='red')
  dev.copy(png, file='plot1.png')
  dev.off()
}