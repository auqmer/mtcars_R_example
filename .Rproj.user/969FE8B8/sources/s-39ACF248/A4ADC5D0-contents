#************************************************************************
# Title: simulate_WomenHeights_sem.R
# Author: William Murrah
# Description: Example of sampling distributions
# Created: Thursday, 04 March 2021
# R version: R version 4.0.4 (2021-02-15)
# Project(working) directory: /Users/wmm0017/Documents/RuserGroup
#************************************************************************

# Parameters
mu <- 64    # Population mean
sigma <- 4  # Population standard deviation
N <- 1e6    # Population size 
# Statistics
n <- 20000     # sample size
s <- 4.3    # sample standard deviation 

nreps <- 1000

# Create population of women's heights
set.seed(1234)
population <- rnorm(n = N, mean = mu, sd = sigma)
# population <- runif(n = N, 44, 84)
# Histogram of heights (breaks = "fd" get lots of bars)
#hist(population, breaks = "fd")

# Sample from population
set.seed(5678)
sample1 <- sample(x = population, size = n, replace = FALSE)
mean(sample1)

# Sample from population 1,000 times and store the mean of each sample
sample_means <- replicate(n = nreps, mean(sample(x = population, 
                                                 size = n, 
                                                 replace = FALSE)))


par(mfrow = c(2,1))

hist(population, breaks = "fd", xlim = c(44, 84))
hist(sample_means, breaks = "fd", xlim = c(44, 84))

sem_empirical <- sd(sample_means)
sem_formula <- sigma/sqrt(n)
