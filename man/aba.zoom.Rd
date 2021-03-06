% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aba.R
\name{aba.zoom}
\alias{aba.zoom}
\title{aba.zoom - A function to help zoom in on specific data from aba.}
\usage{
aba.zoom(.data, hgncid, entity, analysis2, p12_ge = 0.8)
}
\arguments{
\item{hgncid}{HGNC symbol.}

\item{entity}{Typically ensemblid.}

\item{analysis2}{GWAS analysis ID}

\item{p12_ge}{[Default >= 0.80] This is the "H4" posterior probability cutoff}
}
\description{
This function is to enable users to zoom in on specific features
from the aba coloc data. The default aba plots can be very large and messy, 
and filtering these data can be difficult. To enable users to filter the data,
this function will help "zoom" in on specific features such as genes or GWAS. 
This function can be used 1-2 times depending on the desired level of zoom.
}
\details{
Tier 1 zoom: All colocs for the input query, all genes with shared coloc traits (extended gene list), 
and all non-shared traits for the extended gene list.

Tier 2 zoom: All colocs for the input query, all genes with shared colocs. 
Excludes non-shared traits from the extended gene list. Note, Tier 2 zoom does not always 
further resolve data complexity.
}
\examples{
Use aba.wrapper to run query and get data. 
colocs <- aba.wrapper(hgncid = "HMGCR", neale_only = TRUE, protein_coding_only = TRUE)

Tier 1 zoom
colocs \%>\% pluck("data", 1) \%>\% aba.zoom(hgncid = "HMGCR") \%>\% aba.plot()

Tier 2 zoom:
colocs \%>\% pluck("data", 1) \%>\% aba.zoom(hgncid = "HMGCR") \%>\% aba.zoom(hgncid = "HMGCR") \%>\% aba.plot()
}
\author{
Karsten Sieber \email{karsten.b.sieber@gsk.com}
}
