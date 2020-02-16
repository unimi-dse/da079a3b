server <- function(input, output) {
#cannot export from magriitr and dplyr from namespace,not working,
  require(dplyr)
  require(magrittr)
  filter_Reviews <- reactive({ commentanalysis::reviws %>%
      filter(reviws$Score %in% input$Ratings)


  })




  output$mtble <- DT::renderDataTable({
    DT::datatable(data = filter_Reviews() , options = list(pageLength = 10),
                  rownames = FALSE, class = 'display', escape = FALSE)

  })





  output$ratingstohelp <- shiny::renderPlot({  withProgress(message = 'Data is Very Big,Loading Data,Making plot 1', value = 0, {
    n <- 200

    for (i in 1:n) {

      shiny::incProgress(1/n, detail = paste("Please,wait Drawing", i))

      Sys.sleep(0.1)
    }

    ggplot2::ggplot(commentanalysis::dat , ggplot2::aes(x=commentanalysis::dat$x , y=commentanalysis::dat$y)) +

      ggplot2::geom_bar(stat="identity",fill="green",color="green") +
      ggplot2::labs(x = "Comment Ratings", y = "Helpful Comments")

  })
  })



  output$ratingstonohelp <-  shiny::renderPlot({  withProgress(message = 'Data is Very Big,Loading Data,Making plot 2', value = 0, {
    n <-200

    for (i in 1:n) {

      shiny::incProgress(1/n, detail = paste("Please Wait,Drawing", i))

      Sys.sleep(0.1)
    }

    ggplot2::ggplot(commentanalysis::dat1 , ggplot2::aes(x=commentanalysis::dat1$x, y=commentanalysis::dat1$y )) +

      ggplot2::geom_bar(stat="identity",fill="red",color="red") +
      ggplot2::labs(x = "Comment Ratings", y = "Helpful Comments")

  })
  })






}
