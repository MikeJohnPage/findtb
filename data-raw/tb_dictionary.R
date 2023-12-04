# This script should only be run once all other scripts have been built/updated
pkgload::load_all()

raw <- readr::read_csv("https://extranet.who.int/tme/generateCSV.asp?ds=dictionary")

keep_matching_data <- raw |>
  dplyr::mutate(
    dataset = dplyr::case_when(
      dataset == "Budget" ~ "tb_budget",
      dataset == "Community engagement" ~ "tb_community",
      dataset == "Estimates" ~ "tb_estimates",
      dataset == "Expenditure and utilisation" ~ "tb_expenditure",
      dataset == "Laboratories" ~ "tb_labs",
      dataset == "Notification" ~ "tb_notifications",
      .default = NULL
    )
  ) |>
  dplyr::filter(!is.na(dataset))

keep_matching_vars <- keep_matching_data |>
  dplyr::filter(variable_name %in% unique(tb_all$variable))

# Drop code_list as all NA. Recheck if adding datasets.
tb_dictionary <- keep_matching_vars |>
  dplyr::select(dataset, variable = variable_name, definition)

usethis::use_data(tb_dictionary, overwrite = TRUE)
