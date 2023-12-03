# findtb <img src='man/figures/logo.png' align="right" height="150" /></a>

## Overview
The findtb package downloads TB data from the WHO, cleans the data, and
then exports it into a standard rectangular format for use in the gap package.

The package exports seven datasets called:
- tb_budget
- tb_community
- tb_estimates
- tb_expenditure
- tb_labs
- tb_notifications
- tb_all (a data set joining all of the above)

If you use an IDE, the shared `tb_` prefix should make dataset discovery easier
when using autocomplete.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("finddx/findtb")
```

## Development

To add data sets to the package:

1. Add a file to `data-raw/`, exporting a dataset to `data/`.
2. Document the data with roxygen comments in `R/data.R`, if required.
3. Run `devtools::document()` to export documentation.
4. Run `devtools::check()` to check for errors/warnings/notes.
5. Update `LICENSE` by adding the license of the new data set if not already covered.

## Contributing

To contribute to this project, please follow [GitHub Flow](https://guides.github.com/introduction/flow/)
when submitting changes.

> Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its terms.

## Credits

See [LICENSE](/LICENSE)