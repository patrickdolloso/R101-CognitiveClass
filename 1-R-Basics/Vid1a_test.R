## Create a multi dimensional vector
# create year vector
year <-c(1985, 1999, 2010, 2002)

# add names to year vector
names(year) <- c("The Breakfast Club", "American Beauty", "Black Swan", "Chicago")

# Display year of Black Swan
year["Black Swan"]

## Create a sorted vector
movie_length <- c("Very short","Short","Medium","Short","Very Long","Very short","Very short")

# to specify levels:
mvlength_factor <- factor(movie_length,
                          ordered = TRUE,
                          levels = c("Very short","Short","Medium","Very Long"))

# sort levels
year_sorted <- sort(year)