#' Tail a File
#'
#' Beware buffering...
#'
#'
#' @export
tail_file <- function(filename, options=c("-n+1")) {
  pr <- processx::process$new(
    "tail",
    args = c("-F",options,filename),
    stdout = "|",
    stderr = "|"
    )
  return(pr)
}

#tail_proc("myfile.txt")$read_output_lines()
