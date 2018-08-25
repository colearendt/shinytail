

simple_tail <- function(filename) {
  pr <- processx::process$new(
    "tail",
    args = c("-f",filename),
    stdout = "|",
    stderr = "|"
    )
  po <- pr$get_output_connection()
  processx::conn_read_lines(po)
  invisible(po)
}
