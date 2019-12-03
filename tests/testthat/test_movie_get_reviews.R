context('testing : movie_get_reviews()')

test_that('movie_get_reviews() : returns correct type', {
  expect_type(movie_get_reviews('tt2488496'), 'list')
})

test_that('movie_get_reviews() : correct number of columns', {
  expect_equal(ncol(movie_get_reviews('tt2488496')), 4)
})

test_that('movie_get_reviews() : correct number of rows', {
  expect_gt(nrow(movie_get_reviews('tt2488496')), 1)
})
