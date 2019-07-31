# census-block-distances

## Overview

This repository contains R code to compute the geospatial distance between two census blocks. This task is broken down into two scripts:

1. Generate a CSV of the coordinates corresponding to each census block.
2. Compute the distances between two given census blocks (using the coordinate mappings).

The first script only needs to be run once, so that we can have an easily-accessible CSV of the coordinates corresponding to each census block.

## Dependencies

```
tidyverse  # General data manipulation
rgdal      # Reading shapefiles
geosphere  # Computing distances
```

## Acquiring the Data

These scripts depend on data from `census.gov`. Namely, we use the TIGER/Line shapefiles, which contain interpolated coordinates for each census block.

The main link for the TIGER/Line shapefiles is below:

https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.2010.html

For our scripts, we navigate from the above link to `FTP Archive by File Type -> TABBLOCK -> 2000` to arrive at the following page:

https://www2.census.gov/geo/tiger/TIGER2010/TABBLOCK/2000/

From here, we download all files whose names follow the pattern `tl_2010_[NN]_tabblock00.zip`, where `[NN]` is any two integers. One can code a simple scraper to do this task, or simply download them "by hand" (56 files total).

Next, we extract the `.shx` files, which contain the coordinate information for each census block. In bash, the command is as follows:

```
unzip tl_2010_\* \*.shx -d [FILE_DESTINATION]
```

where `[FILE_DESTINATION]` is the destination for our `.shx` files. For our current script, this should be the `shapefiles` directory in the repository's root directory.

After completing the above steps, we now have all of the data necessary to run our scripts.
