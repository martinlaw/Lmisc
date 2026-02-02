set_path <- function(project.number){
  common.path <-  "//bliss-04-nfs.mrc-bsu.cam.ac.uk/projects"
  project.path <- here::here(common.path, paste0("ptuc_", project.number))
  project.path
}
