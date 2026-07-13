#' Set path to subfolder within "other people's talks" folder
#'
#' @param subfolder A subfolder inside the "other people's talks" folder
#'
#' @returns The path to the "other people's talks" folder with the subfolder appended.
#'
#' @examples
#' \dontrun{
#' set_talk_folder("path/to/folder")
#' }
set_talk_folder <- function(subfolder){
  this.talk.path <- file.path("C:/Users/ml626/OneDrive - University of Cambridge, MRC Biostatistics Unit/Documents/bsu/talks/other people's talks", subfolder)
}
