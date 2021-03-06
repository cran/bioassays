% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrix96.R
\name{matrix96}
\alias{matrix96}
\title{Formatting Long Dataframe in to a Matrix Layout of Multi well Plate}
\usage{
matrix96 (dataframe, column, rm = "FALSE")
}
\arguments{
\item{dataframe}{dataframe to be formatted}

\item{column}{name of column (as a string in "") that need be converted as a matrix}

\item{rm}{If rm = "TRUE" then -ve and NA are assigned as 0}
}
\value{
A matrix data with row and column names corresponding to multiwell plate
}
\description{
This function format a long dataframe (with col and row columns) in to a multiwell plate matrix layout.
}
\details{
The 'dataframe' to be formatted should have a 'col' and 'row' columns representing the column and rowname of the corresponding multiwell plate.
}
\examples{
## loading data
data(rawdata96, metafile96, metafile384)
rawdata<- data2plateformat(rawdata96, platetype = 96)
rawdata<- plate2df(rawdata)

## eg:1 rawdata to matrix format (column: value)
matrix96(rawdata,"value")

## eg:2 metafile96 to matrix format (column: id)
matrix96(metafile96,"id")

## eg:3 metafile384 to matrix format (column: cell)
matrix96(metafile384,"cell")

}
\author{
A.A Palakkan
}
\keyword{manip}
