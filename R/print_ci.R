#' Prints typical form for reporting estimate and confidence interval, with optional rounding.
#'
#' @param est Estimate
#' @param lo.ci Lower confidence interval
#' @param hi.ci Upper confidence interval
#' @param ci.level Level of confidence interval (default "95")
#' @param digits Number of decimal places (default NULL)
#' @param include95 Include string for "% CI"
#'
#' @returns Typical character data for estimate and confidence interval.
#' @export
#'
#' @examples
#' print_ci(est=3.001, lo.ci=1.999, hi.ci=5.10001, ci.level="90", digits=2)
print_ci <- function(est, lo.ci, hi.ci, ci.level="95", digits=2, include95=TRUE){
  if(length(est)==3){ # If vector c(est, lo, hi) supplied
    vec <- est
    est <- vec[1]
    lo.ci <- vec[2]
    hi.ci <- vec[3]
  }
  if(is.numeric(digits)){
    est <- dp(est, digits=digits)
    lo.ci <- dp(lo.ci, digits=digits)
    hi.ci <- dp(hi.ci, digits=digits)
  }
  if(include95==TRUE){
    paste0(est, " (", ci.level, "% CI [", lo.ci, ", ", hi.ci, "])")
  }else{
    paste0(est, " [", lo.ci, ", ", hi.ci, "]")
  }
}

