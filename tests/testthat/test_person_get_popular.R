context('testing : person_get_popular()')

test_that('person_get_popular() : returns correct type', {
  expect_type(person_get_popular(), 'list')
})

test_that('person_get_popular() : correct number of columns', {
  expect_equal(ncol(person_get_popular()), 5)
})

test_that('person_get_popular() : correct number of rows', {
  expect_gt(nrow(person_get_popular()), 1)
})
