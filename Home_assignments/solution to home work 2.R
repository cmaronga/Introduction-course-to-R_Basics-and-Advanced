## Question 1
central <- c(100,97,125,55)
west <- c(120,110,165,75)
east <- c(300,250,100,120)
north <- c(250,85,90,200)


## question 2
sales <- matrix(c(central,west,east,north),ncol = 4,byrow = T)

# define column names
col_names <- c("americano","latte","cupcake","muffin")

# define row names
row_names <- c("central","west","east","north")

## rename the matrix using colnames and rownames function

colnames(sales) <- col_names
rownames(sales) <- row_names

sales  # final matrix with coloumn and row names

## 3.	Construct a data frame containing "shop", "americano", "latte", "cupcake" and "muffin"

shop <- c("central","west","east","north")

americano <- c(300,360,900,750)
latte <- c(388,440,1000,340)
cupcake <- c(625,825,500,450)
muffin <- c(330,450,720,1200)


my_data <- data.frame(shop,americano,latte,cupcake,muffin)


## 4.	Remove "americano" and "latte" from your data frame. (remove the entire column)
library(dplyr)
my_data <- select(my_data,-c(americano,latte))



my_data[ ,-c(2,3)]

my_data$americano <- NULL
my_data[ ,-2]

my_data$latte <- NULL
my_data[ ,-3]

my_data[c(1,2,4),]

my_data[-3,] ## removing east

slice(my_data,1,4)


## 
system.time(facebookdata <- read.csv("datasets/facebookData.csv"))


housing_data <- read.table("datasets/HousingData.txt",sep = "",header = T)

world_cup <- read.csv("datasets/WorldCupMatches.csv")

## 
library(readr)
system.time(facebook2 <- read_csv("datasets/facebookData.csv")) ##




