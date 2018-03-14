library(devtools)
library(roxygen2)


tyler <- new(Class = "Rasch", name = "Tyler", a = c(1,2,3), y_j = c(1,0,1))

setwd("~/Documents/Applied_Statistical_Programming/Midterm")
package.skeleton()


## Create Probability function

Probability(tyler, 3)

tyler

## Create Likelihood function

Likelihood(tyler, 3)

## Create Prior function

setGeneric(name = "Prior",
           def = function(theta){
             standardGeneric("Prior")
           })

setMethod(f = "Prior",
          signature = "numeric",
          definition = function(theta){
            return (dnorm(theta, mean = 0, sd = 3))
          })

Prior(3)
dnorm(3,0,3)
