rubfuns
=======



[![Build Status](https://travis-ci.org/ropenscilabs/rubfuns.svg?branch=master)](https://travis-ci.org/ropenscilabs/rubfuns)


`rubfuns` is a bunch of fxns inspired from Ruby

## Installation

Development version


```r
install.packages("devtools")
devtools::install_github("ropenscilabs/rubfuns")
```


```r
library('rubfuns')
```

Package API:

 - take_while
 - shift
 - delete_at
 - unshift
 - drop_while
 - delete_if

## examples

`take_while`


```r
x <- c(1, 2, 3, 4, 5, 0)
take_while(x, function(z) z < 3)
#> [1] 1 2 0
x <- c(1, 2, 3, 4, 9, -1)
take_while(x, function(z) z < 3)
#> [1]  1  2 -1
```

`drop_while`


```r
x <- c(1, 2, 3, 4, 5, 0)
drop_while(x, function(z) z < 3)
#> [1] 3 4 5
x <- c(1, 2, 3, 4, 9, -1)
drop_while(x, function(z) z < 3)
#> [1] 3 4 9
```

`delete_at`


```r
x <- c(1, 2, 3, 4, 5, 0)
delete_at(x, 5)
#> [1] 1 2 3 4 0
delete_at(x, 4:5)
#> [1] 1 2 3 0
```

`delete_if`


```r
x <- c(1, 2, 3, 4, 5, 0)
delete_if(x, function(z) z > 2)
#> [1] 1 2 0
delete_if(x, function(z) z < 4)
#> [1] 4 5
```

`shift`


```r
x <- c(1, 2, 3)
shift(x)
#> [1] 2 3
shift(x, 1)
#> [1] 2 3
```

`unshift`


```r
x <- c(1, 2, 3)
unshift(x, 4)
#> [1] 4 1 2 3
```

## Meta

* License: MIT
* Get citation information for `rubfuns` in R doing `citation(package = 'rubfuns')`
* Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md).
By participating in this project you agree to abide by its terms.
