# Loads the required dataset for this project
loadPower <- function () {
	
	# If we don't have access to household_power_consumption.txt in the working directory
	if (!file.exists('household_power_consumption.txt')) {
		
		# If we don't have access to the zipped file
		if (!file.exists('household_power_consumption.zip')) {
			download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', destfile='household_power_consumption.zip', method='curl')
		}
		
		unzip('household_power_consumption.zip')
	}
	
	power <- read.table('household_power_consumption.txt',header=T,sep=';')
	power$DateTime <- strptime(paste(as.character(power$Date), as.character(power$Time)), format = "%d/%m/%Y %H:%M:%S")
	afterBeginning <- power$DateTime >= as.POSIXlt("2007-02-01")
	beforeEnd <- power$DateTime < as.POSIXlt("2007-02-03")
	dateRange <- afterBeginning & beforeEnd
	power <- power[dateRange,]
	power
}