# findtb <img src='man/figures/logo.png' align="right" height="150" /></a>

## Overview
The findtb package downloads TB data from the WHO, cleans the data, and
then exports it into a standard rectangular format for use in the gap package.

The package exports seven datasets called:
- `tb_all` (a data set joining all of the below)
- `tb_budget`
- `tb_community`
- `tb_estimates`
- `tb_expenditure`
- `tb_labs`
- `tb_notifications`

It also ships with a data dictionary to lookup definitions:
- `tb_dictionary`

## Installation
``` r
# Install the development version from GitHub:
# install.packages("pak")
pak::pak("finddx/findtb")
```

## Development
To add data sets to the package:

1. Add a file to `data-raw/`, exporting a dataset to `data/`.
2. Update `R/tb_all.R` and `R/tb_dictionary.R`.
3. Update and rebuild the documentation in `R/data.R`, if required.
4. Rebuild the package.

## Contributing
To contribute to this project, please follow [GitHub Flow](https://guides.github.com/introduction/flow/)
when submitting changes.

> Please note that this project is released with a Contributor Code of Conduct. By participating in this project you agree to abide by its terms.

## Credits
See [LICENSE](/LICENSE)
