library(devtools)
library(roxygen2)


tyler <- new(Class = "Rasch", name = "Tyler", a = c(1,2,3), y_j = c(1,0,1))

setwd("~/Documents/Applied_Statistical_Programming/Midterm")
package.skeleton()


## Create Probability function
setGeneric(name = "Probability",
           def = function(raschObj, theta){
             standardGeneric("Probability")
           })

setMethod(f = "Probability",
          definition = function(raschObj, theta){
            x <- exp(theta - raschObj@a)
            y <- 1+x
            P <- x/y
            Q <- P^(raschObj@y_j) * (1-P)^(1-raschObj@y_j)
          })



