# Automatically generated from the "Renku svbox" RStudio addin
# Do not edit by hand!

# Check and ask for credentials using gitcreds or credentials
#invisible(credentials::git_credential_ask())
creds <- try(gitcreds::gitcreds_get(), silent = TRUE)
if (inherits(creds, "try-error")) {
  cat("To generate a new GitHub token, visit this link:\n")
  message("https://github.com/settings/tokens/new?scopes=repo,user,gist,workflow&description=R:GITHUB_PAT")
  cat("Copy and paste it here under and hit <enter> to continue...\n")
  invisible(suppressWarnings(try(gitcreds::gitcreds_set(), silent = TRUE)))
  session_init <- TRUE
} else session_init <- FALSE
rm(creds)

# Collect user data
if (fs::file_exists("config/user_data")) {
  # TODO: sign_in now
  fs::file_move("config/user_data", "config/user_data.save")
  session_int <- TRUE
}

# Check the GitHub directory is present
if (!fs::dir_exists("~/github"))
  fs::dir_create("~/github")

# Restore projects
github_restore <- function(url, dir = NULL) {
  if (is.null(dir))
    dir <- sub("^.+/([^/]+)\\.git$", "\\1", url)
  if (dir == url || dir == "") {
    message("Skipping wrongly formatted URL: ", url, " or incorrect dir: ", dir)
    return(invisible(FALSE))
  }
  odir <- setwd("~/github")
  on.exit(setwd(odir))
  repo_path <- fs::path("~/github", dir)
  res <- TRUE
  if (!fs::dir_exists(repo_path)) {
    res <- try(system(glue::glue("git clone {url}")), silent = TRUE)
    if (inherits(res, "try-error") || !fs::dir_exists(repo_path)) {
      res <- FALSE
    } else {
      # TODO: first check result send in res!
      res <- TRUE
    }
  }
  invisible(res)
}

# TODO: function to save RStudio credentials and snippets (and config)
# ...
