
<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/fweber144/shinybrms.svg?branch=master)](https://travis-ci.org/fweber144/shinybrms)
<!-- badges: end -->

# Description

This [R](https://www.r-project.org/) package **shinybrms** provides a
graphical user interface (GUI) for the R package
[**brms**](https://CRAN.R-project.org/package=brms) which allows to fit
Bayesian regression models using [Stan](https://mc-stan.org/) (more
specifically, using its R interface, the R package
[**rstan**](https://CRAN.R-project.org/package=rstan)). The GUI is a
[Shiny](https://shiny.rstudio.com/) app, i.e. it was created using the R
package [**shiny**](https://CRAN.R-project.org/package=shiny).

# Installation

If not already done, you need to install R first (see the [R
homepage](https://www.r-project.org/)). Then, in R, perform the
following steps:

1.  Install the package
    [**rstan**](https://CRAN.R-project.org/package=rstan) (see [this
    GitHub
    page](https://github.com/stan-dev/rstan/wiki/RStan-Getting-Started)
    for instructions).
2.  Install the package **shinybrms** with the following commands:

<!-- end list -->

``` r
if(!requireNamespace("devtools", quietly = TRUE)){
  install.packages("devtools")
}
devtools::install_github("fweber144/shinybrms")
```

# Usage

In R, launch the **shinybrms** Shiny app by typing:

``` r
library(shinybrms)
launch_shinybrms()
```