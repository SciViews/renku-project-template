setHook("rstudio.sessionInit", function(newSession) {
  if (newSession) {
    (function() {
      # Get the root directory of the Renku/GitLab project
      renku_get_dir <- function() {
        if (fs::file_exists("~/.config/renkudir")) {
          readLines("~/.config/renkudir")[1]
        } else {
          # Use reasonable default value
          "~/mybox"
        }
      }

      # Restore a GitHub repository
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

      # Sign in user in BioDataScience
      sign_in_bds <- function(user_data) {
        # Split and decode parts of the user_data
        parts <- strsplit(user_data, "&", fixed = TRUE)[[1]]
        subparts <- strsplit(parts, "=", fixed = TRUE)
        values <- lapply(subparts, function(x) utils::URLdecode(x[2]))
        names(values) <- sapply(subparts, function(x) utils::URLdecode(x[1]))

        # Set git user name according to login passed by the URL
        sign_in_pkg <- values$sign_in
        if (!is.null(sign_in_pkg)) {
          # We check very silently that sign_in() is available, or we do nothing
          sign_me_in <- try(eval(parse(text = paste0(sign_in_pkg, "::sign_in"))),
            silent = TRUE)
          if (!inherits(sign_me_in, "try-error") &&
              class(sign_me_in) == "function") {
            user_info <- c("login", "email", "displayname", "firstname",
              "lastname", "iemail", "iid", "ifirstname", "ilastname",
              "institution", "icourse", "iurl", "iref", "ictitle")
            user_info <- user_info[user_info %in% names(values)]
            user_info <- values[user_info]
            user_info <- lapply(user_info,
              function(x) utils::URLencode(as.character(x), reserved = TRUE))
            user_info <- paste(names(user_info), user_info,
              sep = "=", collapse = "&")
            res <- try(sign_me_in(user_info), silent = TRUE)
            if (inherits(res, "try-error")) {
              cat("#> Error when signing in user with ", sign_in_pkg, "\n")
            }
          }
        }
      }

      # Check the configuration is fine
      check_config <- function() {
        ok <- TRUE

        # Check if the user is registered
        cat("- Checking user data...\n")
        user_data <- BioDataScience::sign_in()
        if (is.null(user_data)) {
          message("PROBLEM: no user data!")
          ok <- FALSE
        } else if (!is.list(user_data)) {
          message("PROBLEM: wrong user data (not a list, but a ",
            class(user_data)[1], ")")
          ok <- FALSE
        } else {
          # Check that all required fields are present in user data
          required_items <- c("login", "email", "iemail", "iid", "ifirstname",
            "ilastname", "institution", "icourse", "iurl", "iref", "ictitle")
          are_there <- required_items %in% names(user_data)
          if (any(!are_there)) {
            message("PROBLEM: missing data: ",
              paste(required_items[!are_there], collapse = ", "))
            ok <- FALSE
          }
        }

        # Check the course user matches the git user and committer
        cat("- Check git configuration...\n")
        # We need GIT_AUTHOR_NAME and GIT_COMMITTER_NAME, and they must be the same
        author <- Sys.getenv("GIT_AUTHOR_NAME")
        if (author == "") {
          message("PROBLEM: no git author name")
          ok <- FALSE
        } else {
          committer <- Sys.getenv("GIT_COMMITTER_NAME")
          if (committer != author) {
            message("PROBLEM: committer (", committer, ") is not the same as author (",
              author, ")")
            ok <- FALSE
          }
          # Author must match ifirstname and ilastname of the user
          if (!is.null(user_data)) {
            author2 <- paste(user_data$ifirstname, user_data$ilastname)
            if (tolower(author2) != tolower(author)) {
              message("PROBLEM: git author (", author, ") does not match course user (",
                author2, ")")
              ok <- FALSE
            }
          }
        }
        # Check there is an email address for the git user
        email <- Sys.getenv("EMAIL")
        if (email == "") {
          message("PROBLEM: no git email address")
          ok <- FALSE
        } else {
          # Check it matches user_data email or iemail
          if (!is.null(user_data)) {
            if (tolower(email) != tolower(user_data$email) &&
                tolower(email) != tolower(user_data$iemail)) {
              message("PROBLEM: git user email (", email,
                ") does not match Wordpress or UMONS user email")
              ok <- FALSE
            }
          }
        }

        # Check the GitHub token is valid
        if (gh::gh_token() == "") {
          message("PROBLEM: no GitHub Personal Access Token found")
          ok <- FALSE
        } else if (gh::gh_rate_limit()$limit < 5000) {
          message(
            "PROBLEM: the GitHub Personal Access Token is not valid (any more)")
          ok <- FALSE
        }

        # Verify course configuration
        cat("- Check course configuration...\n")
        # Check we have a password
        if (Sys.getenv("BioDataScience-Course_2021") == "") {
          message("PROBLEM: no password recorded for the course")
          ok <- FALSE
          # This function configures the system to access the MongoDB database
          # and check it works
          res <- BioDataScience::config()
          if (!res) {
            message("PROBLEM: cannot access the database to record exercises")
            print(res)
            ok <- FALSE
          }
        }

        # Return the result
        return(invisible(ok))
      }

      # Display a welcome message
      svbox_welcome <- function(clear = TRUE) {
        setwd("~/github")
        if (isTRUE(clear))
          invisible(rstudioapi::executeCommand("consoleClear", quiet = TRUE))
        # Move to ~/github in the Files tab and clean up the global environment
        later::later(function() {
          invisible(rstudioapi::executeCommand("goToWorkingDir", quiet = TRUE))
          res <- try(rm(renku_restore, envir = .GlobalEnv), silent = TRUE)
          res <- try(rm(renku_save, envir = .GlobalEnv), silent = TRUE)
        }, 1)
        invisible(rstudioapi::executeCommand("activateTutorial", quiet = TRUE))
        #Sys.sleep(0.5)
        #invisible(rstudioapi::executeCommand("layoutEndZoom", quiet = TRUE))
        #Sys.sleep(0.5)
        #invisible(rstudioapi::executeCommand("layoutZoomConsole", quiet = TRUE))
        cat("\n")
        cli::cli_rule("SciViews Box 2021 pour Renku - BioDataScience 2021-2022")
        cat("\n")
        cat(R.version.string, "- `licence()` pour plus de détails.\n")
        cat("\nVérifiez votre identité :\n\n")
        message("- Utilisateur : ", Sys.getenv("GIT_AUTHOR_NAME"), " (", Sys.getenv("EMAIL"), ")")
        ictitle <- BioDataScience::sign_in()$ictitle
        if (is.null(ictitle)) {
          message("- Cours : INCONNU !!!")
        } else {
          message("- Cours : ", ictitle)
        }
        cat("\nSi ces données sont incorrectes, contactez directement vos enseignants\n")
        cat("par mail (", cli::col_blue("sdd@sciviews.org"), "). Ne travaillez jamais dans un environnement\n", sep = "")
        cat("qui n'est pas le votre, ou qui renseigne votre identité de manière\n")
        cat("incorrecte ou incomplète !\n\n")
        cli::cli_rule()
        cat("Créez un nouveau projet ou ouvrez-en un dans le menu en haut à droite en\n")
        cat("dessous de 'rstudio' pour travailler. N'éditez pas vos fichiers directement\n")
        cat("dans les dossiers '{{ __sanitized_project_name__ }}' ou 'work/{{ __sanitized_project_name__ }}', mais travaillez toujours dans un\n")
        cat("projet GitHub pour le cours de Science des Données, et n'oubliez pas vos\n")
        cat("\"commits\" et \"pushes\" réguliers et au moins en fin de session, toujours !\n")
        cat("En cas d'erreur 403, rafraichissez la page dans le browser pour continuer.\n")
        cat("\nVoyez le cours en ligne à", cli::col_blue("https://wp.sciviews.org"), "pour plus d'infos.\n\n")
      }

      # Get Renku project root directory
      renku_dir <- renku_get_dir()
      config_dir <- fs::path(renku_dir, ".config")

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

      # If the /github directory exists, then the session is already initialized
      if (fs::dir_exists("~/github"))
        return(invisible(session_init))

      # Configure for the first time and collect user data
      # Create the github directory
      fs::dir_create("~/github")

      # Sign_in now: if there is a .config/user_data file,
      # sign in the user for BioDataScience
      user_data_file <- fs::path(config_dir, "user_data")
      if (fs::file_exists(user_data_file)) {
        user_data_string <- readLines(user_data_file, warn = FALSE)[1]
        #user_data_string <- RCurl::base64Decode(trimws(user_data_string))
        user_data_string <- trimws(user_data_string)
        sign_in_bds(user_data_string)
      }

      # Restore GitHub projects
      paths_file <- fs::path(config_dir, "project_paths")
      if (fs::file_exists(paths_file)) {
        # Restore GitHub repositories
        paths_data <- readLines(paths_file, warn = FALSE)
        for (path in paths_data) {
          # Must be dir|remote_url
          if (grepl("|", path)) {
            path_data <- strsplit(trimws(path), "|", fixed = TRUE)[[1]]
            github_restore(url = path_data[2], dir = path_data[1])
          }
        }
      }

      # Restore MRU
      mru_file <- fs::path(config_dir, "project_mru")
      if (fs::file_exists(mru_file)) {
        # Restore RStudio MRU
        fs::file_copy(mru_file, "~/.rstudio/monitored/lists/project_mru",
          overwrite = TRUE)
      }

      # Move to last MRU
      # TODO...

      # Check everything is OK and display the welcome message
      res <- check_config()
      svbox_welcome(res)

      return(invisible(res))
    })()
  }
}, action = "append")

svMisc::assign_temp("renku_save", function(renku_dir = NULL) {
  # Get the root directory of the Renku/GitLab project
  renku_get_dir <- function() {
    if (fs::file_exists("~/.config/renkudir")) {
      trimws(readLines("~/.config/renkudir")[1])
    } else {
      # Use reasonable default value
      "~/mybox"
    }
  }

  # The Renku/GitLab root directory
  if (is.null(renku_dir))
    renku_dir <- renku_get_dir()

  # The directory where to place the configuration
  config_dir <- fs::path(renku_dir, ".config")
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
  #system('git add .')
  #system('git commit -m "Save RStudio configuration"')
  #system('git push')
})
