# Census Block Distances
# Designed for R version 3.3.3

# This script generates a data frame containing census block codes and
# their corresponding coordinates (lon, lat). This data is sourced from
# the TIGER/Line shapefiles from census.gov. More information on the
# data can be found in the `README.md` file.

library(tidyverse)  # for general data manipulation
library(rgdal)      # for reading shapefiles
library(geosphere)  # for computing geospatial distances


