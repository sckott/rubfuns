#' Delete if fun evaluates to TRUE
#' 
#' @export
#' @param x list/vector
#' @param fun any function - has to yield a boolean
#' @examples
#' x <- c(1, 2, 3, 4, 5, 0)
#' delete_if(x, function(z) z > 2)
#' delete_if(x, function(z) z < 4)
delete_if <- function(x, fun) {
  out <- rep(NA, times = length(x))
  for (i in seq_along(x)) {
    if (!fun(x[i])) out[i] <- x[i]
  }
  return(no_na(out))
}
