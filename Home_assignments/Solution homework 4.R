# Assignment 2
WorldCupMatches <- read.csv("datasets/WorldCupMatches.csv")

#Question 1
library(dplyr)

WorldCupMatches1 <- select(WorldCupMatches,Year,Datetime,Stadium,matches("Home."))

names(WorldCupMatches1)

# Question 2
facebook <- read.csv("datasets/facebookData.csv")
str(facebook)
facebook2 <- select(facebook,userid, contains("_"))
names(facebook2)
 
