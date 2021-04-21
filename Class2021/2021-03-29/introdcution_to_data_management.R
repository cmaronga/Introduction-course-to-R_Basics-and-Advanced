# installing the packages
install.packages("dplyr") # this is done once (then you can update perpetually)

# load the package
library(dplyr) # load each time you want to use

# reading the dataste
fb_data <- read.csv("datasets/facebookData.csv")


# a.	Selecting column names
# select()
select(data_to_use, col1, col2, col3)


names(fb_data)

new_data <- select(fb_data, userid, age, gender)

# drop variables
new_data2 <- select(fb_data, -www_likes_received)

# multiple variables
new_data3 <- select(fb_data, -userid, -age, -gender)

new_data3b <- select(fb_data, -c(userid, age, gender))


# helper function (:)
new_data4 <- select(fb_data, userid, age, dob_day, dob_year, dob_month)

new_data4b <- select(fb_data, userid:dob_month)

# select using column positions
new_data5 <- select(fb_data, 1, 13, 15)

# NOTE: Select ONLY affects the number of columns



# b.	Filtering rows
# filter()

# uses bolean TRUE/FALSE conditions
 # == -->> exactly equals
 # != -- >> Not equal to
 # >  greater than
 # < less than
# >=  greater than or equal to
# <= less than or equal to

# 
less_18 <- filter(fb_data, age < 18)

# 
exactly_14 <- filter(fb_data, age == 14)

# 
less_equl_13 <- filter(fb_data, age <= 13)


# Male gender
male_users <- filter(fb_data, gender == "male")

# Not equal
not_equl_20 <- filter(fb_data, age != 20)

# 
not_male <- filter(fb_data, gender != "male")


# Multile conditions
 # &, and
 # |, OR

# male users who are 18 years and over
male_18above <- filter(fb_data, (gender == "male" & age >= 18))

# OR conditions
# male user or 18 years

male_or_18 <- filter(fb_data, (gender == "male" | age >=18))



# c.	Creating new columns
# mutate()




# d.	Grouping and summarizing data
# groub_by() and summarise()





# e. Arranging data
# desc(), asc(); main function arrange()




# f. Combining multiple verbs/functions.
 # pipe operator ( %>% )

# data transformation -----------------------------------------------------

# a. Long format




# b. Wide format










