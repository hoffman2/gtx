% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coloc.R
\name{coloc.compute}
\alias{coloc.compute}
\title{Colocalization computation}
\usage{
coloc.compute(data, priorsd1 = 1, priorsd2 = 1, priorc1 = 1e-04,
  priorc2 = 1e-04, priorc12 = 1e-05, join_type = "inner",
  summary_only = FALSE)
}
\arguments{
\item{data}{Data frame with one row for each variant, and columns beta1, se1, beta2, se2}

\item{priorsd1}{Standard deviation of prior on beta1}

\item{priorsd2}{Standard deviation of prior on beta2}

\item{priorc1}{Prior on variant being causal for trait 1}

\item{priorc2}{Prior on variant being causal for trait 2}

\item{priorc12}{Prior on variant being causal for traits 1 and 2}

\item{join_type}{How to handle missing summary statistics}

\item{summary_only}{Whether to return only the colocalization results}
}
\value{
The input data frame with additional columns added,
 and colocalization probabilities as attributes.
}
\description{
Colocalization computation using summary statistics
}
\details{
Computes Bayesian posterior probabilities of colocalization versus
alternative models, based on the approach of Giambartolomei et al. (2014)
but with a more efficient and more flexible implementation.
The original approach is also extended to compute a model averaged
point estimate of the causal effect of each trait on the other.

The parameter \code{join_type} controls how variants with missing
summary statistics are handled.  \code{inner} subsets to variants
with non-missing statistics for both analyses.  \code{outer} keeps
substitutes Bayes factors of zero for all variants with missing
statistics (i.e. assumes they have much less strong associations
than other variants).  \code{left} subsets to variants with
non-missing beta1 and se1 analysis 1, and substitutes Bayes factors
of zero for variants with missing beta2 or se2.  \code{right} does
the opposite.
}
\author{
Toby Johnson \email{Toby.x.Johnson@gsk.com}
}
