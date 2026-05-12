#' setdiff, but in both directions
#'
#' @param x A vector
#' @param y A vector
#'
#' @returns A list of:
#' elements in x but not y
#' elements in y but not x
#' union: any element in either x or y
#' intersection: elements in both x and y
#' setequal: do both x and y contain the same elements (ignoring duplicates)?
#' length of x and y
#' number of unique values in x and in y
#' @export
#'
#' @examples
#' compare(1:5, c(3,3,4,4,5,5,6,7))
compare <- function(x, y){
  x.not.y <- setdiff(x, y)
  y.not.x <- setdiff(y, x)
  union.xy <- union(x, y)
  intersection <- intersect(x, y)
  same.elements <- setequal(x, y)
  length.xy <- c(length(x), length(y))
  unique.values <- c(length(unique(x)), length(unique(y)))
  output <- list(x.not.y=x.not.y,
                 y.not.x=y.not.x,
                 union.xy=union.xy,
                 intersection=intersection,
                 same.elements=same.elements,
                 length.xy=length.xy,
                 unique.values= unique.values)
  output
}
