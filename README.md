
<!-- README.md is generated from README.Rmd. Please edit that file -->

# findtb <img src='man/figures/logo.png' align="right" height="150" /></a>

<!-- badges: start -->

[![Project Status: Active – The project has reached a stable, usable
state and is being actively
developed.](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
<!-- badges: end -->

## Overview

The findtb package downloads TB data from the WHO, cleans the data, and
then exports it into a standard rectangular format for use in the gap
package.

The package exports seven datasets called:

- `tb_all` (all of the below)
- `tb_budget`
- `tb_community`
- `tb_estimates`
- `tb_expenditure`
- `tb_labs`
- `tb_notifications`

It also ships with a data dictionary to lookup definitions: -
`tb_dictionary`

## Installation

``` r
# Install the development version from GitHub:
# install.packages("pak")
pak::pak("finddx/findtb")
```

## Usage

``` r
library(findtb)

# Load a dataset, for example, tb estimates:
tb_estimates
#> # A tibble: 29,502 × 6
#>    country     country_code g_whoregion  year variable         value
#>    <chr>       <chr>        <chr>       <dbl> <chr>            <dbl>
#>  1 Afghanistan AFG          EMR          2000 c_cdr               19
#>  2 Afghanistan AFG          EMR          2000 c_newinc_100k       36
#>  3 Afghanistan AFG          EMR          2000 e_inc_100k         190
#>  4 Afghanistan AFG          EMR          2000 e_inc_num        37000
#>  5 Afghanistan AFG          EMR          2000 e_mort_100k         68
#>  6 Afghanistan AFG          EMR          2000 e_pop_num     19542982
#>  7 Afghanistan AFG          EMR          2001 c_cdr               27
#>  8 Afghanistan AFG          EMR          2001 c_newinc_100k       51
#>  9 Afghanistan AFG          EMR          2001 e_inc_100k         189
#> 10 Afghanistan AFG          EMR          2001 e_inc_num        37000
#> # ℹ 29,492 more rows

# Lookup variable defintions in the dictionary:
tb_dictionary |>
  dplyr::filter(dataset == "tb_estimates")
#> # A tibble: 6 × 3
#>   dataset      variable      definition                                         
#>   <chr>        <chr>         <chr>                                              
#> 1 tb_estimates c_cdr         Case detection rate (all forms) [also known as TB …
#> 2 tb_estimates c_newinc_100k Case notification rate, which is the total of new …
#> 3 tb_estimates e_inc_100k    Estimated incidence (all forms) per 100 000 popula…
#> 4 tb_estimates e_inc_num     Estimated number of incident cases (all forms)     
#> 5 tb_estimates e_mort_100k   Estimated mortality of TB cases (all forms) per 10…
#> 6 tb_estimates e_pop_num     Estimated total population number
```

## Development

To add data sets to the package:

1.  Add a file to `data-raw/`, exporting a dataset to `data/`.
2.  Update `R/tb_all.R` and `R/tb_dictionary.R`.
3.  Update and rebuild the documentation in `R/data.R`, if required.
4.  Rebuild the package.

## Contributing

To contribute to this project, please follow [GitHub
Flow](https://guides.github.com/introduction/flow/) when submitting
changes.

> Please note that this project is released with a Contributor Code of
> Conduct. By participating in this project you agree to abide by its
> terms.

## Credits

See [LICENSE](/LICENSE)
