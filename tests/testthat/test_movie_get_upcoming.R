context('testing : movie_get_upcoming()')

test_that('movie_get_upcoming() : returns correct type', {
  expect_type(movie_get_upcoming(), 'list')
})

test_that('movie_get_upcoming() : correct number of columns', {
  expect_equal(ncol(movie_get_upcoming()), 8)
})

test_that('movie_get_upcoming() : correct number of rows', {
  expect_gt(nrow(movie_get_upcoming()), 1)
})
