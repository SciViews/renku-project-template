# From SDD bookdowns, BioDataScienceX & r.snippets (except ggvis & directlabels)
# (search for 'library(', 'require(', 'package =' and ::)
install.packages(c("ade4", "anytime", "ape", "assertthat", "automap",
  "available", "backports", "base64enc", "bit", "bit64", "blob", "bookdown",
  "broom", "ca", "car", "cartography", "circular", "cli", "corrplot", "crayon",
  "curl", "data.table", "DBI", "dbplyr", "devtools", "DiagrammeR", "digest",
  "DT", "evaluate", "factoextra", "FactoMineR", "fansi", "faraway",
  "fastcluster", "fastmap", "flashClust", "fortunes", "flipdownr", "GGally",
  "gganimate", "ggdendro", "ggfortify", "ggpubr", "ggrepel", "ggridges", "ggsn",
  "ggsom", "glue", "gridExtra", "gstat", "here", "htmltools", "htmlwidgets",
  "httpuv", "httr", "ipred", "iterators", "janitor", "jsonlite", "knitr",
  "kohonen", "later", "lattice", "lintr", "lobstr", "lme4", "lmerTest",
  "lubridate", "magrittr", "mapedit", "mapview", "markdown", "memoise",
  "microbenchmark", "mime", "miniUI", "mlbench", "modelr", "mongolite",
  "mosaic", "multcomp", "naniar", "nanotime", "nparcomp", "odbc",
  "palmerpenguins", "pander", "PKI", "plotly", "pROC", "promises", "pryr",
  "purrr", "pwr", "R6", "raster", "RColorBrewer", "Rcpp", "RcppCCTZ", "readxl",
  "rgl", "remotes", "rlang", "rmarkdown", "ROCR", "rprojroot", "RSQLite", "sf",
  "sessioninfo", "shiny", "shinyjs", "shinytest", "skimr", "spData", "stars",
  "stringi", "stringr", "SuppDists", "tidyr", "tmap", "tmaptools", "TSA",
  "UsingR", "vctrs", "vegan", "vembedr", "viridis", "visdat", "withr", "xfun",
  "xtable", "yaml", "zoo"))

# For packages not on CRAN, I install from URL (note: remotes::install_github()
# or remotes::install_url() are problematic because they call GitHub API with
# limit of 60hits/hour and lead to broken RStudio when launched from JupyterHub)
install_from_url <- function(url) {
  file <- file.path("/home/rstudio", basename(url))
  on.exit(unlink(file))
  download.file(url, file)
  install.packages(file, repos = NULL)
}

# SciViews::R
#remotes::install_github("SciViews/svMisc")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/svMisc_1.2.1.tar.gz")
#remotes::install_github("SciViews/flow")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/flow_1.1.0.tar.gz")
#remotes::install_github("SciViews/data.io")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/data.io_1.3.0.tar.gz")
#remotes::install_github("SciViews/chart")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/chart_1.3.0.tar.gz")
#remotes::install_github("SciViews/exploreit")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/exploreit_0.1.0.tar.gz")
#remotes::install_github("SciViews/SciViews")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/SciViews_1.1.2.tar.gz")
#remotes::install_github("SciViews/mlearning")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/mlearning_1.0.6.tar.gz")
#remotes::install_github("phgrosjean/pastecs")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/pastecs_1.4.0.tar.gz")
#remotes::install_github("phgrosjean/aurelhy")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/aurelhy_1.0.8.tar.gz")

#remotes::install_github("rstudio/learnr@0cc765e", upgrade = "never")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/learnr_0.10.1.9014.tar.gz")
#remotes::install_github("rstudio/gradethis@e9b10ae", upgrade = "never")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/gradethis_0.2.3.9001.tar.gz")

#remotes::install_github("phgrosjean/learnitdown")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/learnitdown_1.3.2.tar.gz")

# More R Markdown formats
install.packages(c("distill", "flexdashboard", "pagedown", "posterdown",
  "rticles", "xaringan"))

# More RStudio Addins
install.packages(c("blogdown", "convertr", "covr", "esquisse", "ggExtra",
  "golem", "pins", "pkgdown", "questionr", "reprex", "styler", "todor"))

# More useful package not used in the courses
install.packages(c("abind", "agricolae", "akima", "archivist",
  "archivist.github", "arkdb", "babynames", "bench", "bmp", "callr",
  "captioner", "corrr", "datapackage.r", "datasauRus", "digest", "distr6",
  "dtplyr", "e1071", "egg", "emayili", "ensurer", "exams", "fastai", "fauxpas",
  "fda", "feasts", "filehash", "filehashSQLite", "flashlight", "flextable",
  "fs", "fst", "ftExtra", "future", "future.apply", "future.callr", "generics",
  "gert", "ggconf", "ggcorrplot", "ggdist", "ggfocus", "ggforce", "ggimage",
  "ggiraph", "gglm", "ggmosaic", "ggRandomForests", "ggsignif", "ggtext",
  "ggVennDiagram", "ggwordcloud", "gistr", "gitcreds", "goodpractice",
  "googlesheets4", "gt", "haven", "hexSticker", "hms", "import", "infer",
  "inline", "ipred", "ivreg", "jpeg", "jsonlite", "kableExtra", "knitcitations",
  "latex2exp", "leafem", "leaflet", "leaps", "lifecycle", "listcomp", "logger",
  "modelsummary", "moderndive", "needs", "nortest", "nycflights13",
  "officedown", "officer", "opencpu", "pagedown", "patchwork", "piggyback",
  "plumber", "png", "prettyunits", "printr", "quantreg", "R62S3", "ranger",
  "RANN", "RcppExamples", "Rd2roxygen", "recipes", "renv", "reticulate",
  "rpart.plot", "rvest", "rvg", "seasonal", "shinybusy", "shinydashboard",
  "shinylogs", "shinytoastr", "smotefamily", "spelling", "stargazer",
  "stlplus", "survminer", "svDialogs", "svGUI", "svSweave", "sys", "tab",
  "tables", "tableschema.r", "tactile", "targets", "tester", "texreg", "tiff",
  "titanic", "varSelRF", "vip", "vroom", "writexl", "xgboost", "xts",
  "zeallot", "zip", "ztable"))

# BioDataScience|1|2|3
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/BioDataScience.tar.gz")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/BioDataScience1.tar.gz")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/BioDataScience2.tar.gz")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/BioDataScience3.tar.gz")

