svMisc::assign_temp("renku_save", function(renku_dir = NULL, commit = TRUE) {
  if (isTRUE(commit))
    message("Saving configuration, please, be patient...")
  # Get the root directory of the Renku/GitLab project
  renku_get_dir <- function() {
    if (fs::file_exists("~/.config/renkudir")) {
      trimws(readLines("~/.config/renkudir", warn = FALSE)[1])
    } else {
      # Use reasonable default value
      "~/mybox"
    }
  }

  # The Renku/GitLab root directory
  if (is.null(renku_dir))
    renku_dir <- renku_get_dir()

  # If the renku_dir is not found, just exit silently
  if (!fs::file_exists(renku_dir))
    return(invisible(paste0("Directory '", renku_dir, "' not found.")))

  # The directory where to place the configuration
  config_dir <- fs::path(renku_dir, ".config")
  if (!fs::dir_exists(config_dir))
    fs::dir_create(config_dir)

  # Save/update credentials file
  creds_file <- fs::path(renku_dir, ".git", "credentials")
  creds_save_file <- fs::path(config_dir, "credentials")
  if (fs::file_exists(creds_file))
    fs::file_copy(creds_file, creds_save_file, overwrite = TRUE)

  # Record RStudio configuration in my repo
  rstudio_conf <- fs::path("~/.config/rstudio/rstudio-prefs.json")
  if (fs::file_exists(rstudio_conf))
    fs::file_copy(rstudio_conf, fs::path(config_dir, "rstudio-prefs-user.json"),
      overwrite = TRUE)

  # Record project MRU (only for ~/github/ items)
  project_mru <- fs::path("~/.rstudio/monitored/lists/project_mru")
  if (fs::file_exists(project_mru)) {
    mru <- readLines(project_mru, warn = FALSE)
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

  if (isTRUE(commit)) {
    try(system("renku save"), silent = TRUE)
    #system('git add .')
    #system('git commit -m "Save RStudio configuration"')
    #system('git push')
  }
})

