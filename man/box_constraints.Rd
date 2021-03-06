% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sample_constraints.R
\name{box_constraints}
\alias{box_constraints}
\title{Box constraints routine}
\usage{
box_constraints(X, ...)
}
\arguments{
\item{X}{Population matrix of the MOEA/D (each row is a candidate solution).
If \code{NULL} the function searches for \code{X} in the calling environment.}

\item{...}{other parameters (unused, included for compatibility with
generic call)}
}
\value{
List objective containing a matrix of constraint values \code{Cmatrix}, a
matrix of individual constraint violations \code{Vmatrix}, and a vector of total
constraint violations \code{v}.
}
\description{
Calculates the constraint values and violations when only box constraints are
present.
}
\details{
This routine calculates the constraint values and violations for a population
matrix in the MOEA/D. Each row of the matrix is considered as a candidate
solution. This routine expects the candidate solutions to be standardized,
i.e., that the variable limits given in \code{problem$xmin} and
\code{problem$xmax} are mapped to \code{0} and \code{1}, respectively.
}
