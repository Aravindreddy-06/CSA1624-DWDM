# Given data
age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 51, 54, 54, 56, 57, 58, 58, 60, 61)
body_fat <- c(9.5, 26.5, 7.8, 17.8, 14.25, 9.27, 4.27, 8.31, 12, 34.6, 42.5, 28.8, 33.4, 
              30.2, 34.1, 32.9, 41.2, 35)

# Compute statistics for age
age_mean <- mean(age)
age_median <- median(age)
age_sd <- sd(age)

# Compute statistics for body fat
body_fat_mean <- mean(body_fat)
body_fat_median <- median(body_fat)
body_fat_sd <- sd(body_fat)

# Print results
cat("Age - Mean:", age_mean, "Median:", age_median, "SD:", age_sd, "\n")
cat("Body Fat - Mean:", body_fat_mean, "Median:", body_fat_median, "SD:", body_fat_sd, "\n")

# Set up plotting layout
par(mfrow = c(1, 2))

# Boxplots
boxplot(age, main = "Boxplot of Age", col = "lightblue", ylab = "Age")
boxplot(body_fat, main = "Boxplot of Body Fat", col = "lightgreen", ylab = "Body Fat (%)")

# Reset plotting layout
par(mfrow = c(1, 1))

# Scatter plot of Age vs Body Fat
plot(age, body_fat, main = "Scatter Plot of Age vs Body Fat",
     xlab = "Age", ylab = "Body Fat (%)", pch = 16, col = "purple")

# Q-Q plots
par(mfrow = c(1, 2))
qqnorm(age, main = "Q-Q Plot of Age")
qqline(age, col = "red")

qqnorm(body_fat, main = "Q-Q Plot of Body Fat")
qqline(body_fat, col = "red")

# Reset plotting layout
par(mfrow = c(1, 1))
