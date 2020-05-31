#Unzip the contents in the working directory

data<-read.table("household_power_consumption.txt",header = TRUE,sep = ";")
mainData<-subset(data,Date=="1/2/2007"|Date=="2/2/2007")

Global_active_power<-as.numeric(mainData[,3])

date<-strptime(paste(mainData$Date,mainData$Time,sep = " "),"%d/%m/%Y %H:%M:%S")
png("plot2.png",height = 480,width = 480)

plot(date,Global_active_power,type="l",xlab="",ylab = "Global_active_power (kilowatts)" )

dev.off()