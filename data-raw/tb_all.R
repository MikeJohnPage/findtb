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
