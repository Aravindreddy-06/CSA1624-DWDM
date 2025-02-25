# Given age data
ages <- c(13, 15, 16, 18, 20, 20, 21, 22, 25, 25, 30, 33, 33, 35, 35, 35, 35, 36, 40, 45, 46, 62, 70)

# Compute mean
mean_age <- mean(ages)

# Compute median
median_age <- median(ages)

# Compute mode (most frequent values)
mode_age <- as.numeric(names(sort(table(ages), decreasing = TRUE)))

# Determine number of modes (modality)
modality <- length(which(table(ages) == max(table(ages))))

# Compute midrange
midrange_age <- (min(ages) + max(ages)) / 2

# Compute first quartile (Q1) and third quartile (Q3)
Q1 <- quantile(ages, 0.25)
Q3 <- quantile(ages, 0.75)

# Print results
cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
cat("Mode(s):", mode_age, "\n")
cat("Modality (number of modes):", modality, ifelse(modality == 1, "unimodal",ifelse(modality == 2, "bimodal", ifelse(modality == 3, "trimodal", "multimodal"))), "\n")
cat("Midrange:", midrange_age, "\n")
cat("First Quartile (Q1):", Q1, "\n")
cat("Third Quartile (Q3):", Q3, "\n")
