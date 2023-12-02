raw <- readr::read_csv("https://extranet.who.int/tme/generateCSV.asp?ds=labs")

raw_subset <- raw |> dplyr::select(
  tidyselect::all_of(
    c(
      "country",
      "country_code" = "iso3",
      "g_whoregion",
      "year",
      "culture",
      "lab_cul",
      "lab_sm",
      "smear",
      "lab_xpert",
      "xpert",
      "m_wrd",
      "m_wrd_tests_performed",
      "m_wrd_tests_positive"
    )
  )
)

labs <- raw_subset |>
  tidyr::pivot_longer(
    cols = -c(country, country_code, g_whoregion, year),
    names_to = "variable"
  )

usethis::use_data(labs, overwrite = TRUE)
