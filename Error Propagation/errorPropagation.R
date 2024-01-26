# Date: 12-04-2021
# Topic: Error Propagation
# Purpose: Demonstrate error propagation calculations for a parallelepiped

# Input Data for a Specific Parallelepiped
length <- 2.96  # mt
width <- 2.14   # mt
thickness <- 0.94  # mt
error <- 0.01    # measurement error

# Error Propagation Calculations
nabla_length_squared <- (width * thickness * error)^2
nabla_width_squared <- (length * thickness * error)^2
nabla_thickness_squared <- (length * width * error)^2
error_volume = sqrt(nabla_length_squared + nabla_width_squared + nabla_thickness_squared)

# Function to Calculate Volume and Error
calculate_volume_error <- function(length, width, thickness, error_length, error_width, error_thickness) {
  volume <- length * width * thickness
  err_length <- (width * thickness * error_length)^2
  err_width <- (length * thickness * error_width)^2
  err_thickness <- (length * width * error_thickness)^2
  err_volume <- sqrt(err_length + err_width + err_thickness)
  data.frame(volume, err_volume)
}

# Example with Specific Values
example_data <- calculate_volume_error(length, width, thickness, error, error, error)

# Generating Random Data
num_points <- 60
min_value <- 5
max_value <- 15

random_lengths <- runif(n = num_points, min = min_value, max = max_value)
random_widths <- runif(n = num_points, min = min_value, max = max_value)
random_thicknesses <- runif(n = num_points, min = min_value, max = max_value)

# Defining Data Frame for Volume
random_data_volume <- data.frame(random_lengths, random_widths, random_thicknesses)
head(random_data_volume)

# Calculating Volume and Error for Random Data
random_data_result <- calculate_volume_error(random_lengths, random_widths, random_thicknesses, error, error, error)
head(random_data_result)