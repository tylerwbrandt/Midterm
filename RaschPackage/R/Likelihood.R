#' Finding likelihood that theta estimate is accurate
#'
#' Finds product of PQ vector
#'
#' @param Raschobj A Rasch object
#' @param theta A numeric object.
#'
#' @return An object of class Numeric that represents the likelihood that the estimated theta is accurate 
#' @author Tyler Brandt
#' @note This function is for test takers
#' @examples
#' 
#' myRasch <- new("Rasch", "Tyler", c(1,2,3), c(1,0,1)) 
#' myTheta <- 3
#' Likelihood(myRasch, myTheta)
#' @seealso \code{\link{Probability}}
#' @rdname Likelihood
#' @aliases Likelihood, Likelihood Rasch Method
#' @export
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
