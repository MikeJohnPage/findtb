raw <- readr::read_csv("https://extranet.who.int/tme/generateCSV.asp?ds=expenditure_utilisation")

raw_subset <- raw |> dplyr::select(
  tidyselect::all_of(
    c(
      "country",
      "country_code" = "iso3",
      "g_whoregion",
      "year",
      "rcvd_lab",
      "rcvd_staff",
      "rcvd_tot_domestic",
      "rcvd_tot_gf",
      "rcvd_tot_grnt",
      "rcvd_tot_sources",
      "rcvd_tot_usaid"
    )
  )
)

expenditure <- raw_subset |>
  tidyr::pivot_longer(
    cols = -c(country, country_code, g_whoregion, year),
    names_to = "variable"
  )

usethis::use_data(expenditure, overwrite = TRUE)
