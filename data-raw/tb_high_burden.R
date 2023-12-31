# High burden country data is stored in a hard-to-read .pdf file:
# https://cdn.who.int/media/docs/default-source/hq-tuberculosis/who_globalhbcliststb_2021-2025_backgrounddocument.pdf?sfvrsn=f6b854c2_9

# Generate the dataset manually:
raw <- tibble::tribble(
  ~country, ~share_global_incidence, ~year,
  "Angola", 83, 2016,
  "Bangladesh", 83, 2016,
  "Brazil", 83, 2016,
  "China", 83, 2016,
  "Democratic People’s Republic of Korea", 83, 2016,
  "Democratic Republic of Congo", 83, 2016,
  "Ethiopia", 83, 2016,
  "India", 83, 2016,
  "Indonesia", 83, 2016,
  "Kenya", 83, 2016,
  "Mozambique", 83, 2016,
  "Myanmar", 83, 2016,
  "Nigeria", 83, 2016,
  "Pakistan", 83, 2016,
  "Philippines", 83, 2016,
  "Russian Federation", 83, 2016,
  "South Africa", 83, 2016,
  "Thailand", 83, 2016,
  "United Republic of Tanzania", 83, 2016,
  "Viet Nam", 83, 2016,
  "Cambodia", 3, 2016,
  "Central African Republic", 3, 2016,
  "Congo", 3, 2016,
  "Lesotho", 3, 2016,
  "Liberia", 3, 2016,
  "Namibia", 3, 2016,
  "Papua New Guinea", 3, 2016,
  "Sierra Leone", 3, 2016,
  "Zambia", 3, 2016,
  "Zimbabwe", 3, 2016,
  "Angola", 84, 2021,
  "Bangladesh", 84, 2021,
  "Brazil", 84, 2021,
  "China", 84, 2021,
  "Democratic People’s Republic of Korea", 84, 2021,
  "Democratic Republic of Congo", 84, 2021,
  "Ethiopia", 84, 2021,
  "India", 84, 2021,
  "Indonesia", 84, 2021,
  "Kenya", 84, 2021,
  "Mozambique", 84, 2021,
  "Myanmar", 84, 2021,
  "Nigeria", 84, 2021,
  "Pakistan", 84, 2021,
  "Philippines", 84, 2021,
  "South Africa", 84, 2021,
  "Thailand", 84, 2021,
  "Uganda", 84, 2021,
  "United Republic of Tanzania", 84, 2021,
  "Viet Nam", 84, 2021,
  "Central African Republic", 2.3, 2021,
  "Congo", 2.3, 2021,
  "Gabon", 2.3, 2021,
  "Lesotho", 2.3, 2021,
  "Liberia", 2.3, 2021,
  "Mongolia", 2.3, 2021,
  "Namibia", 2.3, 2021,
  "Papua New Guinea", 2.3, 2021,
  "Sierra Leone", 2.3, 2021,
  "Zambia", 2.3, 2021
)

# The report indicates that the high-burden countries are constant for 5-year
# periods (e.g., 2016-2020). Fill in the missing values:
raw_16_20 <- raw |>
  dplyr::filter(year == 2016) |>
  tidyr::expand(country, year = 2016:2020) |>
  dplyr::left_join(raw) |>
  tidyr::fill(share_global_incidence)

raw_21 <- raw |>
  dplyr::filter(year == 2021)

tb_high_burden <- dplyr::bind_rows(raw_16_20, raw_21)

usethis::use_data(tb_high_burden, overwrite = TRUE)
