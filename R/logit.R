#' Takes the logit
#'
#' @param p Value for taking logit
#'
#' @returns Logit
#' @export
#'
#' @examples
#' logit(0.5)
logit <- function(p){
  return(log(p/(1-p)))
}
