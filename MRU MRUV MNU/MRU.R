# Generating time values
t <- seq(from = 1, to = 50, length.out = 100) 

# Defining constants
xc <- 5
ni <- 100
sigma.xc <- 3

# Generating White Gaussian Noise
WGN <- rnorm(n = ni, mean = xc, sd = sigma.xc)

# MRU equation: X = XO + v * t
xo <- 10
v  <- 5
x <- xo + v * t + WGN

# Plotting MRU data
plot(t, x, type = "l", lty = 2) 

# Linear modeling
F1 <- lm(x ~ t)
summary(F1)

# Plotting original data and linear fit
plot(t, x, type = "l")
points(t, predict(F1), type = "l", col = "blue")