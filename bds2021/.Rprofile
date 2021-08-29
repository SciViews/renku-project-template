setHook("rstudio.sessionInit", function(newSession) {
  if (newSession) {
    source("R/renku_save.R")
    svMisc::assign_temp("renku_save", renku_save)
    rm(renku_save)
    source("R/renku_restore.R")
    renku_restore(); rm(renku_restore)
  }
}, action = "append")

