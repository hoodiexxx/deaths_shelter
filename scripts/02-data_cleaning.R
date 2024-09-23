#### Preamble ####
# Purpose: Cleans the raw marriage data into an analysis dataset
# Author: Rohan Alexander
# Date: 19 September 2024
# Contact: rohan.alexander@utoronto.ca
# License: MIT
# Pre-requisites: Need to have downloaded the data
# Any other information needed? None.

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/deaths_shelter.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names()

cleaned_data = cleaned_data %>% select(year, month, total_decedents)
# cleaned_data <- cleaned_data %>%
#   mutate(transgender_non_binary_two_spirit = case_when(transgender_non_binary_two_spirit == "n/a" ~ 0L, TRUE ~ as.integer(transgender_non_binary_two_spirit)))

#### Save data ####
write_csv(cleaned_data, "data/analysis_data/deaths_shelter_analysis_data.csv")
