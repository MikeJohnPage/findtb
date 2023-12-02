# findtb <img src='man/figures/logo.png' align="right" height="150" /></a>

## Overview
The findtb package downloads TB data from the WHO, cleans the data, and
then exports it into a standard rectangular format for use in the gap package.

Data can be accessed with `findtb::data`.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("finddx/findtb")
```

## Development

To add data sets to the package:

1. Update `data-raw/query-urls.R`. Keep to alphabetical ordering.
Make sure to build and export the tibble.
2. Add a file to `data-raw/`. See other files for template.
3. Document the data set in `R/data.R`. Keep to alphabetical ordering.
4. Run `devtools::document()` to export documentation.
5. Run `devtools::check()` to check for errors/warnings/notes.
6. Update `LICENSE` by adding the license of the new data set if not already
covered.

## Contributing

To contribute to this project, please follow [GitHub Flow](https://guides.github.com/introduction/flow/)
when submitting changes.

> Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its terms.

## Credits

See [LICENSE](/LICENSE)