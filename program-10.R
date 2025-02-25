# Given speeds data
speeds <- c(78.3, 81.5, 93, 14.2, 83.4, 84.5, 21.9, 77.5, 80.9, 70.6)

# Compute Q1 and Q3
Q1 <- quantile(speeds, 0.25)
Q3 <- quantile(speeds, 0.75)

# Compute IQR
IQR_value <- Q3 - Q1

# Compute Standard Deviation
std_dev <- sd(speeds)

# Print results
print(paste("Interquartile Range (IQR):", IQR_value))
print(paste("Standard Deviation:", std_dev))
