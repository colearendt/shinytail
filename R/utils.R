
write_to_file <- function(filename, sleep = 1, iterations = 1000) {
 i <- 0
 while (i < iterations) {
   i <- i + 1
   print(paste0("Iteration ", i))
   cat(paste0("Record ", i, "\n"), file = filename, append = TRUE)
   Sys.sleep(sleep)
 }
}
