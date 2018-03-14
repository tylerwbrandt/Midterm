library(devtools)
library(roxygen2)


tyler <- new(Class = "Rasch", name = "Tyler", a = c(1,2,3), y_j = c(1,0,1))

setwd("~/Documents/Applied_Statistical_Programming/Midterm")
package.skeleton()


## Create Probability function

Probability(tyler, 3)

tyler
