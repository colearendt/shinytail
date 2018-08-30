library(shiny)
library(shinyCookie)

#' Define UI for application that demonstrates a simple shinyTail example
#' @author Cole Arendt \email{cole@@rstudio.com}
shinyUI(function(req) {fluidPage(
    titlePanel("Shiny Tail"),

    sidebarLayout(
        sidebarPanel(
        ),

        mainPanel(
            shiny::verbatimTextOutput("shinytail")
        )
    )
)})
