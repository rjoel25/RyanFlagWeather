#' Takes an integer (n)
#'
#' If n is evenly divisible by 3, the output will say "Fizz"
#' If n is evenly divisible by 5, the output will say "Buzz"
#' If n is evenly divisible by 3 and 5, the output will say "Fizz Buzz"
#'
#' @param a A real number
#' @return Returns the integer, "Fizz," "Buzz," or "Fizz Buzz" based on how n is divisible
#' @examples
#' fizz_buzz(3)
#' fizz_buzz(15)
#' fizz_buzz(25)
#' @export
#'


fizz_buzz <- function(n)
{
  if(is.infinite(n)){
    stop('Error: input cannot be infinite')
  }
  if(n==0){
    stop("Error: input cannot be zero")
  }
  if(n<0){
    stop("Error: input cannot be negative")
  }
  x <- 1:n

  result<- ifelse(x %% 3==0 & x %% 5==0, "Fizz Buzz",
                  ifelse(x %% 3==0, "Fizz",
                          ifelse(x %%5==0, "Buzz", x)))
  print(result)


}
#Test the function.
#usethis::use_testthat(fizz_buzz)


