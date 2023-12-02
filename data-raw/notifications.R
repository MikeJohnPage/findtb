raw <- readr::read_csv("https://extranet.who.int/tme/generateCSV.asp?ds=notifications")

raw_subset <- raw |> dplyr::select(
  tidyselect::all_of(
    c(
      "country",
      "country_code" = "iso3",
      "g_whoregion",
      "year",
      "conf_rrmdr_tx",
      "conf_xdr_tx",
      "new_clindx",
      "ret_rel_labconf",
      "c_newinc",
      "new_labconf"
    )
  )
)

notifications <- raw_subset |>
  tidyr::pivot_longer(
    cols = -c(country, country_code, g_whoregion, year),
    names_to = "variable"
  )

usethis::use_data(notifications, overwrite = TRUE)
