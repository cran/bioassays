% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/extract_filename.R
\name{extract_filename}
\alias{extract_filename}
\title{Extract Information From File Name}
\usage{
extract_filename (filename,split = " ",end = ".csv", remove = " ", sep = "-")
}
\arguments{
\item{filename}{name of the file (string).}

\item{split}{regular expressions at which filename has to be split to create different sections.}

\item{end}{extension (end portion) of filename that need to be removed.}

\item{remove}{section that need to be omitted after splitting the filename.}

\item{sep}{symbol to be added to separate sections (obtained after splitting) before combining (default is "-").}
}
\value{
A character vector. First element is the unsplit 'filename'. Second element is the processed 'filename'.Other elements are different sections after splitting the 'filename'.
}
\description{
This function split a string (file name) as per the requirement of the user. It is useful to extract  informations like compound name, plate number etc from the file name.
}
\examples{
extract_filename("L-HEPG2_P3_72HRS.csv")
extract_filename("L_HEPG2_P3_72HRS.csv", split="_",end=".csv",remove="L",sep="")

}
\author{
A.A Palakkan
}
\keyword{character}
