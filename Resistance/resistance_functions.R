# resistance_functions.R

# Function to calculate resistance
Resistance <- function(rho, Length, Area) {
  R = rho * (Length / Area)
  return(R)
}
