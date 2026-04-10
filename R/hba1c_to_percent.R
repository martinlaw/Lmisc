#' Converts HbA1c from mmol per mol to perecentage
#'
#' @param percent HbA1c value to convert
#'
#' @returns HbA1c in percentage
#' @export
#'
#' @examples
#' hba1c_to_percent(mmol=47)
hba1c_to_percent <- function(mmol){
  percent <- (mmol/10.9292)+2.152
  percent
}

