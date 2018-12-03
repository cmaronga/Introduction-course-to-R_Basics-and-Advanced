### Vector

# using the c sign , called concantenate

Age<-c(23,56,32,19,24)  # =

Age2=c(23,56,32,19,24) ## <- or =

## string vector
names <- c("jane","david","jared","monica","christine")

##
x <- 45
y <- 10

x+y

x*y

##### 
# basic commands
 # - rm()  ## removes objects from the workspace
 # - ls() # rm(list=ls()) ## lists for you the number objects 
 # - summary
 # - dim()
 # - str()
 # - mean()
 # -median()
 # max()
 # clear the condole CTR+L


## base R (internal/inbuilt commands)
data()  ## list all datasets that built within R

data("mtcars") 
str(mtcars)

data("iris")
str(iris)  

data(chickwts)
str(chickwts)

### Simple manipulation

## attach() and detach()
View(iris)

names(mtcars)
str(mtcars)

dim(mtcars)  ## numrows
nrow(mtcars)   ## gives the number of rows in a dataset
ncol(iris)

summary(chickwts)
summary(iris)

##
mean(iris$Sepal.Length)

with(iris,mean(Sepal.Length))

attach(iris)
detach(iris)
mean(Sepal.Length)

summary(mtcars)

max(iris$Sepal.Width)

## table()  ## categorical variables
(table(iris$Species)/nrow(iris))*100


## Basic plots
hist(iris$Sepal.Length)
plot(iris$Species,col="red")

## getting help
?hist
?table
?str

help(hist)
help(table)
help(str)


