#' Create a string vector of all .png files in a folder, including the path
#'
#' @param path A path to a folder containing png files.
#'
#' @returns A string vector of all .png files in a folder, including the path
#' @export
#'
#' @examples
#' \dontrun{
#' get_images_w_path("path/to/image_folder")
#' }
get_images_w_path <- function(path){
  files.in.folder <- list.files(path)
  images <- files.in.folder[grep(".png", x=files.in.folder)]
  images.w.path <- file.path(path, images)
  return(images.w.path)
}
