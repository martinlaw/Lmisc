#' Takes the inverse logit
#'
#' @param x Value for taking expit
#'
#' @returns Inverse logit
#' @export
#'
#' @examples
#' expit(0)
expit <- function(x){
  return(exp(x)/(exp(x)+1))
}
