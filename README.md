# Shiny Tail

Have you ever wanted to follow a log file in real-time within a Shiny app? If you are familiar with linux, you might be looking for `tail -f my.log`.

The `shinytail` package should fill this desire. It provides helpers to easily:

 - use `processx` to execute `tail -f my.log` on the server (`tailFile`)
 - stream the results into Shiny using `readStream`
 - display the results in a "stream-friendly" UI widget called `shinyTail`

We also provide a helper for writing such streams to a file during testing (`writeStream`).

## Get Started

Install the latest development version:

```
devtools::install_github("colearendt/shinytail")
```

## Examples

There is a [simple example app](./inst/examples/01-shinytail-example) in this repository.

Another use case is to use [RStudio Server
Pro](https://www.rstudio.com/products/rstudio-server-pro/) with [R console
auditing](http://docs.rstudio.com/ide/server-pro/auditing-and-monitoring.html#auditing-configuration)
along with `shinytail` for a real-time, live-coding Shiny app! This approach can
be useful for training and workshops.


## Helpful Tips

- If you are trying to use R console auditing, be sure to restart the RStudio
Server Pro service _and_ the R session after the configuration option
`audit-r-console=input` is set. Otherwise, no auditing will happen.
- Something strange happens when _writing_ a stream in a background process of a
Shiny application. We are not sure yet if this is a `callr` and `shiny`
compatibility issue or where the problem is occurring.
