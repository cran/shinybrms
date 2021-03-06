#' @title Launch the \bold{shinybrms} app
#'
#' @description This function launches the \bold{shinybrms} app.
#'
#' @param \dots Arguments passed to [shiny::runApp()]. For example, in order to force the
#'   \bold{shinybrms} app to launch in the system's default web browser (even if using RStudio),
#'   set argument `launch.browser` to `TRUE`.
#'
#' @note The following global options are introduced by \bold{shinybrms}:
#'
#' * `shinybrms.prog_browser`: The value for the global option `browser` to be used for opening the
#' [Stan](https://mc-stan.org/) progress file (an HTML file). Defaults to option `browser` (see
#' [base::options()]). Note that RStudio's default for option `browser` cannot be used for the Stan
#' progress file. Therefore, \bold{shinybrms} automatically redefines RStudio's default for option
#' `browser` to fix this issue.
#' * `shinybrms.shinystan_browser`: The value for the global option
#' `browser` to be used for opening the \bold{shinystan} app. Defaults to option `browser` (see
#' [base::options()]). Note that RStudio's default for option `browser` cannot be used for opening
#' the \bold{shinystan} app from within \bold{shinybrms}. Therefore, \bold{shinybrms} automatically
#' redefines RStudio's default for option `browser` to fix this issue.
#'
#' The only other global option used by \bold{shinybrms} is `mc.cores` (see [base::options()]): If
#' option `mc.cores` is set, then the advanced option "Cores" (in the \bold{shinybrms} app) defaults
#' to the value of this option. If option `mc.cores` is not set, then the advanced option "Cores"
#' defaults to the value returned by [parallel::detectCores()].
#'
#' Note that \bold{shinystan}'s global option `shinystan.rstudio` (see
#' [shinystan::launch_shinystan()]) may not be used here as \bold{shinystan} is called from an
#' external \R process where RStudio's browsers are not available.
#'
#' @return `TRUE` (invisible).
#'
#' @export
#'
#' @examples
#' if(interactive()){
#'   launch_shinybrms(launch.browser = TRUE)
#' }

launch_shinybrms <- function(...){
  app_path <- system.file("shinybrms_app", package = "shinybrms")
  if(identical(app_path, "")){
    stop("Path to package \"shinybrms\" could not be found. Try re-installing package \"shinybrms\".")
  }
  shiny::runApp(
    appDir = app_path,
    ...
  )
  if(FALSE){
    # Just a dummy call of a "brms" function for avoiding a NOTE in CRAN checks on some platforms:
    brms::expp1(0)
    # Just a dummy call of an "rstan" function for avoiding a NOTE in CRAN checks on some platforms:
    rstan::set_cppo()
  }
  return(invisible(TRUE))
}
