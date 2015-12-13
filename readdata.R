# This function reads the data in household_power_consumption.txt
# and returns a data frame. The dates and times are converted to the
# native R date and time objects. Only the data from 2007-02-01 to
# 2007-02-02 are returned.
readdata <- function(){
    #Read in the data table
    data <- read.table('household_power_consumption.txt',sep=';',header=TRUE,na.strings="?")
    #Convert date column to date objects
    data[["Date"]] <- as.Date(data[["Date"]], format="%d/%m/%Y")
    #Mask for those two days
    data <- data[data[["Date"]] == '2007-02-01' | data[["Date"]] == '2007-02-02',]
    #Convert to time objects
    data[["Time"]] <- strptime(data[["Time"]],format="%H:%M:%S")
    shift <- as.numeric((data[["Date"]]-as.Date(data[["Time"]])))*86400
    data[["Time"]] <- data[["Time"]]+shift
    #Return the data frame
    data
}