context('testing : movie_get_popular()')

test_that('movie_get_popular() : returns correct type', {
  expect_type(movie_get_popular(), 'list')
})

test_that('movie_get_popular() : correct number of columns', {
  expect_equal(ncol(movie_get_popular()), 7)
})

test_that('movie_get_popular() : correct number of rows', {
  expect_gt(nrow(movie_get_popular()), 1)
})
