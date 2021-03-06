# Exercise 2: Data Frame Practice with `dplyr`.
# Use a different appraoch to accomplish the same tasks as exercise-1

# Install devtools package: allows installations from GitHub
install.packages('devtools')

# Install "fueleconomy" package from GitHub
devtools::install_github("hadley/fueleconomy")

# Require/library the fueleconomy package
<<<<<<< HEAD
library(fueleconomy)
# Require/library dplyr
library(dplyr)
=======

# Install (if you haven't already) and load the `dplyr`package


>>>>>>> c229748c91f3961fc728d4b6585a0563a498d048
# You should have have access to the `vehicles` data.frame
View(vehicles)

# Create a data.frame of vehicles from 1997
vehicles.1997 <- vehicles[vehicles$year == 1997,]

# Use the `unique` function to verify that there is only 1 value in the `year` column of your new data.frame
unique(vehicles.1997$year)

# Create a data.frame of 2-Wheel Drive vehicles that get more than 20 miles/gallon in the city
two.wheel.twenty <- filter(vehicles, drive == "2-Wheel Drive", cty > 20)

# Of those vehicles, what is the vehicle ID of the vehicle with the worst hwy mpg?
worst <- filter(two.wheel.twenty, hwy == max(hwy))

# Write a function that takes a `year` and a `make` as parameters, and returns 
# The vehicle that gets the most hwy miles/gallon of vehicles of that make in that year
my.function <- function(year1, make1) {
  return(filter(vehicles, make1 == make, year1 == year) %>% filter(hwy == max(hwy)))
}

# What was the most efficient honda model of 1995?
my.function(1995, "Honda")

