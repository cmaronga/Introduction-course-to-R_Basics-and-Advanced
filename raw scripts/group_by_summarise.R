library(tidyverse)

facebookData <- read.csv("datasets/facebookData.csv")

names(facebookData)

data1 <- group_by(facebookData, gender)

mean(data1$age)

# Checking structure of the data
glimpse(data1)

facebookData %>% 
  group_by(dob_year, gender) %>%
  summarise(mean_age = mean(age)) %>% view()

# Msleep dataset
msleep <- read.csv("datasets/msleep.csv") %>% 
  select(-1)

names(msleep)

# summarizing by groups
msleep %>% 
  group_by(conservation == "domesticated", genus, vore) %>% 
  summarise(mean_sleep_time = mean(sleep_total, na.rm = T), 
            sd_sleep_time = sd(sleep_total, na.rm = T), 
            count = n())

# Creating a new dataset of summaries
data2 <- msleep %>% 
  group_by(order, genus, vore) %>% 
  summarise_if(.predicate = is.numeric, .funs = mean, na.rm = T)
  



msleep %>% 
  select(order, sleep_cycle) %>% 
  filter(order == "Cetacea")
