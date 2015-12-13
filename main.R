# This is the main driver program for course project one. This program
# calls 'readdata' to read in the data frame from the file, then passes
# that data frame to plotting routines to create the four plots.
main <- function(){
    source('readdata.R')
    source('plot1.R')
    source('plot2.R')
    source('plot3.R')
    source('plot4.R')
    data = readdata()
    plot1(data)
    plot2(data)
    plot3(data)
    plot4(data)
}