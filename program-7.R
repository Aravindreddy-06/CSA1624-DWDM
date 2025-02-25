# Given pencils data
pencils <- c(9, 25, 28, 12, 11, 6, 7, 8, 9, 10)

# Compute mean
mean_pencils <- mean(pencils)

# Compute median
median_pencils <- median(pencils)

# Function to calculate mode
mode_pencils <- function(x) {
  unique_vals <- unique(x)
  unique_vals[which.max(tabulate(match(x, unique_vals)))]
}

# Compute mode
mode_pencils_val <- mode_pencils(pencils)

# Print results
cat("Mean of Pencils:", mean_pencils, "\n")
cat("Median of Pencils:", median_pencils, "\n")
cat("Mode of Pencils:", mode_pencils_val, "\n")
