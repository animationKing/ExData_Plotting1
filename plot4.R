fl <- read.table("household_power_consumption.txt",header=T,sep=";")
data <- subset(fl,subset=((Date=="1/2/2007")|(Date=="2/2/2007")))
attach(data)

x<-c(0,1440,2880)
lb <- c("Thu","Fri","Sat")
par(mfrow=c(2,2))
par(mar=c(4,5,4,1))

plot(as.character(Global_active_power),type="l",xlab="",ylab="Global Active Power",xaxt="n")
axis(1,at=x,labels=lb)
# The topleft graph

plot(as.character(Voltage),type="l",ylab="Voltage",xlab="datetime",xaxt="n")
axis(1,at=x,labels=lb)
# The topright graph

plot(as.character(Sub_metering_1),type="l",xaxt="n",xlab="",ylab="Energy sub metering")
lines(as.character(Sub_metering_2),col="red")
lines(as.character(Sub_metering_3),col="blue")
axis(1,at=x,labels=lb)
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=2,col=c("black","red","blue"),text.width=1300,bty="n",cex=.6)
# The bottomleft graph

plot(as.character(Global_reactive_power),type="l",ylab="Global_reactive_power",xlab="datetime",xaxt="n")
axis(1,at=x,labels=lb)
# The bottomright graph