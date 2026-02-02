#' Creates typical form for reporting estimate and confidence interval.
#'
#' @param est Estimate
#' @param ci.lo Lower confidence interval
#' @param ci.hi Upper confidence interval
#' @param ci.level Level of confidence interval (default "95")
#' @param ... Number of decimal places (passed to function dp())
#'
#' @returns Typical character data for estimate and confidence interval.
#' @export
#'
#' @examples
#' point_ci(est=3.001, ci.lo=1.999, ci.hi=5.10001, ci.level="90")
point_ci <- function(est, ci.lo, ci.hi, ci.level="95", ...){
  round.est <- dp(est, ...)
  round.ci.lo <- dp(ci.lo, ...)
  round.ci.hi <- dp(ci.hi, ...)
  paste0(round.est, " (", ci.level, "% CI [", round.ci.lo, ", ", round.ci.hi, "])")
}

