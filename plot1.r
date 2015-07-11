fl <- read.table("household_power_consumption.txt",header=T,sep=";")
data <- subset(fl,subset=((Date=="1/2/2007")|(Date=="2/2/2007"))) # Subsetting the data
attach(data) # Attach to the data 
par(mar=c(4,4,1,2))
hist(as.numeric(Global_active_power),xlab="Global Active Power(kilowatts)",col="red",main="Global Active Power",las=0)
