library(shiny)
library(shinytail)

#' Define UI for application that demonstrates a simple shinyTail example
#' @author Cole Arendt \email{cole@@rstudio.com}
shinyUI(function(req) {fluidPage(
    titlePanel("Shiny Tail"),

    sidebarLayout(
        sidebarPanel(
            tags$p("A file will be 'tailed' into Shiny")
        ),

        mainPanel(
    tags$head(tags$style("#shinytail{color:red; font-size:12px; font-style:italic;
overflow-y:scroll; max-height: 500px; background: ghostwhite;}")),
            shiny::verbatimTextOutput("shinytail")
        )
    )
)})
