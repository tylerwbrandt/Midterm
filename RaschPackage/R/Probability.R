#' Finding probabilities that the student is correct
#'
#' Finds P and PQ vectors
#'
#' @param Raschobj A Rasch object
#' @param theta A numeric object.
#'
#' @return An object of class List containing
#'  \item{P}{A vector containing the probability that the student answered each question correctly}
#'  \item{PQ}{A vector containing the product of the probabilities that the student answered correctly and incorrectly} 
#' @author Tyler Brandt
#' @note This function is for test takers
#' @examples
#' 
#' myRasch <- new("Rasch", "Tyler", c(1,2,3), c(1,0,1)) 
#' myTheta <- 3
#' Probability(myRasch, myTheta)
#' @rdname Probability
#' @aliases Probability, Probability Rasch Method
#' @export
