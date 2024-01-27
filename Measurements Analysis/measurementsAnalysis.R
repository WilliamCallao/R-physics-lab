# Date: 06-04-2021
# Topic: Direct Measurements Analysis
# Objective: Calculate mean, standard deviation, error, and percentage error

# DATA
# Angle = 20
# Length = 0.70m
# Mass = 1Kg
# Friction = 0, 2, 4, 5
# Gravity = Earth, Moon, Jupiter

# Data Sets
Earth_Friction_0 = c(17.02,17.01,16.98,16.99,17.00,16.99,16.97,17.02,17.00,16.99)
Earth_Friction_2 = c(16.91,16.95,17.00,16.92,16.95,16.93,16.96,17.01,16.92,16.91)
Earth_Friction_4 = c(16.99,16.91,17.00,16.99,16.96,16.98,17.00,16.99,16.91,17.02)
Earth_Friction_5 = c(16.89,17.05,16.82,16.92,17.06,16.88,16.96,17.01,16.97,16.89)

n_data = 10

# Data Set
X = Earth_Friction_0

# Arithmetic Mean
Mean_Arithmetic = mean(X)  # Calculate arithmetic mean

# Standard Deviation
Stdev = sd(X)  # Calculate standard deviation

# Error of the Arithmetic Mean
Error_Mean_Arithmetic = (Stdev / sqrt(n_data))  # Calculate error of the mean

# Percentage Error
Percentage_Error = ((Error_Mean_Arithmetic / Mean_Arithmetic) * 100)  # Calculate percentage error

# Error Handling
if (length(X) != n_data) {
    stop("Number of data points does not match the expected count.")
}

# Function to Calculate Percentage Error
calculate_percentage_error <- function(data) {
    mean_val = mean(data)
    stdev_val = sd(data)
    error_mean = stdev_val / sqrt(length(data))
    return ((error_mean / mean_val) * 100)
}

# Usage
Percentage_Error_Function = calculate_percentage_error(Earth_Friction_0)
