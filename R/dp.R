#' Return number with a certain number of decimal places
#'
#' @param x A number.
#' @param digits Number of decimal places to give (default 2)
#'
#' @returns Character: the number to the required number of decimal places.
#' @export
#'
#' @examples
#' dp(1.002)
dp <- function(x, digits=2){
  trimws(format(round(x, digits), nsmall=digits))
  }

