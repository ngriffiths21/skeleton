
<!-- README.md is generated from README.Rmd. Please edit that file -->

# skeleton

<!-- badges: start -->

<!-- badges: end -->

This package can be used to quickly set up a project skeleton suitable
for data analysis. It sets up [drake](https://docs.ropensci.org/drake/)
as well as a lab notebook that is built with
[bookdown](https://bookdown.org/).

## Installation

You can install the released version of skeleton from
[CRAN](https://CRAN.R-project.org) with:

``` r
devtools::install_github("ngriffiths21/skeleton")
```

## Usage

Start from an R project (create one in RStudio or with
usethis::create\_project, or use a new git repo).

``` r
skeleton::use_skeleton()
```

## Directory Structure

    .
    ├── _drake.R
    ├── data
    ├── figures
    │   └── paper-figures.Rmd
    ├── notebook
    │   ├── _bookdown.yml
    │   └── index.Rmd
    ├── R
    │   ├── packages.R
    │   └── plan.R
    ├── README.md
    ├── renv
    └── renv.lock
