% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo.buffer.R
\name{geo.buffer}
\alias{geo.buffer}
\title{Buffer geographic data}
\usage{
geo.buffer(x, r, sf = FALSE, ...)
}
\arguments{
\item{x}{A sf or sp vector class object}

\item{r}{Buffer radius in meters}

\item{sf}{(FALSE/TRUE) Output sf class object else sp}

\item{...}{Additional arguments passed to gBuffer}
}
\value{
an sp or sf polygon class object representing buffer for each feature
}
\description{
Buffers data in geographic (Latitude/Longitude) projection
}
\note{
Projects (Latitude/Longitude) data in decimal-degree geographic projection 
using an on-the-fly azimuthal equidistant projection in meters centered on
}
\examples{
library(sp)
library(raster)

s <- spsample(as(extent(61.87125, 76.64458, 23.90153, 37.27042), 
              "SpatialPolygons"), n=100, type="random")
  proj4string(s) <- '+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs'  
  
b <- geo.buffer(x=s, r=1000, quadsegs=100)
  plot(b[1,])
    points(s[1,], pch=20,cex=2)
	
}
\seealso{
\code{\link[rgeos]{gBuffer}} for gBuffer ... arguments
}
\author{
Jeffrey S. Evans  <jeffrey_evans@tnc.org>
}
