setwd("C:/Users/IT24103527/Desktop")
branch.data <- read.csv("Exercise.txt", header = TRUE)
boxplot(branch.data$Sales_X1, main = "Boxplot for Sales", ylab = "Sales_X1")
summary(branch.data$Advertising_X2)
IQR(branch.data$Advertising_X2)
find_outliers <- function(x) {
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  IQR <- Q3 - Q1
  lower_bound <- Q1 - 1.5 * IQR
  upper_bound <- Q3 + 1.5 * IQR
  outliers <- x[x < lower_bound | x > upper_bound]
  return(outliers)
}
outliers_years <- find_outliers(branch.data$Years_X3)
print(outliers_years)