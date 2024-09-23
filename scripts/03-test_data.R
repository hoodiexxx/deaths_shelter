#### Preamble ####
# Purpose: Sanity check of the data
# Author: Rohan Alexander
# Date: 19 September 2024
# Contact: rohan.alexander@utoronto.ca
# License: MIT
# Pre-requisites: Need to have simulated data
# Any other information needed? None.


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated_deaths_shelter.csv")

# Test for negative numbers
print(data$total_decedents |> min() <= 0)

# Test for NAs
print(all(is.na(data$total_decedents)))






