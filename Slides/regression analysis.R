## ++ Introduction to regression analysis in R ++-----
data("marketing", package = "datarium")


#
head(marketing)

## fit linear regression
lm()

lm(formula = , data = )

## fit SLR on sales based on youtube

model1 <- lm(sales~youtube, data = marketing)

summary(model1)


## MLR
model2 <- lm(sales ~ youtube+facebook+newspaper, data = marketing)
summary(model2)





