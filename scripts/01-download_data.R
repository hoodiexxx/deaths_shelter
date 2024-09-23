#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Rohan Alexander
# Date: 19 September 2024
# Contact: rohan.alexander@utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download data ####
# get package
package <- show_package("deaths-of-shelter-residents")

# get all resources for this package
resources <- list_package_resources("deaths-of-shelter-residents")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data

#### Save data ####
write_csv(data, "data/raw_data/deaths_shelter.csv") 




# #### Acquire ####
# toronto_shelters <-
#   # Each package is associated with a unique id  found in the "For 
#   # Developers" tab of the relevant page from Open Data Toronto
#   # https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/
#   list_package_resources("21c83b32-d5a8-4106-a54f-010dbe49f6f2") |>
#   # Within that package, we are interested in the 2021 dataset
#   filter(name == 
#     "daily-shelter-overnight-service-occupancy-capacity-2021.csv") |>
#   # Having reduced the dataset to one row we can get the resource
#   get_resource()

# write_csv(
#   x = toronto_shelters,
#   file = "toronto_shelters.csv"
# )

# head(toronto_shelters)
