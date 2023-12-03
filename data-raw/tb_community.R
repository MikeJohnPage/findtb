raw <- readr::read_csv("https://extranet.who.int/tme/generateCSV.asp?ds=community")

raw_subset <- raw |> dplyr::select(
  tidyselect::all_of(
    c(
      "country",
      "country_code" = "iso3",
      "g_whoregion",
      "year",
      "bmu",
      "bmu_community_impl",
      "bmu_ref_data",
      "bmu_rxsupport_data",
      "bmu_rxsupport_data_coh",
      "notified_ref",
      "notified_ref_community"
    )
  )
)

tb_community <- raw_subset |>
  tidyr::pivot_longer(
    cols = -c(country, country_code, g_whoregion, year),
    names_to = "variable"
  )

usethis::use_data(tb_community, overwrite = TRUE)
