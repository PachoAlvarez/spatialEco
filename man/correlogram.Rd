% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/correlogram.R
\name{correlogram}
\alias{correlogram}
\title{Correlogram}
\usage{
correlogram(x, v, dist = 5000, dmatrix = FALSE, ns = 99, latlong = FALSE, ...)
}
\arguments{
\item{x}{SpatialPointsDataFrame object}

\item{v}{Test variable in x@data}

\item{dist}{Distance of correlation lags, if latlong=TRUE units are
in kilometers}

\item{dmatrix}{Should the distance matrix be include in output (TRUE/FALSE)}

\item{ns}{Number of simulations to derive simulation envelope}

\item{latlong}{Coordinates are in latlong (TRUE/FALSE)}

\item{...}{Arguments passed to cor ('pearson', 'kendall' or 'spearman')}
}
\value{
A list object containing:
\itemize{
\item autocorrelation is a data.frame object with the following components
\item autocorrelation - Autocorrelation value for each distance lag
\item dist - Value of distance lag
\item lci - Lower confidence interval (p=0.025)
\item uci - Upper confidence interval (p=0.975)
\item CorrPlot recordedplot object to recall plot
\item dmatrix Distance matrix (if dmatrix=TRUE)
}
}
\description{
Calculates and plots a correlogram
}
\examples{
library(sp)
  data(meuse)
coordinates(meuse) = ~x+y
zinc.cg <- correlogram(x = meuse, v = meuse@data[,'zinc'], dist = 250, ns = 9)

}
\author{
Jeffrey S. Evans  \href{mailto:jeffrey_evans@tnc.org}{jeffrey_evans@tnc.org}
}
