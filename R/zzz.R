## messages with start and end

.onAttach <- function(...){
  ## Retrieve Year Information
  date <- date()
  x <- regexpr("[0-9]{4}", date)
  this.year <- substr(date, x[1], x[1] + attr(x, "match.length") - 1)
  
  # Retrieve Current Version
  this.version = packageVersion("SAMCpack")
  
  ## Print on Screen
  packageStartupMessage("** SAMCpack")
  packageStartupMessage("**  - Stochastic Approximation Monte Carlo Sampler and Methods")
  packageStartupMessage("** Version    : ",this.version," (",this.year,")",sep="")
  packageStartupMessage("** Maintainer : Kisung You (kyou@nd.edu)")
  packageStartupMessage("**")
  packageStartupMessage("** Please share any bugs or suggestions to the maintainer.")
}

.onUnload <- function(libpath) {
  library.dynam.unload("SAMCpack", libpath)
}