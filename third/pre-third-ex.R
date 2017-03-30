######### 4.2
library("MASS")
data("UScereal")
attach(UScereal)
names(UScereal)
head(UScereal)

# mfr, shelf - categorical
table(mfr, shelf)
barplot(table(mfr, shelf), beside = TRUE, legend = T)
barplot(table(shelf, mfr), beside = TRUE, legend = T)

# fat - numerical, vitamins - categorical
boxplot(fat ~ vitamins)

# fat - numerical, shelf - categorical
boxplot(fat ~ shelf)

# two numerical, quantative

boxplot(carbo, sugars)

plot(carbo, sugars)
abline(lm(sugars ~ carbo))
cor(carbo, sugars)

# Другите две се повтарят

############# 4.3
data("mammals")
attach(mammals)
head(mammals)

plot(body, brain)
plot(log(body), log(brain))

####### 4.4
data("homedata")
head(homedata)
# identify outliers
attach(homedata)
plot(y1970, y2000)
abline(lm(y2000~y1970))
cor(y1970, y2000)

outliers = identify(y1970, y2000)

plot(y1970[-outliers], y2000[-outliers])
abline(lm(y2000[-outliers]~y1970[-outliers]))
cor(y1970[-outliers], y2000[-outliers])

############# 4.7 на място

########## 4.9
data(mtcars)
names(mtcars)
str(mtcars)
head(mtcars)

attach(mtcars)
head(mtcars, n = 5)

mtcars["Valiant", "hp"]
simple.lm(cyl, mpg)