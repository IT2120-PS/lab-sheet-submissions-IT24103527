setwd("C:\\Users\\User\\Desktop\\PS Lab 8 Answers")
data<-read.table("Exercise - LaptopsWeights.txt" , header=TRUE)
fix(data)
attach(data)
#01.) 
weights <- c(2.46, 2.45, 2.47, 2.71, 2.46, 2.05, 2.6, 2.42, 2.43, 2.53, 2.57, 2.85, 2.7, 2.53, 2.28, 2.2, 2.57, 2.89, 2.51, 2.47, 2.66, 2.06
             , 2.41, 2.65, 2.76, 2.43, 2.61, 2.57, 2.73, 2.17, 2.67, 2.05, 1.71, 2.32, 2.23, 2.76, 2.7, 2.13, 2.75, 2.2)

# Calculate the population mean and population standard deviation.
pop_mean <- mean(weights)
# Note: R's sd() function calculates the sample standard deviation (divides by n-1).
pop_std_dev <- sqrt(sum((weights - pop_mean)^2) / length(weights))

print("--- Population Statistics ---")
print("Population Mean (μ):")
print(pop_mean)
print("Population Standard Deviation (σ):")
print(pop_std_dev)

#02.) 
num_samples <- 25
sample_size <- 6
sample_means <- numeric(num_samples)
sample_std_devs <- numeric(num_samples)

for (i in 1:num_samples) {
  # Use 'sample' command to draw a random sample with replacement.
  s <- sample(weights, sample_size, replace = TRUE)
  print(s)
  
  # Calculate and store the mean and standard deviation for each sample.
  sample_means[i] <- mean(s)
  print("Sample mean:")
  print(sample_means[i])
  sample_std_devs[i] <- sd(s)
  print(" sample standard deviation:")
  print(sample_std_devs[i])
}


#03.) 
mean_of_sample_means <- mean(sample_means)
std_dev_of_sample_means <- sd(sample_means)

print("--- Sample Statistics ---")

print("Mean of the 25 sample means:")
print(mean_of_sample_means)

print("Standard Deviation of the 25 sample means:")
print(std_dev_of_sample_means)

print("Theoretical Standard Error (σ/√n):")
print(pop_std_dev / sqrt(sample_size))

# State the relationships
print("--- Relationships ---")
print("The mean of the sample means is very close to the population mean (μ).")
print("The standard deviation of the sample means is close to the population standard deviation divided by the square root of the sample size 
      (σ/√n).")