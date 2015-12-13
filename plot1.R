# This function plots a histogram of the global active power column
# of the data frame, then saves it to 'plot1.png'
plot1 <- function(dataframe){
    png('plot1.png')
    hist(data[["Global_active_power"]], main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab = "Frequency", col="red")
    dev.off()
}