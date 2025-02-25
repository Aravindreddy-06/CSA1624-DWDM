# Given data
x <- c(411, 517, 10, 2, 50, 25, 90, 36)
y <- c(12, 5, 13, 19, 31, 7, 153, 72)

# Scatter plot
plot(x, y, main = "Scatter Plot of Mobile Phones Sold vs Money",
     xlab = "Number of Mobile Phones Sold", 
     ylab = "Money", 
     pch = 19, col = "blue")

# Add regression line
abline(lm(y ~ x), col = "red", lwd = 2)
