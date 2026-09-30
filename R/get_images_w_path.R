#' Create a string vector of all image files in a folder, including the path.
#'
#' @param path A path to a folder containing png files.
#' @param filetype Extension to search for. Defaults to ".png".
#'
#' @returns A string vector of all matching files in a folder, including the path, which can be immediately be wrapped inside knitr::include_graphics().
#' @export
#'
#' @examples
#' \dontrun{
#' get_images_w_path("path/to/image_folder")
#' }
get_images_w_path <- function(path, filetype=".png"){
  files.in.folder <- list.files(path)
  images <- files.in.folder[grep(filetype, x=files.in.folder)]
  images.w.path <- file.path(path, images)
  return(images.w.path)
}
