% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidy_connections.R
\name{big_copy_to}
\alias{big_copy_to}
\title{Copy large data to RDIP tables.}
\usage{
big_copy_to(df, dest = getOption("gtx.impala", NULL),
  chrom_as_string = TRUE, database = NULL, table_name = NULL,
  compute_stats = FALSE)
}
\arguments{
\item{df}{Data to copy to RDIP}

\item{dest}{Impala implyr connection}

\item{chrom_as_string}{[Default = TRUE] TRUE = Override "chrom" cols as character instead of integers}

\item{database}{Name of the database}

\item{table_name}{Name of the table within the database.}

\item{compute_stats}{[Default = FALSE] TRUE = SQL execute COMPUTE STATS}
}
\description{
\strong{big_copy_to() - copy data to RDIP}
This will copy a dataframe to the home directory of the user 
and return the table reference to the data in RDIP.
}
\author{
Karsten Sieber \email{karsten.b.sieber@gsk.com}
}
