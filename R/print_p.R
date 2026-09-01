#' Print p value as-is, or with "<0.x", to selected decimal place
#'
#' @param p P-value to print
#' @param decimals Number of decimal places (default=3)
#' @param sep Separator on each side of operator (default="")
#' @param add.p Logical. Should "p" or "p=" be included in outout? Default FALSE.
#'
#' @returns String showing p-value
#' @export
#'
#' @examples
#' print_p(0.000004321, dec=4)
print_p <- function(p, decimals=2, sep="", add.p=FALSE){
  min.p <- 10^-decimals
  printed.p <- ifelse(test=p<min.p,
                      yes=paste("<", Lmisc::dp(min.p, digits=decimals), sep=sep),
                      no=paste(Lmisc::dp(p, digits=decimals), sep=sep))
  if(add.p==TRUE){
    printed.p <- ifelse(test=p<min.p,
                        yes=paste("p", printed.p, sep=sep),
                        no=paste("p", "=", printed.p, sep=sep))
  }
  printed.p
}
