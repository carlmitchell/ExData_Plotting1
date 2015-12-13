# This function produces a plot of global active power vs. time
# then saves it to 'plot2.png'
plot2 <- function(dataframe){
    png('plot2.png')
    plot(data[["Time"]],data[["Global_active_power"]],xlab="",ylab="Global Active Power (kilowatts)",type="l")
    dev.off()
}