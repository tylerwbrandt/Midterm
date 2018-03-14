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

Prior(3)
dnorm(3,0,3)

## Create EAP function
setGeneric(name = "EAP",
           def = function(raschObj, lower = -6, upper = 6){
             standardGeneric("EAP")
           })

setMethod(f = "EAP",
          signature = "Rasch",
          definition = function(raschObj, lower = -6, upper = 6){
            f <- function(theta){
              return (theta * Likelihood(raschObj, theta) * Prior(theta))
            }
            numerator <- integrate(f, lower, upper)[[1]]
            g <- function(theta){
              return (Likelihood(raschObj, theta) * Prior(theta))
            }
            denominator <- integrate(g, lower, upper)[[1]]
            return (numerator/denominator)
          })

EAP(tyler, -6, 6)

f <- function(theta){
  return(theta * Likelihood(tyler, theta) * Prior(theta))
}
g <- function(theta){
  return (Likelihood(tyler, theta) * Prior(theta))
}
numerator <- integrate(f, -5, 6)
numerator[[1]]
