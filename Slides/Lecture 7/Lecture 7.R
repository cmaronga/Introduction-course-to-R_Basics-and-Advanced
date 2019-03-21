## sample_n() and sample_frac()

population_data <- read_csv("datasets/population.csv")

## randomly selecting observations from your dataset
# syntax
sample_n(dataset, number_observation, replace = T)

set.seed(12584)
random_1000 <- sample_n(population_data, 1000, replace = F)


random_50 <- sample_n(population_data, 50, replace = F)

## sample_frac --- sample a fraction
random_50percent <- sample_frac(population_data, .50, replace = F)

random_25percet <- sample_frac(population_data, .25, replace = F)

set.seed(20180319)
random_75percent <- sample_frac(population_data, .75, replace = F)

random_005percent <- sample_frac(population_data, .005, replace = F)
