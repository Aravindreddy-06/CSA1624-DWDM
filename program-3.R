# Given data
data <- c(200, 300, 400, 600, 1000)

# Compute min and max values
min_value <- min(data)
max_value <- max(data)

# Min-Max Normalization
min_max_normalization <- (data - min_value) / (max_value - min_value)

# Compute mean and standard deviation
mean_value <- mean(data)
std_dev <- sd(data)

# Z-Score Normalization
z_score_normalization <- (data - mean_value) / std_dev

# Print results
cat("Original Data:", data, "\n")
cat("Min-Max Normalization:", min_max_normalization, "\n")
cat("Z-Score Normalization:", z_score_normalization, "\n")
