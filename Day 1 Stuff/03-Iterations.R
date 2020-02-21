f_values<- c(0,32,212,-40)
f_values*10
f_values* c(10,100)


f_k <- function(f_temp) {
  converted<- ((f_temp-32))*(5/9)+273.15
  return(converted)
}

for ( pizza in f_values ) {
  print(f_k(pizza))
}


library(purrr)

converted<- purrr::map(f_values, f_k)
class(converted)
purrr::map_dbl(f_values, f_k)

mtcars
purrr::map(mtcars,class)
purrr::map(mtcars,summary)


# apply,lapply, sapply, yapply
#1
lapply(mtcars, f_c)
purrr::map(mtcars, mean)  
sapply(mtcars, mean)
vapply(mtcars, mean, numeric(1))

#2
library(nycflights13)
flights
purrr:: map_char(flights, class)

#3
iris
num_uni<- function(x) {
  return(length(unique(x)))
}

purrr::map_dbl(iris, num_uni)
purrr::map_dbl(iris, function(x){length(unique(x))})
purrr::map_dbl(iris, ~length(unique(.)))

#4
purrr::map(c(-10,0,10,100), ~ rnorm(n = 10, mean = .))


safe_log<- safely(log)
log(10)
safe_log(10)

x <- list(1, 10, "a")
y <- x%>% map(safe_log)
x %>% map(log)

y


y%>% transpose()
flipped_results <- y %>% transpose()
flipped_results$result

mu <- list(5,10,-3)
map(mu, rnorm, n=5)

sigma<- list(1,5,10)

map2(mu,sigma, rnorm, n=5)
n <- list(1,3,5)
args<- list (mean = mu, sd = sigma, n = n)
pmap(args,rnorm)



























