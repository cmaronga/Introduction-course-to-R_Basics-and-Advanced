# quite R
q()

# ii.	Simple manipulation (R as an overgrown calculator)
 3+3

 4*10 
 
 # iii.	Introducing R studio IDE
 
 # iv.	R language – how does R work (assignment vs expression)
 
 # expression
 3+3

 200 - 50 

# assignment
# <- or =
 
 result_1 <- 3+3
 
 
# creatting list
 
 list(objects1, object2, object3)
 
 # Factors
 
 factor(x = "vector of unique values", 
        levels = "user define levels(uniquely)",
        labels = "how_they_apper_to_eye", 
        ordered = "whether this ordered")
 
 
 towns_in_kenya <- c("Nairobi", "Kisumu", "Eldoret", "Mombasa", "Kilifi")
 
 many_towns <- rep(towns_in_kenya, 10)
 
 factor(many_towns, levels = c("Nairobi", "Kisumu", "Eldoret", "Mombasa", "Kilifi"))
 
 # matrices
 # homegenous
 
 matrix(data = , nrow = , byrow = )
 
 matrix(1:20, nrow = 5, byrow = T)
 
 
 # dataframes
 
 data.frame(named_vectors)
 
 
 data.frame(
   age = c(12, 34, 45, 56, 45, 70),
   gender = c("F", "F", "M", "F", "M", "F"),
   educat = c("D", "Dip", "D", "M", "D", "D")
 )
 
 
 # packages
 
 # 1. install them
 # 2. Loading (making the available for use)
 
 install.packages("name_of_the_package")
 
 # loading
 library(name_of_packgae) or require(name_of_packgae)
 
 # dplyr
 install.packages("dplyr")
 
 
 
 
 
 
 