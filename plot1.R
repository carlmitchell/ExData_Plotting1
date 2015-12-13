# This function plots a histogram of the global active power column
# of the data frame.
# The optional argument "save" determines whether the plot is
# output to the console or saved to 'plot1.png'
plot1 <- function(dataframe,save=TRUE){
    if(save){png('plot1.png')}
    hist(data[["Global_active_power"]], main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency", col="red")
    if(save){dev.off()}
}