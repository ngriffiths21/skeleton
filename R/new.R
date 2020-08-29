#' Create a new project
#'
#' From a newly created project, this function sets up a skeleton for a data
#' analysis project in R. The skeleton includes directories for data, code, and
#' results; a readme; a basic drake plan; a lab notebook using bookdown; and an
#' R Markdown document for tables and figures.
#'
#' @export
use_skeleton <- function () {
  usethis::use_directory("data")
  usethis::use_directory("data/raw")
  usethis::use_directory("data/export")
  usethis::use_directory("R")
  usethis::use_directory("notebook")
  usethis::use_directory("figures")

  usethis::use_template("_drake.R", package = "skeleton")
  usethis::use_template("README.md", package = "skeleton")
  usethis::use_template("plan.R", save_as = "R/plan.R", package = "skeleton")
  usethis::use_template("packages.R", save_as = "R/packages.R", package = "skeleton")
  usethis::use_template("index.Rmd", save_as = "notebook/index.Rmd", package = "skeleton")
  usethis::use_template("_bookdown.yml", save_as = "notebook/_bookdown.yml", package = "skeleton")
  usethis::use_template("paper-figures.Rmd", save_as = "figures/paper-figures.Rmd", package = "skeleton")

  if (!file.exists(usethis::proj_path("renv.lock"))) {
    renv::init()
    usethis::ui_done("Initialized renv library")
  } else {
    renv::hydrate()
    renv::snapshot()
    usethis::ui_done("Updated renv library")
  }

  usethis::use_git_ignore(c("data/", "*.html", "*.csv", "*.pdf",
                            "notebook/notebook_assets"))

  invisible(TRUE)
}
