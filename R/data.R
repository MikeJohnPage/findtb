#' World Health Organization TB data
#'
#' This package exports seven TB data sets from the World Health Organization
#' Global Tuberculosis Report:
#' * budget
#' * community
#' * estimates
#' * expenditures
#' * labs
#' * notifications
#' * all (all of the above combined)
#' 
#' @name tb
#' @aliases tb_budget tb_community tb_estimates tb_expenditures tb_labs tb_notifications tb_all
#' @format 
#' A data frame with 6 columns and a variable number of rows:
#' \describe{
#'   \item{country}{Country name}
#'   \item{country_code}{3 letter ISO country codes}
#'   \item{g_whoregion}{WHO region}
#'   \item{year}{Year}
#'   \item{variable}{see `tb_dictionary` for definitions}
#'   \item{value}{value}
#' }
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
NULL

#' World Health Organization TB dictionary
#'
#' A dictionary of defintions to match to the tb_* family of exported data sets.
#'
#' @format
#' A data frame with 45 rows and 4 columns:
#' \describe{
#'   \item{dataset}{Matching tb_* dataset}
#'   \item{variable}{Matching variable from tb_* dataset}
#'   \item{defintion}{Definition}
#' }
#' @source <https://www.who.int/teams/global-tuberculosis-programme/data>
"tb_dictionary"