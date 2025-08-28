#1. 
setwd("C:\\Users\\IT24103527\\Desktop\\IT24103527")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE) 
fix(Delivery_Times)
#2.)
hist(Delivery_Times$Delivery_Time,
     breaks = seq(20, 70, length.out = 10), 
     right = TRUE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     col = "green",
     border = "black"
)

# 3.) 
# After drawing the histogram, the distribution appears to be roughly symmetric,
# with a slight skew to the right.

#4.)
# First, calculate the cumulative frequencies.
# We get the histogram data without plotting it.
hist_data <- hist(Delivery_Times$Delivery_Time, breaks = seq(20, 70, length.out = 10), plot = FALSE)
cumulative_freq <- cumsum(hist_data$counts)

# Get the upper limits and corresponding cumulative frequencies for the ogive.
upper_limits <- hist_data$breaks[2:length(hist_data$breaks)]
ogive_data <- cbind(upper_limits, cumulative_freq)


# Drawing a cumulative frequency polygon (ogive) for the data in a separate plot.
plot(x = c(hist_data$breaks[1], upper_limits),
     y = c(0, cumulative_freq),
     type = "b", # 'b' for both points and lines
     main = "Cumulative Frequency Polygon (Ogive)", 
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     col = "red",
     pch = 19
)