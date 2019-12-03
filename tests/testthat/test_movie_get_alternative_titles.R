context('testing : movie_get_alternative_titles()')

test_that('movie_get_alternative_titles() : returns correct type', {
  expect_type(movie_get_alternative_titles('tt2488496'), 'list')
})

test_that('movie_get_alternative_titles() : correct number of columns', {
  expect_equal(ncol(movie_get_alternative_titles('tt2488496')), 3)
})

test_that('movie_get_alternative_titles() : correct number of rows', {
  expect_gt(nrow(movie_get_alternative_titles('tt2488496')), 1)
})
