#' Takes the odds
#'
#' @param x Value for taking odds
#'
#' @returns Odds of x
#' @export
#'
#' @examples
#' odds(0.5)
odds <- function(x){
  return(x/(1-x))
}
