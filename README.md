# census-block-distances

## Overview

This repository contains R code to compute the geospatial distance between two census blocks. This task is broken down into two scripts:

1. Generate a CSV of the coordinates corresponding to each census block.
2. Compute the distances between two given census blocks (using the coordinate mappings).

## Dependencies

```
tidyverse  # General data manipulation
rgdal      # Reading shapefiles
geosphere  # Computing distances
```
