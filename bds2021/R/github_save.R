# TODO: save the directory from where I started somewhere
renku_dir <- fs::path("~/mybox")

renku_rstudio_save <- function(renku_dir) {
  # The directory where to place the configuration
  config_dir <- fs::path(renku_dir, "config")
  if (!fs::dir_exists(config_dir))
    fs::dir_create(config_dir)

  # Record RStudio configuration in my repo
  rstudio_conf <- fs::path("~/.config/rstudio/rstudio-prefs.json")
  if (fs::file_exists(rstudio_conf))
    fs::file_copy(rstudio_conf, fs::path(config_dir, "rstudio-prefs-user.json"),
      overwrite = TRUE)

  # Record project MRU (only for ~/github/ items)
  project_mru <- fs::path("~/.rstudio/monitored/lists/project_mru")
  if (fs::file_exists(project_mru)) {
    mru <- readLines(project_mru)
    mru <- mru[grepl("^~/github/", mru)]
    project_mru_save <- fs::path(config_dir, "project_mru")
    if (!length(mru)) {
      if (fs::file_exists(project_mru_save))
        fs::file_delete(project_mru_save)
    } else {
      # There is something to save
      writeLines(mru, project_mru_save)
    }
  }

  # Record the list of ~/github/ subdirectories and their corresponding repos
  gh_dir <- fs::path("~/github")
  project_paths <- unlist(fs::dir_map(gh_dir, recurse = 1, type = "directory",
    fun = function(dir) {
      # This is a git project if there is an .Rproj file and a remote is defined
      remote_url <- try(gert::git_remote_info(repo = dir)$url, silent = TRUE)
      if (length(fs::dir_ls(dir, type = "file", glob = "*.Rproj")) &&
          !inherits(remote_url, "try-error")) {
        paste(dir, remote_url, sep = "|")
      }
    }))
  project_paths_save <- fs::path(config_dir, "project_paths")
  if (!length(project_paths)) {
    if (fs::file_exists(project_paths_save))
      fs::file_delete(project_paths_save)
  } else {
    # There are repos to record
    writeLines(project_paths, project_paths_save)
  }

  # Save the new config
  odir <- setwd(renku_dir)
  on.exit(setwd(odir))
  system("renku save")
}
