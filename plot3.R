source("read_data.R")

#plot:
png(filename = "plot3.png", 
    width = 480, height = 480,
    units = "px", bg = "transparent")

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

dev.off()
