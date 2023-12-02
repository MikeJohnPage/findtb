raw <- readr::read_csv("https://extranet.who.int/tme/generateCSV.asp?ds=budget")

raw_subset <- raw |> dplyr::select(
  tidyselect::all_of(
    c(
      "country",
      "country_code" = "iso3",
      "g_whoregion",
      "year",
      "budget_lab",
      "budget_oth",
      "budget_staff",
      "cf_lab",
      "cf_staff",
      "cf_tot_domestic",
      "cf_tot_gf",
      "cf_tot_grnt",
      "cf_tot_sources",
      "cf_tot_usaid"
    )
  )
)

budget <- raw_subset |>
  tidyr::pivot_longer(
    cols = -c(country, country_code, g_whoregion, year),
    names_to = "variable"
  )

usethis::use_data(budget, overwrite = TRUE)
