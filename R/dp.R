#' Print number with a certain number of decimal places
#'
#' @param x A number
#' @param digits Number of decimal places to give (default 2)
#' @param rm.dp.if.geq Remove decimal places for values greater than other equal to some value (default 999.5)
#'
#' @returns Character: the number to the required number of decimal places.
#' @export
#'
#' @examples
#' dp(1.002)
dp <- function(x, digits=2, rm.dp.if.geq=999.5){
  dec.places <- ifelse(test= x>=rm.dp.if.geq,
                       yes=0,
                       no=digits)
  trimws(format(round(x, dec.places), nsmall=dec.places, scientific=FALSE))
  }

