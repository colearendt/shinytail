#' @export
readStream <- function(x, process, interval = 100) {
  invalidateLater(interval);

  if (inherits(x, "reactiveVal")) {
    # modify in place
    x(c(x(), process$read_output_lines()))
    return(invisible())
  } else {
    # return updated value
    return(c(x, process$read_output_lines()))
  }
}

#' @export
shinyTail <- function(outputId, placeholder = FALSE) {
  div(tags$head(
    tags$style(
    paste0("#", outputId, "{
      color:red;
      font-size:12px;
      font-style:italic;
      overflow-y:scroll;
      max-height: 500px;
      background: ghostwhite;
    }")
    )
  ),
  shiny::verbatimTextOutput(
    outputId = outputId,
    placeholder = placeholder
    )
  )
}
