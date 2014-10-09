plot3 <- function () {
  if (!exists("p")) {
    source('loadPower.R')
    p <- loadPower()
  }
  
	plot(p$DateTime, as.numeric(as.character(p$Sub_metering_1)), type='l', xlab='', ylab='Energy sub metering')
	lines(p$DateTime, as.numeric(as.character(p$Sub_metering_2)), col='red')
	lines(p$DateTime, as.numeric(as.character(p$Sub_metering_3)), col='blue')
	legend(x='topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'), col=c('black', 'red', 'blue'), lwd=1)
  
  dev.copy(png, file='plot3.png')
  dev.off()
}