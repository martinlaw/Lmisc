#' Print p value as-is, or with "<0.x", to selected decimal place
#'
#' @param p P-value to print
#' @param decimals Number of decimal places (default=3)
#' @param sep Separator on each side of operator (default="")
#'
#' @returns String showing p-value
#' @export
#'
#' @examples
#' print_p(0.000004321, dec=4)
print_p <- function(p, decimals=2, sep=""){
  min.p <- 10^-decimals
  printed.p <- ifelse(test=p<min.p,
                      yes=paste("p", "<", Lmisc::dp(min.p, digits=decimals), sep=sep),
                      no=paste("p", "=", Lmisc::dp(p, digits=decimals), sep=sep))
  printed.p
}
