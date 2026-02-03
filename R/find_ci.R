#' Obtain simple confidence interval
#'
#' @param est Estimate
#' @param se Standard error
#' @param crit Critical value. Default qnorm(0.975)
#' @param exp Logical. Exponentiate the output? Default FALSE
#'
#' @returns Single-row data frame containing estimate and confidence intervals.
#' @importFrom stats qnorm
#' @export
#'
#' @examples
#' find_ci(est=1, se=0.1, crit=qnorm(0.95))
find_ci <- function(est, se, crit=qnorm(0.975), exp=FALSE){
  lo <- est - crit*se
  hi <- est + crit*se
  output <- data.frame(est=est, lo=lo, hi=hi)
  if(exp==TRUE){
    output <- exp(output)
  }
  return(output)
}
