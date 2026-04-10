#' Converts HbA1c from percentage to mmol per mol
#'
#' @param percent HbA1c value to convert
#' @param sd Logical: is the value a standard deviation? Default FALSE.
#'
#' @returns HbA1c in mmol per mol
#' @export
#'
#' @examples
#' hba1c_to_mmol(percent=7)
hba1c_to_mmol <- function(percent, sd=FALSE){
  mmol <- ifelse(test=sd==TRUE, yes=10.929*percent, no=10.929*(percent-2.152))
  mmol
}
