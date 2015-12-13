# This function produces a plot of the three sub-metering energies
# vs. time and saves it to 'plot3.png'
plot3 <- function(dataframe){
    png("plot3.png")
    plot(data[["Time"]],data[["Sub_metering_1"]],xlab="",ylab="Energy sub metering",type="l")
    lines(data[["Time"]],data[["Sub_metering_2"]],col="red")
    lines(data[["Time"]],data[["Sub_metering_3"]],col="blue")
    legend('topright',c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), 
           lty=1, col=c('black', 'red', 'blue'))
    dev.off()
}