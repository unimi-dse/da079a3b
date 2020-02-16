ui <- fluidPage(

  tags$head(
    tags$style(
      HTML(".shiny-notification {
              height: 100px;
              width: 800px;
              position:fixed;
              top: calc(50% - 50px);;
              left: calc(50% - 400px);;
            }
           "
      )
    )
  ),
  shiny::mainPanel(shiny::tabsetPanel(type="tabs",

                        shiny::tabPanel("Data",selectInput(
                          inputId = "Ratings",
                          label = "Ratings filter",
                          choices = c(1,2,3,4,5),
                          multiple = FALSE ,),DT::dataTableOutput(outputId = "mtble")),


                        shiny::tabPanel("Ratings  to Helpful comments Graph",
                                 plotOutput(outputId = "ratingstohelp")),


                        shiny::tabPanel("Ratings to Non Helpful Graph", plotOutput("ratingstonohelp")) )


  )
)
