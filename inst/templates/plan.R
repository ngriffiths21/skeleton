plan <- drake_plan(
  lab_notebook = {
    file_in("notebook/")
    with_dir("notebook/", {
      render_book("index.Rmd")
      unlink("search_index.json")
    })
  },
  figures = {
    render(knitr_in("figures/paper-figures.Rmd"))
    file_out("figures/paper-figures.html")
  }
)
