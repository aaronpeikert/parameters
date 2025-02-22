% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_heterogeneity.R
\name{check_heterogeneity}
\alias{check_heterogeneity}
\title{Check model predictor for heterogeneity bias}
\usage{
check_heterogeneity(x, select = NULL, group = NULL)
}
\arguments{
\item{x}{A data frame or a mixed model object.}

\item{select}{Character vector (or formula) with names of variables to select that should be checked. If \code{x} is a mixed model object, this argument will be ignored.}

\item{group}{Character vector (or formula) with the name of the variable that indicates the group- or cluster-ID. If \code{x} is a model object, this argument will be ignored.}
}
\description{
\code{check_heterogeneity()} checks if model predictors or variables may
cause a heterogeneity bias, i.e. if variables have a within- and/or between-effect.
}
\examples{
data(iris)
iris$ID <- sample(1:4, nrow(iris), replace = TRUE) # fake-ID
check_heterogeneity(iris, select = c("Sepal.Length", "Petal.Length"), group = "ID")
}
\seealso{
See \code{?datawizard::demean} for further details.
}
