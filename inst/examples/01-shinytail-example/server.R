library(shiny)
library(shinytail)


logfile <- "myfile.txt"

#' Define server logic required to generate a simple shinyTail example
#' @author Cole Arendt \email{cole@@rstudio.com}
shinyServer(function(input, output, session) {

  all_data <- reactiveVal(value = NULL, label = "data")
  pr <- tailFile(logfile)

  observe({
    readStream(all_data, pr)
  })

  # render file
  output$shinytail <- renderText({
    paste(all_data(), collapse = "\n")
  })
})
