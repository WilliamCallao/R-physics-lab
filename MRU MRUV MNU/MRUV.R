# Generating time values for MRUV
t <- seq(from = 1, to = 50, length.out = 100) 

# MRUV equation: x = xo + v * t + 0.5 * a * t^2
xo <- 100
v <- 4
a <- 20

# Generating White Gaussian Noise
WGN <- rnorm(n = 100, mean = 0, sd = 200)

# Generating MRUV data
x <- xo + v * t + 0.5 * a * t^2 + WGN

# Plotting MRUV data
plot(t, x, type = "l")

# Linear modeling with quadratic term
f2 <- lm(x ~ poly(t, 2))
summary(f2)

# Plotting original data and quadratic fit
plot(t, x, type = "l")
points(t, predict(f2), type = "l", col = "blue")