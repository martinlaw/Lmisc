#' Converts HbA1c from percentage to mmol per mol
#'
#' @param percent HbA1c value to convert
#'
#' @returns HbA1c in mmol per mol
#' @export
#'
#' @examples
#' hba1c_to_mmol(percent=7)
hba1c_to_mmol <- function(percent){
  mmol <- 10.929*(percent-2.152)
  mmol
}
