context('testing : movie_get_keywords()')

test_that('movie_get_keywords() : returns correct type', {
  expect_type(movie_get_keywords('tt2488496'), 'list')
})

test_that('movie_get_keywords() : correct number of columns', {
  expect_equal(ncol(movie_get_keywords('tt2488496')), 2)
})

test_that('movie_get_keywords() : correct number of rows', {
  expect_gt(nrow(movie_get_keywords('tt2488496')), 1)
})
