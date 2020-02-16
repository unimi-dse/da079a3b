#' Filter reviews
#'
#' @param data Reactive function brings back all the Comments with selected rating
#'
#' @return Brings back all the comments with selected rating
#' @export
#'
#' @examples
filter_reviews <-  function (data) {shiny::reactive({ dplyr::reviws %>%
    filter(reviws$Score %in% input$Ratings)})
}
