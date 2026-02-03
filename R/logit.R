#' Takes the logit
#'
#' @param p
#'
#' @returns Logit
#' @export
#'
#' @examples
logit <- function(p){
  return(log(p/(1-p)))
}
