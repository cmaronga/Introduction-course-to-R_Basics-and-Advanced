## ++ Introduction to ggplot2 ----

#install.packages("ggplot2")  ## install the package
library(ggplot2)
library(readr)

## read data into the workspace
facebook_data <- read_csv("datasets/facebookData.csv")  #(Ctrl+Enter)

msleep <- read_csv("datasets/msleep.csv")

housing_data <- read.table("datasets/HousingData.txt", header = T, sep ="")

diabetes <- read_csv("datasets/diabetes.csv")

## ++ Lets get started 
ggplot(data, aes(mapping))+geom_*()  ## simplest syntax of ggplot2

ggplot(data, aes(x=a, y=b))+geom_*()
ggplot(data, aes(a,b))+geom_*()
ggplot(data, aes(y=b,x=a))+geom_*()

browseURL("https://ggplot2.tidyverse.org/reference/") ## ggplot documentation

## ++ One variable: Continuous -----
ggplot(facebook_data, aes(age))+ geom_histogram(fill="steelblue", col="white") +
  labs(title = "Age distribution", y= "count of friends", x="age in years")

ggplot(facebook_data, aes(x=1, y=age))+geom_boxplot()
boxplot(facebook_data$age)


ggplot(facebook_data, aes(age))+ geom_histogram(fill="steelblue", col="white") +
  ggtitle("Age distribution") + xla() + ylab()


## One variable: Discrete --
library(dplyr)
ggplot(facebook_data, aes(gender))+ geom_bar()

ggplot(filter(facebook_data, gender %in% c("female","male")), aes(gender, fill=gender))+ 
  geom_bar(width = 0.5) 


## Two variables: Continuous X, Continuous Y ---
names(msleep)

ggplot(msleep, aes(x = bodywt, y = sleep_total))+ geom_point()

ggplot(msleep, aes(y = bodywt, x = sleep_total))+ geom_point()


ggplot(housing_data, aes(x = age, y = mdev))+geom_point(col="blue")










