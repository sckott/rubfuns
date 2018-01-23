#' Move element to front or back of a list/vector
#' 
#' @export
#' @param x (list/vector) a list or vector
#' @param y (integer) a single integer. treated as a sequence of 
#' numbers up to that number, starting at 1 (since R uses 1 based
#' indexing)
#' @section `shift`: 
#' Removes the first element of `x` and returns `x`. Returns `NULL` 
#' if the list/vector is empty.
#' 
#' If a number `y` is given, returns an array of the first n elements 
#' (or less) just like array.slice!(0, n) does. With ary containing 
#' only the remainder elements, not including what was shifted to 
#' new_ary
#' 
#' @section `unshift`:
#' Prepends objects to the front of self, moving other elements 
#' upwards
#' 
#' @examples
#' # shift
#' x <- c(1, 2, 3)
#' x %>% shift
#' x %>% shift(1)
#' 
#' # unshift
#' x <- c(1, 2, 3)
#' x %>% unshift(4)
shift <- function(x, y = NULL) {
  if (is.null(y)) return(x[-1])
  stopifnot(length(y) == 1)
  stopifnot(y > 0)
  remove <- seq_len(y)
  return(x[-remove])
}
 
#' @export
#' @rdname shift
unshift <- function(x, y) c(y, x)
