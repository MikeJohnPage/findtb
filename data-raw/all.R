pkgload::load_all()

all <- dplyr::bind_rows(
  budget,
  community,
  estimates,
  expenditure,
  labs,
  notifications,
)

usethis::use_data(all, overwrite = TRUE)
