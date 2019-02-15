## Matrix--- matrices
matrix()  ## function used to create a matrix
?matrix

# create a matrix of numbers between 1 t0 10
A <- matrix(1:10)

B <- matrix(1:10,ncol = 5,byrow = T)

C <- matrix(1:10,nrow = 5)

## matrix of my friend's
matrix(c("chris","amos","eunice","arnold","john","peace"),ncol = 2,byrow = T)

matrix(1:10,ncol = 5,byrow = T)

## colnames()--renaming the coloumns of a matrix
colnames(B) <- c("col1","col2","col3","col4","col5")

### Data frames
data.frame()  ## used to create a data frame

data.frame(col1,col2,col3,col4....)  ## general form of the function

student_name <- c("Chris","john","Amos","Eunice","Bern","Peace")
year_expe <- c(5,4,1,3,4,3)

my_dataset <- data.frame(student_name,year_expe)

## include town
town <- c("Kilifi","Kilifi","Mombasa","Kilifi","Nairobi","Kampala")

my_dataset2 <- data.frame(student_name,year_expe,town)

?data.frame

##
barplot(my_dataset2$year_expe)


##Working directory vs file path 

getwd() ## shows you the working directory as a "path"

setwd("C:/WORK in PROGRESS/1.MASOMO BASE")

setwd("C://WORK in PROGRESS//1.MASOMO BASE")


## Reading data into R
?read.table

## using file path
## .csv
diabetes <- read.table("C:/WORK in PROGRESS/GITHub_Projects/Introduction-course-to-R/datasets/diabetes.csv",
                       sep = ",", header = T)

diabetes2 <- read.table("C:/WORK in PROGRESS/GITHub_Projects/Introduction-course-to-R/datasets/diabetes.csv",
                        sep = ",")

## text file
Iri_s<- read.table("C:/WORK in PROGRESS/GITHub_Projects/Introduction-course-to-R/datasets/iris.txt",
                         sep = "/t", header = T)

data2 <- read.table("C:/WORK in PROGRESS/GITHub_Projects/Introduction-course-to-R/datasets/iris.txt",
                         sep = "", header = T)

## lazy way which is not reproducable
data3 <- read.table(file.choose(),sep = ",", header = T) ## quick and one time reading data into R


## using working directory
#
diabets5 <- read.table("diabetes.csv", sep = ",", header = T)

diabets6 <- read.table("datasets/diabetes.csv", sep = ",", header = T)

iris56 <- read.table("datasets/iris.txt", sep="/t", header = T)


## Reading data using read.csv
?read.csv

population <- read.csv("datasets/population.csv")


phq_queries <- read.csv("C:/Users/cmaronga/Dropbox (Personal)/CHAIN Data Curation Group/CODE/Christopher/queries/phq_queries.csv")


### na.strings

# is used to handle missing values NA
population2 <- read.csv("datasets/population2.csv",na.strings = "") ## 99, 999

population2 <- read.csv("datasets/population2.csv") 

population3 <- read.csv("datasets/population3.csv",na.strings = 999)



