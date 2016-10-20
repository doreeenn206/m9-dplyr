# Exercise 3: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1


# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
library(fueleconomy)
library(dplyr)
# Which Accura model has the best hwy MPG in 2015? (without method chaining)

filter.acura <- filter(vehicles, make=='Acura', year==2015)

max.acura <- filter(filter.acura, hwy == max(hwy))

acura.model <- select(max.acura, model)

# Which Accura model has the best hwy MPG in 2015? (nesting functions)
best.model <- select(
  filter(
    filter(vehicles, make == 'Acura', year == 2015), hwy == max(hwy)
  ), model
)

# Which Accura model has the best hwy MPG in 2015? (pipe operator)


### Bonus ###

# Write 3 functions, one for each approach.  Then, 
# Test how long it takes to perform each one 1000 times
