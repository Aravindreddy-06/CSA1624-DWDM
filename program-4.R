# Given data
data <- c(11, 13, 13, 15, 15, 16, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
# Number of bins
num_bins <- 4
# Compute bin size
bin_size <- ceiling(length(data) / num_bins)

# Split data into bins
bins <- split(data, ceiling(seq_along(data) / bin_size))

# Smoothing by bin mean
smoothed_mean <- unlist(lapply(bins, function(bin) rep(mean(bin), length(bin))))

# Smoothing by bin median
smoothed_median <- unlist(lapply(bins, function(bin) rep(median(bin), length(bin))))

# Smoothing by bin boundaries
smoothed_boundaries <- unlist(lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - min_val) <= abs(x - max_val), min_val, max_val))
}))
# Print results
cat("Original Data:\n", data, "\n\n")
cat("Smoothing by Bin Mean:\n", smoothed_mean, "\n\n")
cat("Smoothing by Bin Median:\n", smoothed_median, "\n\n")
cat("Smoothing by Bin Boundaries:\n", smoothed_boundaries, "\n")
