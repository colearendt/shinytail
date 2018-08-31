library(shiny)
library(shinyCookie)

logfile <- "myfile.txt"

#' Define server logic required to generate a simple shinyTail example
#' @author Cole Arendt \email{cole@@rstudio.com}
shinyServer(function(input, output, session) {

  # need to find a way to make presentation better!
  # https://stackoverflow.com/questions/18614301/keep-overflow-div-scrolled-to-bottom-unless-user-scrolls-up

  all_data <- reactiveVal(value = NULL, label = "data")
  pr <- tail_file(logfile)
  observe({
    invalidateLater(100);
    all_data(c(all_data(), pr$read_output_lines()))
  })
  # render file
  output$shinytail <- renderText({
    paste(all_data(), collapse = "\n")
  })
})
