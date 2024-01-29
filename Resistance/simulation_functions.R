# simulation_functions.R

# Function to perform resistance analysis and plot results
analyze_resistance <- function(resistance_values, variable_values, variable_name) {
  # Calculate resistance
  R = Resistance(rho = resistance_values$rho, Length = resistance_values$Length, Area = resistance_values$Area)
  
  # Plot results
  plot(R, variable_values, main = paste(variable_name, "vs Resistance"),
       xlab = "Resistance", ylab = variable_name)
  
  return(R)
}

# Function to perform current analysis and plot results
analyze_current <- function(Voltage, Resistance) {
  I = current(Voltage = Voltage, Resistance = Resistance)
  
  # Plot results
  plot(Resistance, I, main = "Current vs Resistance",
       xlab = "Resistance", ylab = "Current")
  
  return(I)
}
