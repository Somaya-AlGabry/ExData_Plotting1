source("read_data.R")

#plot:
png(filename = "plot4.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

par(mfrow = c(2,2) )
#first plot:
with(subdata2, 
     plot(DateTime, Global_active_power, type = "l", 
          xlab = "", ylab = "Global Active Power")
)
#second plot:
with(subdata2, 
     plot(DateTime, Voltage, type = "l")
)
#third plot:
with(subdata2, 
     plot(DateTime, Sub_metering_1 ,
          type = "l", col = "black", 
          xlab = "", ylab  = "Energy sub metering"),
)
with(subdata2, lines(DateTime, Sub_metering_2, col = "red"))
with(subdata2, lines(DateTime, Sub_metering_3, col = "blue"))
legend('topright',
       col = c("black", "red", "blue"),
       c("sub_metering_1", "sub_metering_1", "sub_metering_1"), lwd = 1)

#fourth plot:
with(subdata2, 
     plot(DateTime, Global_reactive_power, type = "l")
)

dev.off()
