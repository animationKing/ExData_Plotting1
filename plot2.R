fl <- read.table("household_power_consumption.txt",header=T,sep=";")
data <- subset(fl,subset=((Date=="1/2/2007")|(Date=="2/2/2007")))
attach(data)

# Next part of code is going to label the weekdays on the X
# since I don't know how to do it using my data to draw it.(LOL)
# But it seems reasonable since the Date in this project
# is fixed

x<-c(0,1440,2880)
# 1440 = 24(hour)*60(minutes)

lb <- c("Thu","Fri","Sat")

par(cex=0.75)
# Adjust the font
par(mar=c(3,5,1,3))
plot(as.character(Global_active_power),type="l",lwd=2,xlab="",ylab="Global Active Power(kilowatts)",xaxt="n")
# The xaxt just force the X-axis appears blank.

axis(1,at=x,labels=lb)
# Setting the X