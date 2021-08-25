# Example projects to restore
github_restore("https://github.com/BioDataScience-Course/sdd_issues.git", "sdd_issues")
github_restore("https://github.com/BioDataScience-Course/C04Ga_20M_ts-phgrosjean.git", "C04Ga_20M_ts-phgrosjean")
github_restore("https://github.com/BioDataScience-Course/A05Ga_20M_transformation-phgrosjean.git", "A05Ga_20M_transformation-phgrosjean")

rm(github_restore)

if (isTRUE(session_init)) {
  rm(session_init)

  fs::file_delete("~/.rstudio/monitored/lists/project_mru")

  svbox_welcome <- function() {
    setwd("~/github")
    invisible(rstudioapi::executeCommand("consoleClear", quiet = TRUE))
    invisible(rstudioapi::executeCommand("goToWorkingDir", quiet = TRUE))
    invisible(rstudioapi::executeCommand("activateTutorial", quiet = TRUE))
    Sys.sleep(0.5)
    invisible(rstudioapi::executeCommand("layoutEndZoom", quiet = TRUE))
    Sys.sleep(0.5)
    invisible(rstudioapi::executeCommand("layoutZoomConsole", quiet = TRUE))
    cat("\n")
    cli::cli_rule("SciViews Box 2021 pour Renku - BioDataScience 2021-2022")
    cat("\n")
    cat(R.version.string, "- `licence()` pour plus de détails.\n")
    cat("\nVérifiez votre identité :\n\n")
    message("- Utilisateur : ", Sys.getenv("GIT_AUTHOR_NAME"), " (", Sys.getenv("EMAIL"), ")")
    message("- Committeur :  ", Sys.getenv("GIT_COMMITTER_NAME"), " (GitHub PAT valide)")
    message("- Cours : Science des Données I: visualisation (UMONS)")
    cat("\nSi ces données sont incorrectes, contactez directement vos enseignants\n")
    cat("par mail (", cli::col_blue("sdd@sciviews.org"), "). Ne travaillez jamais dans un environnement\n", sep = "")
    cat("qui n'est pas le votre, ou qui renseigne votre identité de manière\n")
    cat("incorrecte ou incomplète !\n\n")
    cli::cli_rule()
    cat("Créez un nouveau projet ou ouvrez-en un dans le menu en haut à droite en\n")
    cat("dessous de 'rstudio' pour travailler dans votre box. Si elle est affichée\n")
    cat("dans un encadré dans Renku, vous devez absolument la basculer pleine page\n")
    cat("en cliquant à droite du bouton 'Stop' sur les 3 points et en sélectionnant\n")
    cat("'Open in new tab'. Ne travaillez pas dans l'encadré directement !\n")
    cat("En cas d'erreur 403, rafraichissez la page dans le browser pour continuer.\n")
    cat("\nVoyez le cours en ligne à", cli::col_blue("https://wp.sciviews.org"), "pour plus d'infos.\n\n")
  }
  svbox_welcome(); rm(svbox_welcome)

} else {
  rm(session_init)
}
