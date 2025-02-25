# Given frequency values
frequency <- c(200, 450, 300, 1500, 700, 44)

# Given class intervals
class_intervals <- c(5, 15, 20, 50, 80, 110)

# Compute cumulative frequency
cum_frequency <- cumsum(frequency)

# Compute total frequency
N <- sum(frequency)

# Find median class index
median_class_index <- which(cum_frequency >= (N / 2))[1]

# Lower class boundary (LLC) for the median class
LLC <- c(1.5, 11.5, 20, 50, 80, 110)[median_class_index]

# Cumulative frequency before median class
F <- ifelse(median_class_index == 1, 0, cum_frequency[median_class_index - 1])

# Frequency of the median class
f_median <- frequency[median_class_index]

# Class width (assuming equal intervals)
h <- class_intervals[median_class_index] - class_intervals[median_class_index - 1]

# Compute median
median <- LLC + ((N / 2 - F) / f_median) * h

# Print result
print(median)


