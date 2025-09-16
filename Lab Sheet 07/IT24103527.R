setwd("C:\\Users\\User\\Desktop\\IT24103527")
#01.) 
# Calculate P(X <= 25) - P(X <= 10)
# This gives the probability of the interval [10, 25]
probability <- punif(25, min=0, max=40) - punif(10, min=0, max=40)
print(probability)

#02.) 
# Calculate the probability that the time is less than or equal to 2 hours
probability <- pexp(2, rate =1/3)
print(probability)

#03.)
#i.) 
# pnorm() with lower.tail = FALSE calculates P(X > x)
prob_above_130 <- pnorm(130, mean=100, sd=15, lower.tail = FALSE)
print(prob_above_130)

#ii.) 
#qnorm() is the inverse of pnorm() and gives the value for a given probability
iq_95th_percentile <- qnorm(0.95, mean=100, sd=15)
print(iq_95th_percentile)