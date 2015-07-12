fl <- read.table("household_power_consumption.txt",header=T,sep=";")
data <- subset(fl,subset=((Date=="1/2/2007")|(Date=="2/2/2007")))
attach(data)

x<-c(0,1440,2880)
lb <- c("Thu","Fri","Sat")
par(mar=c(3,4,2,2))
par(cex=0.75)

plot(as.character(Sub_metering_1),type="l",lwd=1,xaxt="n",ylab="Energy sub metering")
lines(as.character(Sub_metering_2),col="red")
lines(as.character(Sub_metering_3),col="blue")
# Adding Sub_metering_2 and Sub_metering_3 on the original graph

axis(1,at=x,labels=lb)

legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,col=c("black","red","blue"),text.width=800)
# Adding legends
# Text.width sets the width of the legend