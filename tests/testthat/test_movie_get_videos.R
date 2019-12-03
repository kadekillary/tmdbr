context('testing : movie_get_videos()')

test_that('movie_get_videos() : returns correct type', {
  expect_type(movie_get_videos('tt2488496'), 'list')
})

test_that('movie_get_videos() : correct number of columns', {
  expect_equal(ncol(movie_get_videos('tt2488496')), 5)
})

test_that('movie_get_videos() : correct number of rows', {
  expect_gt(nrow(movie_get_videos('tt2488496')), 1)
})
