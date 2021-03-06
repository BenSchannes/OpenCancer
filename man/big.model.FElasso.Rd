% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/big_modelFElasso.R
\name{big.model.FElasso}
\alias{big.model.FElasso}
\title{Perform LASSO for feature selection and create linear
regression using selected features for big.matrix object}
\usage{
big.model.FElasso(X, yvar = "incidence", labelvar = c("cancer", "age",
  "Country_Transco", "year", "area.x", "area.y"), groupingvar = NULL,
  crossvalidation = T, nfolds = 10, ncores = 1, returnplot = T,
  relabel = FALSE)
}
\arguments{
\item{X}{A big.matrix object}

\item{yvar}{Name of the explained variable in \code{X}}

\item{labelvar}{Names of variables that should be excluded from
the set of covariates}

\item{groupingvar}{Variables that should be used to define independent
groups. Default to \code{NULL} means there is no groups used}

\item{crossvalidation}{Should we perform cross-validation}

\item{nfolds}{Number of folds for cross validation.
Ignored if \code{crossvalidation = F}. If \code{crossvalidation}
equals the number of observations, a leave-one-out cross validation
is performed}

\item{ncores}{The number of OpenMP threads used for parallel computing.}

\item{returnplot}{\code{TRUE} or \code{FALSE}. Should we return a plot of the
LASSO performance depending of the $\lambda$ value}

\item{relabel}{\code{TRUE} or \code{FALSE}. Should we present variables codes
(\code{FALSE}) or variables labels (\code{TRUE}) in the regressions. If \code{TRUE},
\code{import_label()} is used to upload data from the internet. It will fail if no
internet connection is available.}
}
\value{
Linear model fitted with selected features. If \code{groupingvar} is
not \code{NULL}, a nested dataframe is returned with linear regressions stored by
groups
}
\description{
Perform LASSO for feature selection and create linear
regression using selected features for big.matrix object
}
