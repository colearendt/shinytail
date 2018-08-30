#' Tail a File
#'
#' Beware buffering...
#'
#' @param filename The file that will be tailed
#' @param options A character vector of options to be passed to the tail command
#' @return A processx::process object
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
