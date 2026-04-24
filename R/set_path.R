#' Create character for path to project data
#'
#' @param project.number Project number
#' @param data Logical: Append "data" subfolder? Default TRUE.
#'
#' @returns Character for path to project.
#'
#' @export
#' @examples
#' set_path(135)
set_path <- function(project.number, data=TRUE){
  common.path <- "//bliss-04-nfs.mrc-bsu.cam.ac.uk/projects"
  project.path <- file.path(common.path, paste0("PTUC", project.number))
  if(data==TRUE) project.path <- file.path(project.path, "data")
  project.path
}
