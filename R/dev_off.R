#' Turns off all devices
#'
#' @export
#'
#' @examples
#' \dontrun{
#' dev_off()
#' }
dev_off <- function(){
  while(dev.cur()>1){dev.off()}
  dev.cur()
}

