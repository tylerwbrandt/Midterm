#' Finding expected a posteriori value for theta
#'
#' Finds EAP of theta using \code{Likelihood} and \code{Prior} functions
#'
#' @param Raschobj A Rasch object
#' @param lower A numeric object for lower bound of integration
#' @param upper A numeric object for upper bound of integration
#'
#' @return An object of class Numeric that represents the EAP value for theta
#' @author Tyler Brandt
#' @note This function is for test takers
#' @examples
#' 
#' myRasch <- new("Rasch", "Tyler", c(1,2,3), c(1,0,1)) 
#' myLower <- -6
#' myUpper <- 6
#' EAP(myRasch, myLower, myUpper)
#' @seealso \code{\link{Likelihood}}, \code{\link{Prior}}
#' @rdname EAP
#' @aliases EAP, EAP Rasch Method
#' @export
