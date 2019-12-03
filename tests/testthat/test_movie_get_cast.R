context('testing : movie_get_cast()')

test_that('movie_get_cast() : returns correct type', {
  expect_type(movie_get_cast('tt2488496'), 'list')
})

test_that('movie_get_cast() : correct number of columns', {
  expect_equal(ncol(movie_get_cast('tt2488496')), 5)
})

test_that('movie_get_cast() : correct number of rows', {
  expect_gt(nrow(movie_get_cast('tt2488496')), 1)
})
