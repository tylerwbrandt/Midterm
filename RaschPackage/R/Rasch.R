#' A student who took a test with his difficulty and answers
#' 
#' Object of class \code{Rasch} are used in the \code{Probability}, \code{Likelihood}, \code{Prior}, \code{EAP} functions
#'
#' 
#' An object of the class 'Rasch' has the following slots:
#' \itemize{
#' \item \code{name} The name of the student who took the test
#' \item \code{a} The difficulties of the questions on the test
#' \item \code{y_j} The student's answers
#' }
#'
#' @author Tyler Brandt" \email{brandttyler@@wustl.edu}
#' @aliases Rasch Initialize, Rasch Validitiy, Rasch Print
#' @rdname Rasch
#' @export
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

#' @export
setMethod("initialize", "Rasch", 
          function(.Object, ...){
            value=callNextMethod()
            return(value)
          }
) 

#' @export
setValidity("Rasch", function(object){
  lengtha <- length(object@a)
  lengthy <- length(object@y_j)
  if (lengtha != lengthy){
    return ("@a must be of same length as @y")
  }
  if (class(object@name) != "character"){
    return ("@name must be of class character")
  }
  if (class(object@a) != "numeric"){
    return ("@a must be of class numeric")
  }
  if (class(object@y_j) != "numeric"){
    return ("@y_j must be of class numeric")
  }
  if (length(object@name) != 1){
    return ("@name must be of length 1")
  }
})

#' @rdname Rasch
#' @export
setMethod(f = "print",
          signature = "Rasch",
          definition = function(x){
            print(list(x@name, EAP(x)))
          })
