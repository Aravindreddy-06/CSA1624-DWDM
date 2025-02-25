# Given ages data
ages <- c(23, 45, 56, 47, 28, 34, 40, 35, 50, 44, 38, 30, 37, 52, 31, 29, 41, 43)

# Value to normalize
value_to_normalize <- 35

# Compute min and max ages
min_age <- min(ages)
max_age <- max(ages)

# Min-Max Normalization
min_max_normalized <- (value_to_normalize - min_age) / (max_age - min_age)

# Compute mean and standard deviation for Z-score normalization
mean_age <- mean(ages)
sd_age <- sd(ages)

# Z-Score Normalization
z_score_normalized <- (value_to_normalize - mean_age) / sd_age

# Compute max absolute age for Decimal Scaling Normalization
max_abs_age <- max(abs(ages))
j <- ceiling(log10(max_abs_age))

# Decimal Scaling Normalization
decimal_scaled_normalized <- value_to_normalize / (10^j)

# Print results
cat("Original Value:", value_to_normalize, "\n")
cat("Min-Max Normalized:", min_max_normalized, "\n")
cat("Z-Score Normalized:", z_score_normalized, "\n")
cat("Decimal Scaled Normalized:", decimal_scaled_normalized, "\n")
