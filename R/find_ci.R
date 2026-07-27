#' Obtain simple confidence interval
#'
#' @param est Estimate
#' @param lo.ci Lower CI
#' @param hi.ci Upper CI
#' @param se Standard error
#' @param crit Critical value. Default qnorm(0.975)
#' @param exp Logical. Exponentiate the output? Default FALSE
#' @param recip Take reciprocal
#' @param digits Number of decimal places
#'
#' @returns Single-row data frame containing estimate and confidence intervals.
#' @importFrom stats qnorm
#' @export
#'
#' @examples
#' find_ci(est=1, se=0.1, crit=1.96)
find_ci <- function(est,
                    lo.ci=NULL,
                    hi.ci=NULL,
                    se=NULL,
                    crit=stats::qnorm(0.975),
                    exp=FALSE,
                    recip=FALSE,
                    digits=NULL){
  if(length(est)==3){ # If vector c(est, lo, hi) supplied
    vec <- est
    est <- vec[1]
    lo.ci <- vec[2]
    hi.ci <- vec[3]
  }
  if(is.numeric(se)){
    lo.ci <- est - crit*se
    hi.ci <- est + crit*se
  }
  if(recip==TRUE){
    est <- 1/est
    lo.ci.new <- 1/hi.ci
    hi.ci <- 1/lo.ci
    lo.ci <- lo.ci.new
  }
  output <- data.frame(est=est, lo=lo.ci, hi=hi.ci)
  if(exp==TRUE){
    output <- exp(output)
  }
  if(is.numeric(digits)){
    output <- dp(output, digits=digits)
  }
  return(output)
}
