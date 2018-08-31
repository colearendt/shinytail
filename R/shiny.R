#' @export
recursiveRead <- function(x, process, interval = 100) {
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
