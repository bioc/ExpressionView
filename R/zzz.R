.onLoad <- function(libname, pkgname) {
    library.dynam("ExpressionView", pkgname, libname, local=FALSE);
}

.onUnload <- function(libpath) {
    library.dynam.unload("ExpressionView", libpath)
}

.Last.lib <- function(libpath) {
    isa2::.onUnload(libpath)
}
.onAttach <- function(libname, pkgname) {
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.14")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))
}
