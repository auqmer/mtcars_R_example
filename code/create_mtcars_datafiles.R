#************************************************************************
# Title: create mtcars txt and csv files
# Author: William Murrah
# Description: Create data to demonstrate importing from csv and txt
# Created: Friday, 05 March 2021
# R version: R version 4.0.4 (2021-02-15)
# Project(working) directory: /Users/wmm0017/Documents/RuserGroup
#************************************************************************

data(mtcars)

# Create categorical variables
mtcars <- transform(mtcars, 
                    am = factor(am, labels = c("automatic", "manual")),
                    vs = factor(vs, labels = c("v-shaped", "straigth")))

write.table(x = mtcars, file = "data/mtcars.txt", row.names = FALSE)
write.csv(x = mtcars, file = "data/mtcars.csv", row.names = FALSE)


mtcars <- read.csv("data/mtcars.csv", header = TRUE)
