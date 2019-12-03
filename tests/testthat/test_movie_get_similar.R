context('testing : movie_get_similar()')

test_that('movie_get_similar() : returns correct type', {
  expect_type(movie_get_similar('tt2488496'), 'list')
})

test_that('movie_get_similar() : correct number of columns', {
  expect_equal(ncol(movie_get_similar('tt2488496')), 7)
})

test_that('movie_get_similar() : correct number of rows', {
  expect_gt(nrow(movie_get_similar('tt2488496')), 1)
})
