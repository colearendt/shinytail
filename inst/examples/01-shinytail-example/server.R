library(shiny)
library(shinyCookie)

#' Define server logic required to generate a simple shinyTail example
#' @author Cole Arendt \email{cole@@rstudio.com}
shinyServer(function(input, output, session) {


  # render value of cookies
  output$shinytail <- renderText({
  })
})
