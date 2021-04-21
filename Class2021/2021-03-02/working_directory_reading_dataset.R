
# ++ Getting started with working directories ----------------------------

# to know the location of your working directory

getwd()

# change the working directory

setwd("C:\Users\cmaronga\Desktop\my_class_work")

# explicit path
setwd("C:\\Users\\cmaronga\\Desktop\\my_class_work")
getwd()


# foward-slash separator
setwd("C:/Users/cmaronga/Desktop/my_class_work")
getwd()

# sub-folders
setwd("C:/Users/cmaronga/Desktop/my_class_work/images_plots")
getwd()


setwd("C:\\WORK in PROGRESS\\MASOMO BASE\\JKUAT - Bayesian Data Analysis\\Bayesian_Materials")
getwd()

# ++ Reading data from external sources  ----------------------------------

# .cvs
# text files
# excel sheet

# other statistical datastes (spss, sas and stata) -- advanced

library(readr)

# reading a csv
read_csv("path_to_where_the_data_is") # syntax


# reading data when it is within your working directory
diabetes_data <- read_csv("diabetes.csv")

plot(diabetes_data$age)


# when the dataset is not in the working directory

diabetes_data2 <- read_csv("C:\\Users\\cmaronga\\Desktop\\my_class_work\\diabetes.csv")

diabetes_data3 <- read_csv("C:/Users/cmaronga/Desktop/my_class_work/diabetes.csv")


# from a different folder
merc_data <- read_csv("C:\\Users\\cmaronga\\OneDrive - Kemri Wellcome Trust\\R Projects-- ALL\\R4Data_Science\\datasets\\merck_data.csv")

facebookData <- read_csv("C:/Users/cmaronga/Desktop/my_class_work/facebookData.csv")



# reading from a text file
read.table()

housing_data = read.table("C:/Users/cmaronga/Desktop/my_class_work/HousingData.txt", 
                           header = T)

setwd("C:/Users/cmaronga/Desktop/my_class_work")

housing_datab = read.table("HousingData.txt", 
                           header = T)

# reading from an excel file
# read_excel() from a package called readxl
# mostly .xlsx

library(readxl)

clean_countries = read_excel("clean_countries.xlsx")

clean_countriesb = read_excel("C:/Users/cmaronga/Desktop/my_class_work/clean_countries.xlsx")














