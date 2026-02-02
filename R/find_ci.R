find_ci <- function(est, se, crit=qnorm(0.975), exp=FALSE){
  lo <- est - crit*se
  hi <- est + crit*se
  output <- data.frame(est=est, lo=lo, hi=hi)
  if(exp==TRUE){
    output <- exp(output)
  }
  return(output)
}
