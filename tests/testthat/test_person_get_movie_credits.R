context('testing : person_get_movie_credits()')

test_that('person_get_movie_credits() : returns correct type', {
  expect_type(person_get_movie_credits(2), 'list')
})

test_that('person_get_movie_credits() : correct number of columns', {
  expect_equal(ncol(person_get_movie_credits(2)), 8)
})

test_that('person_get_movie_credits() : correct number of rows', {
  expect_gt(nrow(person_get_movie_credits(2)), 1)
})
