fl <- read.table("household_power_consumption.txt",header=T,sep=";")
# Read the txt file

data <- subset(fl,subset=((Date=="1/2/2007")|(Date=="2/2/2007")))
# Subsetting the file

attach(data)
# Attached to the file

par(cex=0.75)
par(mar=c(4,4,1,2))
# Settings of screen and font

hist(as.numeric(Global_active_power),xlab="Global Active Power(kilowatts)",col="red",main="Global Active Power",las=0)
# Draw a histogram