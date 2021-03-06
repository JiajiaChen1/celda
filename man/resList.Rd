% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_generics.R
\name{resList}
\alias{resList}
\title{Get final celdaModels from a celdaList}
\usage{
resList(celdaMod)
}
\arguments{
\item{celdaMod}{An object of class celdaList.}
}
\value{
List. Contains one celdaModel object for each of the parameters
 specified in the `runParams()` of the provided celda list.
}
\description{
Returns all models generated during a `celdaGridSearch()` run.
}
\examples{
data(celdaCGGridSearchRes)
celdaCGGridModels <- resList(celdaCGGridSearchRes)
}
