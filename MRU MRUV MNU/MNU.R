# Generating random coefficients
a <- runif(1, 1, 4)
b <- runif(1, 2, 5)

# Generating time values for MNU
t <- seq(1, 10, length.out = 100)

# Generating MNU data
y <- (a * t) / (b + t) + rnorm(n = length(t), mean = 0, sd = 0.1)

# Plotting MNU data
plot(t, y, type = "l")    

# Non-linear modeling using nls
a_start <- 1
b_start <- 1
F3 <- nls(y ~ (a * t) / (b + t), start = list(a = a_start, b = b_start))

# Plotting original data and non-linear fit
plot(t, y, type = "l")
lines(t, predict(F3), col = "blue")

# Summarizing the non-linear fit
summary(F3)

# Calculating correlation between original and fitted values
cor(y, predict(F3))