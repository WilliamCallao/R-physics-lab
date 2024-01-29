# circuit_simulation.R

# Load necessary functions
source("resistance_functions.R")
source("ohms_law_functions.R")
source("simulation_functions.R")

# Simulation parameters
nn <- 100
rho_values <- seq(0.2, 1, length.out = nn)
length_values <- seq(0.5, 20, length.out = nn)
area_values <- seq(0.2, 15, length.out = nn)
Voltage <- 100

# Case 1: Variable rho
resistance_values_1 <- list(rho = rho_values, Length = 11.5, Area = 9.49)
variable_values_1 <- rho_values
R1 <- analyze_resistance(resistance_values_1, variable_values_1, "Rho")

# Case 2: Variable length
resistance_values_2 <- list(rho = 0.6, Length = length_values, Area = 9.49)
variable_values_2 <- length_values
R2 <- analyze_resistance(resistance_values_2, variable_values_2, "Length")

# Case 3: Variable area
resistance_values_3 <- list(rho = 0.6, Length = 11.7, Area = area_values)
variable_values_3 <- area_values
R3 <- analyze_resistance(resistance_values_3, variable_values_3, "Area")

# Analyzing current for the resistances
I1 <- analyze_current(Voltage = Voltage, Resistance = R1)
I2 <- analyze_current(Voltage = Voltage, Resistance = R2)
I3 <- analyze_current(Voltage = Voltage, Resistance = R3)

# Circuit with 3 resistors in series
Re_series <- R1 + R2 + R3
I_series <- analyze_current(Voltage = Voltage, Resistance = Re_series)

# Circuit with 3 resistors in parallel
Re_parallel <- (1/R1 + 1/R2 + 1/R3)^-1
I_parallel <- analyze_current(Voltage = Voltage, Resistance = Re_parallel)
