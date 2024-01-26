H_cylinders <- seq(1, 6)
M_cylinders <- c(8.65, 17.30, 25.95, 34.63, 43.31, 51.95)

# Check if lengths match
stopifnot(length(H_cylinders) == length(M_cylinders))

# Plotting Cylinder Data
ggplot(data.frame(H_cylinders, M_cylinders), aes(x = H_cylinders, y = M_cylinders)) +
  geom_point(shape = 18) +
  geom_line() +
  labs(x = "H [cm]", y = "m [g]", title = "Cylinder Data")

# Linearization for Cylinders
cylinder_data <- data.frame(log_H_cylinders = log(H_cylinders), log_M_cylinders = log(M_cylinders))

ggplot(cylinder_data, aes(x = log_H_cylinders, y = log_M_cylinders)) +
  geom_point(shape = 18) +
  geom_line() +
  labs(x = "log(H [cm])", y = "log(m [g])", title = "Linearization of Cylinder Data")
