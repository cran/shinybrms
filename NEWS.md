
<!-- NEWS.md is generated from NEWS.Rmd. Please edit that file -->

# News for ‘shinybrms’

## shinybrms 1.0.1

### Bug fixes

  - Example datasets:
      - Added packages required for some example datasets to the
        “Suggests” list.
      - Server: Check for availability of packages required for some
        example datasets.
      - UI: Added links to the online example datasets on page “Links”.

## shinybrms 1.0.0 (only GitHub)

First release. Offers support for Bayesian regression models with a
Gaussian, Bernoulli, or negative binomial distribution for the
(univariate) outcome. Currently, only “fixed” (a.k.a. non-varying or
population-level) effects are supported for the predictors. “Random”
(a.k.a. varying or group-level) effects are not supported yet. Neither
supported are most of
[**brms**](https://CRAN.R-project.org/package=brms)’s other features,
like monotonic effects for ordinal predictors or non-linear effects.
Interactions are supported, though. For the inspection of the output,
only a short summary (from `brms::summary.brmsfit()`) and the
possibility to launch
[**shinystan**](https://CRAN.R-project.org/package=shinystan) is
offered.