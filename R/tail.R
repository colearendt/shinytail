#' @export
tail_proc <- function(filename) {
  pr <- processx::process$new(
    "tail",
    args = c("-Fn+1",filename),
    stdout = "|",
    stderr = "|"
    )
  return(pr)
}

#' @export
read_output <- function(process) {
  processx::conn_read_lines(process$get_output_connection())
}
