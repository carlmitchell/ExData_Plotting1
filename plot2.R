# This function produces a plot of global active power vs. time
# The optional argument "save" determines whether the plot is
# output to the console or saved to 'plot2.png'
plot2 <- function(dataframe,save=TRUE){
    if(save){png('plot2.png')}
    plot(data[["Time"]],data[["Global_active_power"]],xlab="",ylab="Global Active Power (kilowatts)",type="l")
    if(save){dev.off()}
}