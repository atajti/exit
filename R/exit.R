#' Exit from R
#'
#' Exit from R by typing `exit` or `exit()`
#' @param ... Arguments passed to `quit()`
#' @export
#' @examples
#' \donttest{exit("no", 0)}
 
exit <- function(...){
	quit(...)
}