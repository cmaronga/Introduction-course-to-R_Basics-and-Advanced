# The R syntax
# there are two ways that R operates
# 1. Expression
# 2. Assignment

# Expression
2+2

100/10

# Assignment  ---
# here instead of executing the results of the expression
# we "assign" the results into an object

# <- and =

result1 <- 2+2

gitonga = 100/10

chris <- 23*1000

Gitonga <- 100/10

# NOTE: The name you choose for the object is case sentive and should not contain a space

chrisMaronga <- 12*34

# you can use the obejects to perform operations


chris + result1

gitonga/chrisMaronga

result2 <- chris + Gitonga

# workspace
# collection of the objects in your environment

# --- R objects and how to create them -----

# i.	Atomic vectors
      # 1.	Character
      # 2.  Double
      # 3.	Integer
      # 4.	Logical

# we create vectors using the function 'c()'; combine/concentation

# Character
# names of places or people, the MUST contain ""

towns_in_kenya <- c("Kisumu", "Nairobi", "Mombasa", "Eldoret", "Kisii")

names_of_people <- c("Chris", "Dennis", "Njeri", "Moses", "Sam", "David")

# Interger
# these are whole numners with no decimals

interger1 <- c(23L, 34L, 45L, 56L, 67L)

interger2 <- c(100L, 90L, 1L)


# some helper functions
# full colon; start_num:last_num
heper1 <- c(2:100)

hepler2 <- c(50:1000)

# replicate
rep(5, 100)


# Double
# these are combination of whole and decimal numbers

vect1 <- c(23, 34, 45, 56, 6)

vect2 <- c(23.6, 0.6, 0.4, 1.1, 3.4)

c(23, 34, 45, 56, 6, "chris")

# Logical
# TRUE and FALSE

vect3 <- c(TRUE, FALSE, T, F, T, T, T, F)

# TRUE = 1
# FALSE = 0


c(TRUE, FALSE, T, F, T, T, T, F, 23)


c(TRUE, FALSE, T, F, T, T, T, F, "dennis")


# Common function you can use with the vectors
class()
typeof()
length()


# class/typeof - getting to know the type of the vector

class(names_of_people)
typeof(names_of_people)

class(vect3)

# length - is to count the number of items inside a vector
length(names_of_people)


# Other helper functions with workspace
ls() # lists the objects within your workspace
rm() # removes an object from your enviroment

ls()

rm(chris)
rm(gitonga, Gitonga, names_of_people)

# removing all objects

rm(list = ls())

#  Next steps :- Lists, Factors, Matrices, Dataframes
#  Vector manipulations












