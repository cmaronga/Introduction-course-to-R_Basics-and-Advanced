## ++ Lecture 


library(readr)

facebook <- read_csv("datasets/facebookData.csv")

str()  ## helps you view the structure of your data
str(facabook)

# it prints as numric the number of coloumns/rows
dim()
dim(facabook)

## ncol and nrow
nrow(facabook)
ncol(facabook)

## summary
facabook$gender <- as.factor(facabook$gender)
summary(facabook)


## table
table(facabook$gender)

table(facabook$gender,useNA = "always")

table(facabook$gender,useNA = "ifany")

## 
data("mtcars")
str(mtcars)

housing <- read.table("datasets/HousingData.txt",sep="",header = T)

data("iris")
summary(iris)

table(var1,var2)

population <- read_csv("datasets/population.csv")
str(population)

population$year <- as.factor(population$year)

table(population$year,population$country)

## The Concept of global enviroment and variable refrencing
str(facebook)

table(gender)

table(facebook$gender)

mean(age)
mean(facebook$age)


# use with()
with(facebook,mean(age))

## attach/dettach
facebook$age <- c(1:nrow(facebook))

attach(facebook)
mean(age)

data2 <- facebook

attach(data2)

mean(age)

detach(data2)
mean(age)

## Selecting and Filtering data
str(facebook)
str(housing)

[] # to filter and select coloumns/rows in base R

[i,j]  ## i and j are position

facebook[100,5]

##
facebook2 <-facebook[ ,c(1,2,5,7)] 

facebook3 <- facebook[c(1:300), ]

facebook4 <- facebook[c(1:20),c(10:15)]

library(dplyr)
facebook4b <- select(facebook,age,userid,dob_month)

facebook5 <- facebook[c(1:20),-c(10:15)]

facebook5 <- facebook[-c(1:100), ]

## conditional filtering
== eaquals
> greater than
>= greater or equal to
< less than
<= less than or equal to
!= not equal to


facebook6 <- facebook[facebook$age >= 90, ]  ## filter all with age greater that 90

facebook6 <- facebook[facebook$age >= 90,c(1,2,4,6) ]

data1 <- facebook[facebook$age == 113, ]
data2 <- facebook[facebook$age != 113, ]

## 
female_data <- facebook[facebook$gender == "female", ]
female_datab <- filter(facebook, gender == "female")

male_data <- facebook[facebook$gender == "male", ]







