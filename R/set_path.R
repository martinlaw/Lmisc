#' Create character for path to project
#'
#' @param project.number Project number
#'
#' @returns Character for path to project.
#'
#' @export
#' @examples
#' set_path(135)
set_path <- function(project.number){
  common.path <-  "//bliss-04-nfs.mrc-bsu.cam.ac.uk/projects"
  project.path <- file.path(common.path, paste0("PTUC", project.number))
  project.path
}
