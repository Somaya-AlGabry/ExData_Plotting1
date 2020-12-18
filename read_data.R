#download data:
filename <- "exdata_data_household_power_consumption.zip"
if (!file.exists(filename)){
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, filename)
}
if (!file.exists("exdata_data_household_power_consumption")) { 
  unzip(filename) 
}

#read data:
data <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE, na.strings = "?")
data$Date <- strptime(data$Date, "%d/%m/%Y")
data[,3:9] <- lapply(data[,3:9], as.numeric)
subdata <- subset(data, Date == "2007-02-01" | Date == "2007-02-02" )

library(dplyr)
subdata2 <- mutate(subdata,
                   DateTime = strptime(
                     paste(subdata$Date, subdata$Time, sep = ""),
                     "%Y-%m-%d %H:%M:%S" ))

