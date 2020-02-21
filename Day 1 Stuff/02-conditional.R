
f_k <- function(f_temp) {
  converted<- ((f_temp-32))*(5/9)+273.15
  return(converted)
}


k_c<- function (k_temp) {
  return(k_temp-273.15)
}


f_c <- function(f_temp) {
  k_temp <- f_k(f_temp)
  temp_c <- k_c(k_temp)
  return(temp_c)
}

k_c<- function (k_temp) {
  if (k_temp < 0) {
    warning("You passede in a negative kelvin number")
    return(NA)
  }
    return(k_temp-273.15)
}

k_c(-100)

k_c<- function (k_temp) {
  if (k_temp < 0) {
    warning("You passede in a negative kelvin number")
    return(NA)
  } else{
  return(k_temp-273.15)
  }
}

k_c<- function (k_temp) {
  if (is.na(k_temp)) {
    return(NA)
  } else if (k_temp<0){
    warning("You passede in a negative kelvin number")
    return(NA)
  } else{
    return(k_temp-273.15)
  }
}

k_c(1:10)

if (all(c(TRUE,TRUE,FALSE))) {
  print("Hello")
}

c(TRUE,FALSE)==c(TRUE,FALSE)

identical(c(TRUE,FALSE), c(TRUE,FALSE))
identical (0,0L)

# &(and for all of them) |(or for all of them)
# &&(and for just the first one) ||(or for just the first one)

# wirte a function
# takes a single value
# divisable 3: "fizz"
# divisable 5: "buzz"
# divisible by 3 and 5: "fizzbuzz"

fizzbuzz<- function (x) {
  if ((x %% 3) == 0) {
    return("fizz")
 }  else if ((x %% 5)==0) {
    return("buzz") 
 }  else if ((x %% 3)==0 & (x %% 5)==0){
    return("fizzbuzz")
 } else {
   return(NA)
        }
      }
fizzbuzz(15)
fizzbuzz<- function (x) {
  if ((x %% 3) == 0 & (x %% 5)==0) {
    return("fizzbuzz")
  } else if ((x %% 3)==0) {
    return("fizz") 
  } else if ((x %% 5)==0) {
    return("buzz")
  } else {
    return(NA)
  }
}
fizzbuzz(15)

fizzbuzz_vec<- function(x) {
  dplyr::case_when(
  (x %% 3 ) == 0 & (x %% 5) == 0 ~ "fizzbuzz",
  (x %%3)==0 ~ "fizz",
  (x %%5)==0 ~ "buzz",
  TRUE ~ as.character(x)
  )
}
fizzbuzz_vec(5:12)
values<- 10
cut(values,
    c(-Inf, 0,10,20,30, Inf),
    labels= c("freezing","cold","cool","warm", "hot" ),
    right = TRUE)

 






















