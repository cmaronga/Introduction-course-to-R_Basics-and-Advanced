## ++ expression
k <- 5+6
k
math_test <- (48*100)+100
x <- 45-9

y <- 6-90

ls()  ## view number of objects in the workspace

rm(y)

rm(x,k)

rm(list = ls())


## Vectors
## how to create a vector
num_vector <- c(23,34,56,78,90,45,67) # numeric vector

charac_vector <- c("toyota","subaru","benz","audi")

## extracting
charac_vector[c(1,4)]

num_vector+10

## logical vectors
log_vector <- num_vector > 30

>,  >=
<,   <=
==
!=

## missing numbers
NA

##
seq_num <- c(1:100)

mis <- c(1:10,rep(NA,7),22)

## checking for missingness
is.na(name_object)

is.na(mis)

is.na(num_vector)




