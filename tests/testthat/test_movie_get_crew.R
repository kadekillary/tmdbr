context('testing : movie_get_crew()')

test_that('movie_get_crew() : returns correct type', {
  expect_type(movie_get_crew('tt2488496'), 'list')
})

test_that('movie_get_crew() : correct number of columns', {
  expect_equal(ncol(movie_get_crew('tt2488496')), 5)
})

test_that('movie_get_crew() : correct number of rows', {
  expect_gt(nrow(movie_get_crew('tt2488496')), 1)
})
