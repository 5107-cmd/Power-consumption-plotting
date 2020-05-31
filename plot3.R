#Unzip the contents in the working directory

data<-read.table("household_power_consumption.txt",header = TRUE,sep = ";")
mainData<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

datetime<-strptime(paste(mainData$Date,mainData$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
png("plot3.png",width = 480,height = 480)
plot(date,mainData$Sub_metering_1,col="black",type = "l",xlab = "",ylab = "Energy sub metering")
points(date,mainData$Sub_metering_2,col="red",type = "l")
points(date,mainData$Sub_metering_3,col="blue",type = "l")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=1, lwd=2.5,col = c("red","black","blue"))
dev.off()       