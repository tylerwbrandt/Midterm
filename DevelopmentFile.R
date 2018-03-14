library(devtools)
library(roxygen2)


tyler <- new(Class = "Rasch", name = "Tyler", a = c(1,2,3), y_j = c(1,0,1))

setwd("~/Documents/Applied_Statistical_Programming/Midterm")
package.skeleton()


## Create Probability function

Probability(tyler, 3)

tyler

## Create Likelihood function
setGeneric(name = "Likelihood",
           def = function(raschObj, theta){
             standardGeneric("Likelihood")
           })

setMethod(f = "Likelihood",
          signature = c("Rasch", "numeric"),
          definition = function(raschObj, theta){
            PQ <- Probability(raschObj, theta)[[2]]
            return (prod(PQ))
          })

Likelihood(tyler, 3)
