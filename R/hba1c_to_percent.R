#' Converts HbA1c from mmol per mol to percentage
#'
#' @param mmol HbA1c value to convert
#' @param sd Logical: is the value a standard deviation? Default FALSE.

#' @returns HbA1c in percentage
#' @export
#'
#' @examples
#' hba1c_to_percent(mmol=47)
hba1c_to_percent <- function(mmol, sd=FALSE){
  percent <- ifelse(test=sd==TRUE,
                    yes=(mmol/10.9292),
                    no=(mmol/10.9292)+2.152)
  percent
}

