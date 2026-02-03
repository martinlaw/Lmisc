#' Takes the inverse logit
#'
#' @param x
#'
#' @returns Inverse logit
#' @export
#'
#' @examples
expit <- function(x){
  return(exp(x)/(exp(x)+1))
}
