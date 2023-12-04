test_that("variables match across datasets", {
  expect_setequal(unique(tb_all$variable), tb_dictionary$variable)
})

test_that("datasets have class tibble", {
  expect_s3_class(tb_all, "tbl_df")
  expect_s3_class(tb_budget, "tbl_df")
  expect_s3_class(tb_community, "tbl_df")
  expect_s3_class(tb_dictionary, "tbl_df")
  expect_s3_class(tb_estimates, "tbl_df")
  expect_s3_class(tb_expenditure, "tbl_df")
  expect_s3_class(tb_labs, "tbl_df")
  expect_s3_class(tb_notifications, "tbl_df")
})

test_that("column types", {
  expect_type(tb_all$country, "character")
  expect_type(tb_all$country_code, "character")
  expect_type(tb_all$g_whoregion, "character")
  expect_type(tb_all$year, "double")
  expect_type(tb_all$variable, "character")
  expect_type(tb_all$value, "double")
})

test_that("dataset snapshots", {
  expect_snapshot(head(tb_all, n = 20))
  expect_snapshot(head(tb_budget, n = 20))
  expect_snapshot(head(tb_community, n = 20))
  expect_snapshot(head(tb_dictionary, n = 20))
  expect_snapshot(head(tb_estimates, n = 20))
  expect_snapshot(head(tb_expenditure, n = 20))
  expect_snapshot(head(tb_labs, n = 20))
  expect_snapshot(head(tb_notifications, n = 20))

  expect_snapshot(tail(tb_all, n = 20))
  expect_snapshot(tail(tb_budget, n = 20))
  expect_snapshot(tail(tb_community, n = 20))
  expect_snapshot(tail(tb_dictionary, n = 20))
  expect_snapshot(tail(tb_estimates, n = 20))
  expect_snapshot(tail(tb_expenditure, n = 20))
  expect_snapshot(tail(tb_labs, n = 20))
  expect_snapshot(tail(tb_notifications, n = 20))
})
