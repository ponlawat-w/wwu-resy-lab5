# Importing packages
library('units');
library('udunits2');

# Defining units
deg <- make_units(arc_degree);
min <- make_units(arc_minute);
sec <- make_units(arc_second);

# Defining function
printComponents <- function(x) {
  sign <- x / abs(x); # Keep the sign of degree value (otherwise floor function will works differently)
  x <- set_units(abs(x), arc_degree); # Confirm that parameter input is in degree
  resultDegree <- floor(x); # Remove decimal to get degree value
  x <- set_units(x - resultDegree, arc_minute); # Get decimal part, convert to minute
  resultMinutes <- floor(x); # Remove decimal to get minute value
  resultSeconds <- set_units(x - resultMinutes, arc_second); # Get decimal part, convert to second
  resultDegree <- resultDegree * sign; # Return the sign to the degree
  
  sprintf('%d° %d\' %f\"', resultDegree, resultMinutes, resultSeconds); # Print the result
}

# Convert

coor.E <- -97.380775 * deg;
printComponents(coor.E); # -97° 22' 50.790000"

coor.N <- 33.647579 * deg;
printComponents(coor.N); # 33° 38' 51.284400"
