test_that("tinytest tests run", {
  tiny_dir <- system.file("tinytest", package = "utilities")
  expect_true(nzchar(tiny_dir), info = "tinytest directory not found")
  
  res <- tinytest::run_test_dir(tiny_dir, verbose = FALSE)
  
  # tinytest returns a data.frame with a 'passed' column
  expect_true(all(res$passed), info = "Some tinytest tests failed")
})
