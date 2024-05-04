test_that('Fizz Buzz testing...', {
  expect_equal(length(fizz_buzz(30)), 30 )
})

test_that('testing negative input', {
  expect_error(fizz_buzz(-5))
})

test_that('testing infinite input', {
  expect_error(fizz_buzz(Inf))
})

test_that('testing zero input', {
  expect_error(fizz_buzz(0))
})



