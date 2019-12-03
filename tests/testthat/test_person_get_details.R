context('testing : person_get_details()')

test_that('person_get_details() : returns correct type', {
  expect_type(person_get_details(1), 'list')
})

test_that('person_get_details() : correct number of columns', {
  expect_equal(ncol(person_get_details(1)), 9)
})

test_that('person_get_details() : correct number of rows', {
  expect_equal(nrow(person_get_details(1)), 1)
})
