## Type conversion
facebook_data <- read.csv("datasets/facebookData.csv")

housing <- read.table("datasets/HousingData.txt",sep = "",header = T)

str(facebook_data)

## convert gender into character
facebook_data$gender <- as.character(facebook_data$gender)
str(facebook_data)

##
str(housing)
housing$age <- as.factor(housing$age)

housing$age <- as.numeric(housing$age)
housing$age <- as.integer(housing$age)

##
as.factor()
as.character()

as.numeric()
as.integer()

## 
str(facebook_data)
class(facebook_data$friend_count)
class(facebook_data$gender)


### Data wrangling (1/4)
install.packages("dplyr")

library(dplyr)

## basic selecting/deselecting (named approach and chunk approach)

data1 <- select(facebook_data, age, tenure, likes, gender)  ## named approach


data2 <- select(facebook_data, age:likes)  # chunk

## deselect

data3 <- select(facebook_data, -age, -tenure, -gender, -likes)

data3b <- select(facebook_data, -c(age, tenure, gender, likes))

data <- select(facebook_data, -c(age:likes))


## ++ selecting based on column partial name

starts_with(), ends_with() and contains()

## start_with
iris_1 <- select(iris, starts_with("Sep"))

iris_2 <- select(iris, ends_with("ies"))

iris_3 <- select(iris, ends_with("dth"))

iris_4 <- select(iris, contains("L"))


## selecting columns based on regular expression
matches("pattern")

faceboo_1 <- select(facebook_data, matches("fr"))


## re-ordering columns using select()
everything()

facebook_datab <- select(facebook_data,everything())

fb_data <- select(facebook_data, userid, age, gender, everything())


## ++ renaming column names using select()
names(housing)

'new_name'='old_name'

housing_b <- select(housing, crim, 'zone'='zn', 'industry'='indus', 'taxes'='tax')










