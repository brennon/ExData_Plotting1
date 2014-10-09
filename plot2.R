plot2 <- function () {
  if (!exists("p")) {
    source('loadPower.R')
    p <- loadPower()
  }
  
	plot(p$DateTime, as.numeric(as.character(p$Global_active_power)), type='l', xlab='', ylab='Global Active Power (kilowatts)')
  dev.copy(png, file='plot2.png')
  dev.off()
}