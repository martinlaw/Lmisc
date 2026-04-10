#' Undertake Welch test using means, standard deviations and sample sizes
#'
#' @param mu1 Mean of group 1
#' @param mu2 Mean of group 2
#' @param sd1 SD of group 1
#' @param sd2 SD of group 2
#' @param n1 Sample size of group 1
#' @param n2 Sample size of group 2
#' @param two.sided.alpha Two-sided alpha (default 0.05)
#'
#' @returns Vector of t-statistic, estimate, confidence interval and p-value
#' @importFrom stats pt qt
#' @export
#'
#' @examples
#' welch(mu1=mean(1:10), mu2=mean(7:20), sd1=sd(1:10), sd2=sd(7:20), n1=length(1:10), n2=length(7:20))
welch <- function(mu1, mu2, sd1, sd2, n1, n2, two.sided.alpha=0.05){
  mean.diff <- mu1-mu2
  se1 <- sd1/sqrt(n1)
  se2 <- sd2/sqrt(n2)
  se.diff <- sqrt(se1^2+se2^2)
  t.stat <- mean.diff/se.diff
  dof1 <- n1-1
  dof2 <- n2-1
  dof <- (se.diff^4)/((se1^4/dof1)+(se2^4/dof2))
  p <- 2*pt(-abs(t.stat), dof)
  ci.lo <- mean.diff - se.diff*qt(1-two.sided.alpha/2, dof)
  ci.hi <- mean.diff + se.diff*qt(1-two.sided.alpha/2, dof)
  return(c(t.stat=t.stat, est=mean.diff, ci.lo=ci.lo, ci.hi=ci.hi, p=p))
}
