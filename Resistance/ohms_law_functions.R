# ohms_law_functions.R

# Function to calculate current
current <- function(Voltage, Resistance) {
  I = Voltage / Resistance
  return(I)
}
