data<-read.table(paste(getwd(),"/","household_power_consumption.txt",sep=""),header = TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
Data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
png("plot2.png",width = 480,height = 480)
datetime<-strptime(paste(Data$Date,Data$Time,sep=" "),format="%d/%m/%Y %H:%M:%S")
plot(datetime,Data$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type="l")
dev.off()