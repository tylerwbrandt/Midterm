library(devtools)
library(roxygen2)

setwd("~/Documents/Applied_Statistical_Programming/Midterm")

rm(list = ls())

## Import package
current.code <- as.package("RaschPackage")
load_all(current.code)
document(current.code)
test(current.code)

## Examples
tyler <- new(Class = "Rasch", name = "Tyler", a = c(1,2,3), y_j = c(1,0,1))

## Create Probability function

Probability(tyler, 3)

tyler

## Create Likelihood function

Likelihood(tyler, 3)

## Create Prior function

Prior(3)
dnorm(3,0,3)

## Create EAP function

EAP(tyler, -6, 6)

## Print method for Rasch Objects
print(tyler)
