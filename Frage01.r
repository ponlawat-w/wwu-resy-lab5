# Install packages
install.packages('udunits2');
install.packages('units');

# Using packages
library('units');
library('udunits2');

# Defining units
deg <- make_units(arc_degree);
min <- make_units(arc_minute);
sec <- make_units(arc_second);

# Assigning values
coor.E <- 9 * deg + 19 * min + 55 * sec; # 9° 19' 55" E
coor.N <- 52 * deg + 9 * min + 45 * sec; # 52° 9' 45" N

# Print values
print(coor.E); # 9.331944°
print(coor.N); # 52.1625°
