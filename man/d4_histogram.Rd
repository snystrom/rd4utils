% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{d4_histogram}
\alias{d4_histogram}
\title{Collect histogram of d4 file}
\usage{
d4_histogram(file, regions = NULL, threads = 1, d4tools = NULL)
}
\arguments{
\item{file}{d4 file path}

\item{regions}{optional regions in which to compute histogram values.
Formatted as string: "chr:start-end", or as GRanges. Note coordinates
should use base 1 index, not bed-format 0 index. (default: NULL)}

\item{threads}{number of threads to use (default: 1)}

\item{d4tools}{path to d4tools (or use options("d4tools" = "path/to/d4tools"))}
}
\value{
data.frame
}
\description{
Collect histogram of d4 file
}
