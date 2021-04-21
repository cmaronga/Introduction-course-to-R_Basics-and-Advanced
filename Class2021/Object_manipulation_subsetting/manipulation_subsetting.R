# Packages

# base functions
# there is a package called stats

# installing a package

install.packages("package_name") # NOTE, you need internet connection to be able to install a package

# installing a package
install.packages("copCAR") # step 1

# loading a package
# library(package_name) or require(package_name)

library(copCAR)



# Object manipulation -----------------------------------------------------

# numeric vectors (int and double)

# addition (same length) and multiplication

interger1 + vect1

interger2 + interger1

# multiply
interger2 * interger1

height*weight

# add scalar

ages_people <- c(34, 56, 78, 23, 45, 12)

ages_people + 5

# multiply

ages_people * 10

ages_people - 34 # subtract

(ages_people * 4) - ages_people # elementwise


# division

ages_people/3

ages_people/ages_people * 3

ages_people/interger1

# working example

weight <- c(34, 56, 70, 23, 100) # weight kg

height <- c(120, 78, 80, 90, 79)  # height in M


# scenario 2 (missing data)

# missing data
NA # means missing data character
NA_real_ # missing data numeric


weight <- c(34, 56, NA_real_, NA_real_, 100) # weight kg

height <- c(120, 78, 80, 90, 79)  # height in M

weight/height^2

# scenarion
weight <- c(34, 56,  100) # weight kg

height <- c(120, 78, 80, 90, 79)  # height in M

weight/height^2


# compute BMI

weight/ (height * height)

34/(120*120); 100/(79*79)


weight/ height^2


# matrices manipulation

mat1 <- matrix(c(1:20), byrow = T, ncol = 5)

mat2 <- matrix(c(21:40), byrow = T, ncol = 4)


# add
mat1 + mat2 # element-wise addition

mat1 - mat2

mat1 + 10

# multiplication (simple)


# division


# matrix-multiplication

mat1 * mat2 # wrong matrices 4*5, 4*5 ()

mat1 %*% mat2 # correct way of multiplying a matrix by another matrix



# In-built datasets in R ---------------------------------------------------

data()  # displays a list of all datasets

data(USArrests); attach(USArrests)

head(USArrests)

?USArrests

data(ChickWeight)

?ChickWeight; help(ChickWeight)

data("iris")

?iris

data("sleep")

help(sleep)


# Subletting Objects in R -------------------------------------------------

# means extracting an element from an object

# [], [[]] and $ in cojuction with numeric indexes (1 or -1), logical vectors and names of th elements.


data(cars)

names(cars)

head(cars, 10)

# using dolar sign

# name_obj$variable_name

speed <- c(cars$speed)
dist <- c(cars$dist)

mtcars$drat

# using the [] and [[]]
cars[1]
cars[[1]]

class(cars[1])
class(cars[[1]])


# [] and [[]]
# usually used with atomic vectors and lists

# positive index (retaining)
# negative index (droping/removing)

ages_people[-1]

ages_people[6]
ages_people[-6]

# subset multiple elements

ages_people[c(2,3,4)]
ages_people[-c(2,3,4)]

# applying this to a list

my_list <- list(
  matrix = mat2,
  peop_age = ages_people,
  my_data = mtcars,
  towns = c("Kisumu", "Nairobi", "Mombasa", "Kisii"),
  inlist = list(
    speedv = speed,
    distv = c(cars$dist),
    matrix2 = mat1
  )
)

#
my_list[2]
my_list[[2]]

my_list["my_data"]
class(my_list["my_data"])

my_list[["my_data"]]
class(my_list[["my_data"]])



