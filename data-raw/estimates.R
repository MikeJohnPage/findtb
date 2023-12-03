raw <- readr::read_csv("https://extranet.who.int/tme/generateCSV.asp?ds=estimates")

raw_subset <- raw |> dplyr::select(
  tidyselect::all_of(
    c(
      "country",
      "country_code" = "iso3",
      "g_whoregion",
      "year",
      "c_cdr",
      "c_newinc_100k",
      "e_inc_100k",
      "e_inc_num",
      "e_mort_100k",
      "e_pop_num"
    )
  )
)

estimates <- raw_subset |>
  tidyr::pivot_longer(
    cols = -c(country, country_code, g_whoregion, year),
    names_to = "variable"
  )

usethis::use_data(estimates, overwrite = TRUE)
