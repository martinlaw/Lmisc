point_ci <- function(est, ci.lo, ci.hi, ci.level="95", ...){
  round.est <- dp(est, ...)
  round.ci.lo <- dp(ci.lo, ...)
  round.ci.hi <- dp(ci.hi, ...)
  paste0(round.est, " (", ci.level, "% CI [", round.ci.lo, ", ", round.ci.hi, "])")
}

