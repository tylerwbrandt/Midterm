% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Probability.R
\name{Probability}
\alias{Probability}
\alias{Probability,}
\alias{Rasch}
\alias{Method}
\title{Finding probabilities that the student is correct}
\usage{
Probability(raschObj, theta)
}
\arguments{
\item{theta}{A numeric object.}

\item{Raschobj}{A Rasch object}
}
\value{
An object of class List containing
 \item{P}{A vector containing the probability that the student answered each question correctly}
 \item{PQ}{A vector containing the product of the probabilities that the student answered correctly and incorrectly}
}
\description{
Finds P and PQ vectors
}
\note{
This function is for test takers
}
\examples{

myRasch <- new("Rasch", "Tyler", c(1,2,3), c(1,0,1)) 
myTheta <- 3
Probability(myRasch, myTheta)
}
\author{
Tyler Brandt
}
