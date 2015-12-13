# This function produces a 4-panel plot:

# Global Active Power | Voltage
# --------------------+----------------------
# Energy Sub Metering | Global Reactive Power

# The optional argument "save" determines whether the plot is
# output to the console or saved to 'plot4.png'
plot4 <- function(dataframe,save=TRUE){
    if(save){png('plot4.png')}
    par(mfrow=c(2,2))
    #par(mar=c(0.5,4.5,0.5,0.5))
    plot(data[["Time"]],data[["Global_active_power"]],xlab="",ylab="Global Active Power",type="l")
    plot(data[["Time"]],data[["Voltage"]],xlab="datetime",ylab="Voltage",type="l")
    plot(data[["Time"]],data[["Sub_metering_1"]],xlab="",ylab="Energy sub metering",type="l")
    lines(data[["Time"]],data[["Sub_metering_2"]],col="red")
    lines(data[["Time"]],data[["Sub_metering_3"]],col="blue")
    legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
           lty=1, col=c('black', 'red', 'blue'), bty='n')
    plot(data[["Time"]],data[["Global_reactive_power"]],xlab = "datetime",ylab = "Global_reactive_power",type="l")
    if(save){dev.off()}
}