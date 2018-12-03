## installing a package  -- one time(once)
install.packages("packagename")
install.packages("ggplot2")

## Load package--(everytime)
library(ggplot2)
require(ggplot2)

## 
installed_packages <-installed.packages() 

sessionInfo() ## list of loaded packages

availalabel_pakages <-available.packages() 


## Working directory
getwd()   ## prints the path 
C:\Users\cmaronga\Dropbox\Introduction course to R -- Basics & Advanced\raw scripts

set("path")
setwd("C:/Users/cmaronga/Desktop")

.libPaths()

### Importing data into R 
## read comma separated data
hiv <- read.table("C:\\Users\\cmaronga\\Dropbox\\Introduction course to R -- Basics & Advanced\\datasets\\hivdata.csv",
                  header = T,sep = ",") ## method 1

hiv2 <- read.table("hivdata.csv",header = T,sep = ",") ## method 2 when working from the directory
hiv2_b <- read.table("hivdata.csv",sep = ",")

hiv3 <- read.table(file.choose(),header = T,sep = ",") ## method 3 using point and click(not reproducable)  ## AVOID


## reading tab/sapce separated data
Iris <- read.table("C:\\Users\\cmaronga\\Dropbox\\Introduction course to R -- Basics & Advanced\\datasets\\iris.txt",
                  header = T,sep = "\t") ## method 1

iris2 <- read.table("iris.txt",header = T,sep = "\t") ## method 2 when working from the directory

iris3 <- read.table(file.choose(),header = T,sep = "\t") ## method 3 using point and click(not reproducable)  ## AVOID


## SPSS, SAS,STATA
read.csv()  ## form of read.table(), it only read .csv

Iris_csv_command <- read.csv("C:\\Users\\cmaronga\\Dropbox\\Introduction course to R -- Basics & Advanced\\datasets\\iris.csv",
                  header = T) ## method 1

hiv2_bcvs <- read.csv("hivdata.csv")

##
str(hiv2)

summary(iris)
dim(Iris_csv_command)

mean(iris$Sepal.Length)
median(iris$Sepal.Width)

table(iris$Species)

