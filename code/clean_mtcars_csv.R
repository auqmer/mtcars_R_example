#************************************************************************
# Title: clean mtcars data from SPSS data
# Author: William Murrah
# Description: Prepare mtcars data for regression models
# Created: Friday, 19 March 2021
# R version: R version 4.0.4 (2021-02-15)
# Project(working) directory: /Users/wmm0017/Documents/RuserGroup
#************************************************************************

# Import raw data
mtcars <- read.csv("data/mtcars.csv", header = TRUE)

# Clean data for regression models.
mtcars <- transform(mtcars, 
                    vs = factor(vs, labels = c("v-shaped", "straight")),
                    am = factor(am, labels = c("automatic", "manual")),
                    wt_lbs = wt*1000,
                    wt_kg = (wt*1000.00)*0.453592)


