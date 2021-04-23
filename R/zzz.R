.onAttach <- function(libname, pkgname){
  if(getOption("exit_promise")){
    packageStartupMessage("Now `exit` and `exit()` will quit!")
  } else {
    packageStartupMessage("There's already an object called `exit` in the global environment, only `exit()` will quit!")
  }
}

.onLoad <- function(libname, pkgname){
  options(exit_promise  = !exists("exit", .GlobalEnv))
  if(getOption("exit_promise")){
    print("ehh")
    delayedAssign("exit", quit(), .GlobalEnv, .GlobalEnv)
  }
}

.onDetach <- function(libname, pkgname){
  if(getOption("exit_promise")){
    packageStartupMessage("Typing `exit` will not quit anymore.")
  }
}

.onUnload <- function(libname, pkgname){
  if(getOption("exit_promise")){
    remove("exit", .GlobalEnv)
  }
  .Options$exit_promise <- NULL
}

