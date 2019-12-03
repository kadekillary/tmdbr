context('testing : movie_get_top_rated()')

test_that('movie_get_top_rated() : returns correct type', {
  expect_type(movie_get_top_rated(), 'list')
})

test_that('movie_get_top_rated() : correct number of columns', {
  expect_equal(ncol(movie_get_top_rated()), 7)
})

test_that('movie_get_top_rated() : correct number of rows', {
  expect_gt(nrow(movie_get_top_rated()), 1)
})
