# This script should only be run/updated once all other scripts have been built,
# with the exception of `tb_dictionary.R`
pkgload::load_all()

tb_all <- dplyr::bind_rows(
  tb_budget,
  tb_community,
  tb_estimates,
  tb_expenditure,
  tb_labs,
  tb_notifications,
)

usethis::use_data(tb_all, overwrite = TRUE)
