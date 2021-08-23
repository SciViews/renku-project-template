github_restore("https://github.com/BioDataScience-Course/sdd_issues.git", "sdd_issues")
github_restore("https://github.com/BioDataScience-Course/C04Ga_20M_ts-phgrosjean.git", "C04Ga_20M_ts-phgrosjean")
github_restore("https://github.com/BioDataScience-Course/A05Ga_20M_transformation-phgrosjean.git", "A05Ga_20M_transformation-phgrosjean")

rm(github_restore)

if (isTRUE(session_init)) {
  fs::file_delete("~/.rstudio/monitored/lists/project_mru")
  rstudioapi::openProject("~/github/sdd_issues")
}
rm(session_init)
