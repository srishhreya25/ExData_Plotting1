data<-read.table(paste(getwd(),"/","household_power_consumption.txt",sep=""),header = TRUE,sep=";",stringsAsFactors = FALSE,dec=".")
Data<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
png("plot1.png",width = 480,height = 480)
hist(as.numeric(Data$Global_active_power),freq = TRUE,main = "Global Active Power(kilowatts)",col = "red",xlab = "Global Active Power",ylab = "Frequency",ylim=c(0,1300))
dev.off()