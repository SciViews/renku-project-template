setHook("rstudio.sessionInit", function(newSession) {
  if (newSession) {
    #message("Welcome to RStudio ", rstudioapi::getVersion())
    source("R/github_init.R")
    source("R/github_restore.R")
    # TODO: create a notes project in ~/github and switch to it
    # (Re)create files
    # rstudioapi::openProject("~/github/notes)
    # TODO: may be renku save?
  }
}, action = "append")

