# runner.R
library(utilities)
test_all()
test_package("utilities")
tinytest::run_test_dir("inst/tinytest")
tinytest::run_test_file("inst/tinytest/test_hello.R")


testthat::test_file("tests/testthat/test-tinytest.R")
