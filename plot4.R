plot4 <- function () {
  if (!exists("p")) {
    source('loadPower.R')
    p <- loadPower()
  }
  
	par(mfrow=c(2,2))
	
	plot2()
	plot(p$DateTime, as.numeric(as.character(p$Voltage)), type='l', xlab='datetime', ylab='Voltage')
	plot3()
	plot(p$DateTime, as.numeric(as.character(p$Global_reactive_power)), type='l', xlab='datetime', ylab='Global_reactive_power')
  
  dev.copy(png, file='plot4.png')
  dev.off()
}