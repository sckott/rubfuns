#' Take while fun evaluates to TRUE
#' 
#' @export
#' @param x xxxxx
#' @param fun any function - has to yield a boolean
#' @examples
#' # a = [1, 2, 3, 4, 5, 0]
#' # a.take_while {|i| i < 3 }   #=> [1, 2]
#' 
#' x <- c(1, 2, 3, 4, 5, 0)
#' take_while(x, function(z) z < 3)
#' 
#' x <- c(1, 2, 3, 4, 9, -1)
#' take_while(x, function(z) z < 3)
#' 
#' x <- c(1, 2, 3, 4, 9)
#' take_while(x, function(z) z < 3) %>% sqrt
take_while <- function(x, fun) {
  out <- rep(NA, times = length(x))
  for (i in seq_along(x)) {
    if (fun(x[i])) out[[i]] <- x[i]
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
