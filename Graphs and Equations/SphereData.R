D_spheres <- c(0.713, 0.998, 1.501, 1.746, 1.905, 2.222)
M_spheres <- c(1.47, 4.50, 13.75, 21.70, 28.20, 44.75)

# Check if lengths match
stopifnot(length(D_spheres) == length(M_spheres))

# Plotting Sphere Data
ggplot(data.frame(D_spheres, M_spheres), aes(x = D_spheres, y = M_spheres)) +
  geom_point(shape = 18) +
  geom_line() +
  labs(x = "D [cm]", y = "m [g]", title = "Sphere Data")

# Linearization for Spheres
sphere_data <- data.frame(log_D_spheres = log(D_spheres), log_M_spheres = log(M_spheres))

ggplot(sphere_data, aes(x = log_D_spheres, y = log_M_spheres)) +
  geom_point(shape = 18) +
  geom_line() +
  labs(x = "log(D [cm])", y = "log(m [g])", title = "Linearization of Sphere Data")