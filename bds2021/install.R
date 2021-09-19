# From SDD bookdowns, BioDataScienceX & r.snippets (except ggvis & directlabels)
# (search for 'library(', 'require(', 'package =' and ::)
options(timeout = 600)
Ncpus <- parallel::detectCores(logical = FALSE)

install.packages(c("ade4", "anytime", "ape", "assertthat", "attachment",
  "automap", "available", "backports", "base64enc", "BiocManager", "bit",
  "bit64", "blob", "bookdown", "boot", "broom", "broom.mixed", "ca", "car",
  "circular", "cli", "corrplot", "crayon", "curl", "data.table", "DBI",
  "dbplyr", "devtools", "DiagrammeR", "digest", "DT", "evaluate", "factoextra",
  "FactoMineR", "fansi", "faraway", "fastcluster", "fastmap", "flashClust",
  "fortunes", "flipdownr", "gdtools", "GGally", "gganimate", "ggdendro",
  "ggfortify", "ggpubr", "ggrepel", "ggridges", "ggsn", "ggsom", "glue",
  "gridExtra", "gstat", "here", "htmltools", "htmlwidgets", "httpuv", "httr",
  "ipred", "iterators", "janitor", "jsonlite", "knitr", "kohonen", "later",
  "lattice", "lintr", "lobstr", "lme4", "lmerTest", "lubridate", "magrittr",
  "mapedit","maps", "mapsf", "mapview", "markdown", "memoise", "microbenchmark",
  "mime", "miniUI", "mlbench", "modelr", "mongolite", "mosaic", "multcomp",
  "naniar", "nanotime", "nparcomp", "odbc", "palmerpenguins", "pander", "PKI",
  "plotly", "pROC", "promises", "pryr", "purrr", "pwr", "R6", "randomForest",
  "raster", "RColorBrewer", "Rcpp", "RcppCCTZ", "readxl", "rgl", "remotes",
  "rlang", "rmarkdown", "ROCR", "rpart", "rpart.plot", "rprojroot", "RSQLite",
  "sf", "sessioninfo", "shiny", "shinyjs", "shinytest", "skimr", "spData",
  "stars", "stringi", "stringr", "SuppDists", "svglite", "tidyr", "tmap",
  "tmaptools", "TSA", "UsingR", "vctrs", "vegan", "vembedr", "viridis",
  "visdat", "withr", "xfun", "xtable", "yaml", "zoo"), Ncpus = Ncpus)

#install.packages("BiocManager")
BiocManager::install(c("graph", "ComplexHeatmap", "Rgraphviz",
  "RDRToolbox"), update = FALSE, ask = FALSE)

# Dependencies for packages installed with install_from_url()
install.packages(c("getPass", "ggplotify", "magick", "proto", "randomForest",
  "renv", "shinylogs", "shinytoastr", "tsibble"), Ncpus = Ncpus)

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
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/svMisc_1.2.1.tar.gz")
#remotes::install_github("SciViews/flow")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/flow_1.1.0.tar.gz")
#remotes::install_github("SciViews/data.io")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/data.io_1.3.0.tar.gz")
#remotes::install_github("SciViews/chart")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/chart_1.3.0.tar.gz")
#remotes::install_github("SciViews/exploreit")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/exploreit_0.1.0.tar.gz")
#remotes::install_github("SciViews/SciViews")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/SciViews_1.1.2.tar.gz")
#remotes::install_github("SciViews/mlearning")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/mlearning_1.0.6.tar.gz")
#remotes::install_github("phgrosjean/pastecs")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/pastecs_1.4.0.tar.gz")
#remotes::install_github("phgrosjean/aurelhy")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/aurelhy_1.0.8.tar.gz")

#remotes::install_github("rstudio/learnr@07473563", upgrade = "never")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/learnr_0.10.1.9008.tar.gz")
#remotes::install_github("rstudio/gradethis@6dfaecf", upgrade = "never")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/gradethis_0.2.3.9000.tar.gz")

#remotes::install_github("phgrosjean/learnitdown")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/learnitdown_1.3.3.tar.gz")

# More R Markdown formats
install.packages(c("distill", "flexdashboard", "pagedown", "posterdown",
  "rticles", "xaringan"), Ncpus = Ncpus)

# More RStudio Addins
install.packages(c("blogdown", "convertr", "covr", "esquisse", "ggExtra",
  "golem", "pins", "pkgdown", "questionr", "reprex", "styler", "todor"),
  Ncpus = Ncpus)

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
  "rvest", "rvg", "seasonal", "shinybusy", "shinydashboard", "shinylogs",
  "shinytoastr", "smotefamily", "spelling", "stargazer", "stlplus", "survminer",
  "svDialogs", "svGUI", "svSweave", "sys", "tab", "tables", "tableschema.r",
  "tactile", "targets", "tester", "texreg", "tiff", "titanic", "varSelRF",
  "vip", "vroom", "writexl", "xgboost", "xts", "zeallot", "zip", "ztable"),
  Ncpus = Ncpus)

# BioDataScience|1|2|3
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/BioDataScience.tar.gz")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/BioDataScience1.tar.gz")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/BioDataScience2.tar.gz")
install_from_url("https://filedn.com/lzGVgfOGxb6mHFQcRn9ueUb/svbox2021/files/BioDataScience3.tar.gz")
