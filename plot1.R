source("read_data.R")

#plot:
png(filename = "plot1.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

hist(subdata$Global_active_power, 
     xlab = "Global Active Power(Kilowatts)", 
     col="red",
     main = "Global Active Power")

dev.off()
