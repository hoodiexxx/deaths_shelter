#### Preamble ####
# Purpose: Simulates data
# Author: Rohan Alexander
# Date: 19 September 2024
# Contact: rohan.alexander@utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
set.seed(304)

# Define the start and end date
start_date <- as.Date("2018-01-01")
end_date <- as.Date("2023-12-31")

# Set the number of random dates you want to generate
number_of_rows = 15
data <-
  tibble(
    Year = c(rep(x = "2009", times = 5),rep(x = "2010", times = 5), rep(x = "2011", times = 5)),
    month = rep(x = month.name, length.out = number_of_rows),
    total_decedents = rpois(n = number_of_rows, lambda = 45)
  )


#### Write_csv
write_csv(data, file = "data/raw_data/simulated_deaths_shelter.csv")
