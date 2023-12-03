.onAttach <- function(libname, pkgname) {
  packageStartupMessage(
    paste0(
      "findtb contains open source data.\n",
      "View the terms of the license here: [insert link]"
    )
  )
}