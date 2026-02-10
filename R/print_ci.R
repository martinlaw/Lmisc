#' Prints typical form for reporting estimate and confidence interval, with optional rounding.
#'
#' @param est Estimate
#' @param lo.ci Lower confidence interval
#' @param hi.ci Upper confidence interval
#' @param ci.level Level of confidence interval (default "95")
#' @param digits Number of decimal places (default NULL)
#'
#' @returns Typical character data for estimate and confidence interval.
#' @export
#'
#' @examples
#' print_ci(est=3.001, lo.ci=1.999, hi.ci=5.10001, ci.level="90", digits=2)
print_ci <- function(est, lo.ci, hi.ci, ci.level="95", digits=2){
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
  paste0(est, " (", ci.level, "% CI [", lo.ci, ", ", hi.ci, "])")
}

