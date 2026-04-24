#' Takes the logit. Alias is LO ("log odds").
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

#' @rdname logit
#' @examples LO(0.5)
#' @export
LO <- logit
