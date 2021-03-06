% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scalarization_ws.R
\name{scalarization_ws}
\alias{scalarization_ws}
\title{Weighted Sum Scalarization}
\usage{
scalarization_ws(Y, W, minP, eps = 1e-16, ...)
}
\arguments{
\item{Y}{matrix of objective function values}

\item{W}{matrix of weights.}

\item{minP}{numeric vector containing estimated ideal point}

\item{eps}{tolerance value for avoiding divisions by zero.}

\item{...}{other parameters (included for compatibility with generic call)}
}
\value{
vector of scalarized performance values.
}
\description{
Perform Weighted Sum Scalarization for the MOEADr package.
}
\details{
This routine calculates the scalarized performance values for the MOEA/D
using the  Weighted Sum method.
}
\section{References}{

Q. Zhang and H. Li, "MOEA/D: A Multiobjective Evolutionary Algorithm

H. Li, Q. Zhang, "Multiobjective Optimization Problems With Complicated
Pareto Sets, MOEA/D and NSGA-II", IEEE. Trans. Evol. Comp. 12(2):284-302,
2009.
}

\examples{
W    <- generate_weights(decomp = list(name = "sld", H = 19), m = 2)
Y    <- matrix(runif(40), ncol = 2)
minP <- apply(Y, 2, min)
Z    <- scalarization_ws(Y, W, minP)

}
