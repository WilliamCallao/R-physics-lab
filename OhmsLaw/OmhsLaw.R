
# OHM'S LAW
# V = I * R

# Creating a range of voltages
V <- seq(0.1, 9, length.out = 100)

# Resistance 1
R1 <- 81
I1 <- V/R1

# Plot and linear fitting for R1
plot(V, I1, main = "Ohm's Law - Resistance 81 Ohm", xlab = "Voltage (V)", ylab = "Current (I)")
F1 <- lm(I1 ~ V)
summary(F1)
lines(V, predict(F1), col = "blue")

# Resistance 2
R2 <- 255
I2 <- V/R2

# Plot and linear fitting for R2
plot(V, I2, main = "Ohm's Law - Resistance 255 Ohm", xlab = "Voltage (V)", ylab = "Current (I)")
F2 <- lm(I2 ~ V)
summary(F2)
lines(V, predict(F2), col = "blue")

# Resistance 3
R3 <- 500 
I3 <- V/R3

# Plot and linear fitting for R3
plot(V, I3, main = "Ohm's Law - Resistance 500 Ohm", xlab = "Voltage (V)", ylab = "Current (I)")
F3 <- lm(I3 ~ V)
summary(F3)
lines(V, predict(F3), col = "blue")

# Resistance 4
R4 <- 783 
I4 <- V/R4

# Plot and linear fitting for R4
plot(V, I4, main = "Ohm's Law - Resistance 783 Ohm", xlab = "Voltage (V)", ylab = "Current (I)")
F4 <- lm(I4 ~ V)
summary(F4)
lines(V, predict(F4), col = "blue")

# Resistance 5
R5 <- 1000
I5 <- V/R5

# Plot and linear fitting for R5
plot(V, I5, main = "Ohm's Law - Resistance 1000 Ohm", xlab = "Voltage (V)", ylab = "Current (I)")
F5 <- lm(I5 ~ V)
summary(F5)
lines(V, predict(F5), col = "blue")