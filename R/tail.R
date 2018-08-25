#' Tail Process
#'
#' Beware buffering...
#'
#'
#' @export
tail_proc <- function(filename, options="-n+1") {
  pr <- processx::process$new(
    "tail",
    args = c("-F",options,filename),
    stdout = "|",
    stderr = "|"
    )
  return(pr)
}

#tail_proc("myfile.txt")$read_output_lines()
