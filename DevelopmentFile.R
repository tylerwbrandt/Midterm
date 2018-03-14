library(devtools)
library(roxygen2)

setwd("~/Documents/Applied_Statistical_Programming/Midterm")

rm(list = ls())

## Import package
current.code <- as.package("RaschPackage")
load_all(current.code)
document(current.code)
test(current.code)

## Example of Rasch class
tyler <- new(Class = "Rasch", name = "Tyler", a = c(1,2,3), y_j = c(1,0,1))
tyler

## Errors of new Rasch classes
new(Class = "Rasch", name = "Tyler", a = c(1,2,3,4), y_j = c(1,0,1))

## Example of Probability function
# Gives probability that Tyler got each of three questions right, assuming theta = 3
Probability(tyler, 3)

## Example of Likelihood function
# Gives likelihood that theta = 3 is the correct value for theta
Likelihood(tyler, 3)

## Example of Prior function
# Gives a prior for theta = 3. Note that this is the same as dnorm(theta = 3, 0, 3)
Prior(3)
dnorm(3,0,3)

## Examples of EAP function
# At defaults, EAP = 0
EAP(tyler)

# When lower != -upper, we get a different result
EAP(tyler, 0, 6)

## Example of print method for Rasch Objects
print(tyler)
print(tyler, lower = 0, upper = 6)

