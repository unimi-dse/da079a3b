#' Run App
#'
#' Runs a Graphical User Interface and load shiny app.
#'
#' @return shiny app
#'
#' @export
runapp <- function(){

  shiny::runApp(system.file("shiny/runapp", package = "commentanalysis"))

}
