#' Delete at position(s)
#' 
#' @export
#' @param x vector/list
#' @param at integer/numeric
#' @examples
#' x <- c(1, 2, 3, 4, 5, 0)
#' delete_at(x, 5)
#' delete_at(x, 4:5)
delete_at <- function(x, y) {
  x <- setdiff(x, y)
  return(x)
}
