1+1

(20*34) + 100

20 + 50

70 -80

# ----------------------------------------------------
result_1 <-1+1
result_1

print(result_1)

result_2 = (20*34) + 100
result_2


result_3 <- result_1 + result_2
result_3


# R objects --- Vectors ---------------------------------------------------
c()

# a.	Vectors
# i.	Atomic vectors
# 1.	Character

# 2.	Integer

# 3.	Double
# 4.	Logical

# Character

towns_in_kenya <- c("Nairobi", "Kisumu", "Eldoret", "Mombasa", "Kilifi")
towns_in_kenya

NamesOfmyFriends <- c("James", "Sheila", "Joseph", "Gathoni", "William")
NamesOfmyFriends

# interger and double

ages_of_towns <- c(45L, 100L, 63L, 25L, 56L)
class(ages_of_towns)

ages_of_townsb <- c(45, 100, 63, 25, 56, 45.6)
class(ages_of_townsb)

# some helpfull functions
class(towns_in_kenya)
class(NamesOfmyFriends)

typeof(towns_in_kenya)

length(NamesOfmyFriends)

length(ages_of_townsb)


# logical
logical_vec <- c(TRUE, FALSE, T, T, F, F)
class(logical_vec)
length(logical_vec)

# more helpful functions
ls()

rm(result_1, result_2, result_3)

rm(list = ls())


# complexity of vectors
# mixing different families of vectors

c(T, F, F, F, "Kisumu", "Nairobi")

c(T, F, F, F, 45, 67, 20.7)

c("Kisumu", "Nairobi", 45, 67, 20.7)











