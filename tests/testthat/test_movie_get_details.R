context('testing : movie_get_details()')

test_that('movie_get_details() : returns correct type', {
  expect_type(movie_get_details('tt2488496'), 'list')
})

test_that('movie_get_details() : correct number of columns', {
  expect_equal(ncol(movie_get_details('tt2488496')), 15)
})

test_that('movie_get_details() : correct number of rows', {
  expect_equal(nrow(movie_get_details('tt2488496')), 1)
})
