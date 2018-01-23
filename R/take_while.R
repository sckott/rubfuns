#' Take while fun evaluates to TRUE
#' 
#' @export
#' @param x (list/vector) a list or vector
#' @param fun (function) any function - has to yield a boolean
#' @examples
#' # take while
#' x <- c(1, 2, 3, 4, 5, 0)
#' x %>% take_while(function(z) z < 3)
#' x <- c(1, 2, 3, 4, 9, -1)
#' x %>% take_while(function(z) z < 3)
#' 
#' # drop while
#' x <- c(1, 2, 3, 4, 5, 0)
#' x %>% drop_while(function(z) z < 3)
#' x <- c(1, 2, 3, 4, 9, -1)
#' x %>% drop_while(function(z) z < 3)
take_while <- function(x, fun) {
  out <- rep(NA, times = length(x))
  for (i in seq_along(x)) {
    if (fun(x[i])) out[[i]] <- x[i]
  }
  return(no_na(out))
}

#' @export
#' @rdname take_while
drop_while <- function(x, fun) {
  out <- rep(NA, times = length(x))
  for (i in seq_along(x)) {
    if (!fun(x[i])) out[[i]] <- x[i]
  }
  return(no_na(out))
}

no_na <- function(x) Filter(function(z) !is.na(z), x)

# take_while(VALUE ary){
#     long i;
#     RETURN_ENUMERATOR(ary, 0, 0);
#     for (i = 0; i < RARRAY_LEN(ary); i++) {
#     if (!RTEST(rb_yield(RARRAY_AREF(ary, i)))) break;
#     }
#     return rb_ary_take(ary, LONG2FIX(i));
# }
