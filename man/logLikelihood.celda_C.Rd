% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/celda_C.R
\name{logLikelihood.celda_C}
\alias{logLikelihood.celda_C}
\title{Calculate Celda_C log likelihood}
\usage{
logLikelihood.celda_C(counts, sampleLabel, z, K, alpha, beta)
}
\arguments{
\item{counts}{Integer matrix. Rows represent features and columns represent
cells.}

\item{sampleLabel}{Vector or factor. Denotes the sample label for each cell
(column) in the count matrix.}

\item{z}{Numeric vector. Denotes cell population labels.}

\item{K}{Integer. Number of cell populations.}

\item{alpha}{Numeric. Concentration parameter for Theta. Adds a pseudocount
to each cell population in each sample. Default 1.}

\item{beta}{Numeric. Concentration parameter for Phi. Adds a pseudocount to
each feature in each cell population. Default 1.}

\item{...}{Additional parameters.}
}
\value{
Numeric. The log likelihood for the given cluster assignments
}
\description{
Calculates the log likelihood for user-provided cell population
 clusters using the `celda_C()` model.
}
\examples{
data(celdaCSim)
loglik <- logLikelihood.celda_C(celdaCSim$counts,
    sampleLabel = celdaCSim$sampleLabel,
    z = celdaCSim$z,
    K = celdaCSim$K,
    alpha = celdaCSim$alpha,
    beta = celdaCSim$beta)

loglik <- logLikelihood(celdaCSim$counts,
    model = "celda_C",
    sampleLabel = celdaCSim$sampleLabel,
    z = celdaCSim$z,
    K = celdaCSim$K,
    alpha = celdaCSim$alpha,
    beta = celdaCSim$beta)
}
\seealso{
`celda_C()` for clustering cells
}
