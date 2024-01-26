D_discs <- seq(1, 6)
M_discs <- c(1.22, 4.90, 10.40, 19.52, 30.71, 43.75)

# Check if lengths match
stopifnot(length(D_discs) == length(M_discs))

# Plotting Disc Data
ggplot(data.frame(D_discs, M_discs), aes(x = D_discs, y = M_discs)) +
  geom_point(shape = 18) +
  geom_line() +
  labs(x = "D [cm]", y = "m [g]", title = "Disc Data")

# Linearization for Discs
disc_data <- data.frame(z_discs = D_discs^2, M_discs)

ggplot(disc_data, aes(x = z_discs, y = M_discs)) +
  geom_point(shape = 18) +
  geom_line() +
  labs(x = "D^2 [cm^2]", y = "m [g]", title = "Linearization of Disc Data")