library(devtools)
library(roxygen2)

setClass(Class = "Rasch",
         representation = representation(
           name = "character",
           a = "numeric",
           y_j = "numeric"
         ),
         prototype = prototype(
           name = "",
           a = c(),
           y_j = c()
         ))

new(Class = "Rasch", name = "Tyler", a = c(1,2,3), y_j = c(1,2,3))

setwd("~/Documents/Applied_Statistical_Programming/Midterm")
package.skeleton()
