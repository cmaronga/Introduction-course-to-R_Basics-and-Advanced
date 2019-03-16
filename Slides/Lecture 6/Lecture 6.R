## ++ mutate/transmute; filter and arrange

## ++ mutate
data_original <- mutate(data, 
                        new_col = formula)
data <- msleep

?msleep

data2 <- mutate(data,
                sleep_time_mins = sleep_total * 60)

data3 <- mutate(data2, 
                sci_name = paste(genus, order))

data4 <- mutate(data3, 
                weight_grams = bodywt*1000)

data5 <- mutate(data4,
                bmi = round((bodywt/awake^2),3)) 



## transmute
data2b <- transmute(data,
                sleep_time_mins = sleep_total * 60)



## Filter
filter(data, condition)

## 
facebook <- read.csv("datasets/facebookData.csv")

facebok_male <- filter(facebook, gender == "male")

facebook_18 <- filter(facebook, age >= 18)

## multiple conditions in filter
fbk_male_l18 <- filter(facebook, gender == "male", age < 18)

fbk_male_l18b <- filter(facebook, gender =="male" & age < 18)

## 
fb_data <- filter(facebook, dob_year >= 1999 | age <= 15)


## using more than one call in a statement
data1 <- filter(facebook, dob_year >= 1999 | age <= 15)

data_final <- select(data1, userid, age, contains("_"))

data_final2 <- mutate(data_final, age_days = age * 365)

data_final2b <- filter(data_final2, gender == "female")


## pipe operator %>%         %>% (shift+ctrl+m)
library(magrittr)
library(tidyverse)

fine_data <- facebook %>% 
  filter(dob_year >= 1999 | age <= 15) %>% 
  select(userid, age, gender,contains("_")) %>% 
  mutate(age_days = age *365) %>% 
  filter(gender == "female") 







                