setHook("rstudio.sessionInit", function(newSession) {
  if (newSession) {
    source("R/renku_restore.R")
  }
}, action = "append")

