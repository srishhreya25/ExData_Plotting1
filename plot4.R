data<-read.table(paste(getwd(),"/","household_power_consumption.txt",sep=""),header = TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
Data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
datetime<-strptime(paste(Data$Date,Data$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")
png("plot4.png",width = 480,height = 480)
par(mfrow=c(2,2))
plot(datetime,Data$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type="l")
plot(datetime,Data$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(datetime,Data$Sub_metering_1,type="l",xlab="",ylab="Energy Submetering")
lines(datetime,Data$Sub_metering_2,col="red")
lines(datetime,Data$Sub_metering_3,col="blue")
legend("topright",legend = c("sub_metering_1","sub_metering_2","sub_metering_3"),lty =c(1,1,1),lwd= c(2,2,2),col=c("black","red","blue"))
plot(datetime,Data$Global_reactive_power,type="l")
dev.off()