#' Finds the date of the current file
#'
#' @returns Returns the date of the current file
#' @export
#'
#' @examples
#' \dontrun{
#' date_current_file()
#' }
date_current_file <- function(){
  if(requireNamespace("rstudioapi", quietly = TRUE)==FALSE) stop("Need rstudioapi package")
  current.file <- rstudioapi::getSourceEditorContext()$path
  file.info(current.file)
  thedate <- as.Date(file.info(current.file)$ctime) # Just the date
  thedate
}
