.onLoad <- function(libname, pkgname){
    exit_ns <- asNamespace(pkgname)
    delayedAssign("exit", eval(quote(quit("no"))),
              eval.env = exit_ns,
              assign.env = exit_ns)
    namespaceExport(exit_ns, "exit")
}