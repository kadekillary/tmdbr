context('testing : movie_get_images()')

test_that('movie_get_images() : returns correct type', {
  expect_type(movie_get_images('tt2488496'), 'list')
})

test_that('movie_get_images() : correct number of columns', {
  expect_equal(ncol(movie_get_images('tt2488496')), 6)
})

test_that('movie_get_images() : correct number of rows', {
  expect_gt(nrow(movie_get_images('tt2488496')), 1)
})
