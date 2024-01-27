# Date: 03/07/2021

# Defining the function to calculate total voltage
total_voltage <- function(V, R, ri) {
  # Formula for calculating total voltage
  VT = R * (V / (R + ri))
  return(VT)
}

# Resistances to evaluate
R_int <- seq(0.1, 5, length.out = 50)

# Function to perform and visualize analysis for a specific case
analyze_case <- function(V, R, ri_values, case_name) {
  # Calculating total voltage
  VT = total_voltage(V, R, ri_values)
  
  # Visualizing the results
  plot(ri_values, VT, main = paste("Analysis for Case", case_name),
       xlab = "Internal Resistance (Ri)", ylab = "Total Voltage (VT)", type = "l")
  
  # Linear regression and visualization
  fit = lm(VT ~ ri_values)
  abline(fit, col = "blue")
  summary(fit)
}
