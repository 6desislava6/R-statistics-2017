weight = c(150, 135, 210, 140)
height = c(65, 61, 70, 65)
gender = c("f", "m", "f", "f")

study = data.frame(weight, height, gender)

# как да дадем имена на колоните
# names(study) = c(..)
# или
# study = data.frame(именаколона = вектор, именаколона = вектор...)
study = data.frame(w=weight, h=height, g=gender)
row.names(study) =  c("Mary", "Alice" ,"Bob","Judy")

attach(study)
rm(weight)


########################3

data(PlantGrowth)
head(PlantGrowth)

#Контролна група:
ctrl = PlantGrowth[PlantGrowth$group == 'ctrl', ]
#Група 2:
trt1 = PlantGrowth[PlantGrowth$group == 'trt1', ]
PlantGrowth[PlantGrowth$group == 'ctrl', ] = c("asd", "d")
#Група 3:
trt2 = PlantGrowth[PlantGrowth$group == 'trt2', ]
grouped_data <- data.frame(ctrl[,1], trt1[,1], trt2[,1])
colnames(grouped_data) <- c("ctrl", "trt1", "trt2")

unstack(PlantGrowth)
boxplot(unstack(PlantGrowth))

attach(PlantGrowth)
boxplot(weight~group)

############
library(MASS)
data(Cars93)
head(Cars93)
attach(Cars93)
# Първо ги правим категорни, защото таблицата работи с категорни!
price = cut(Price, c(0,12,20, max(Price)))
levels(price) = c("cheap", "ok", "expensive")

mpg = cut(MPG.highway, c(0, 20, 30, max(MPG.highway)))
levels(mpg) = c("perfect", "ok", "too much")

head(Type)
table(price, Type)
table(price, Type, mpg)

###########
data("ToothGrowth")
attach(ToothGrowth)

head(ToothGrowth)

plot(len ~ dose, pch = as.numeric(supp))
tmp = levels(supp)
legend(locator(1), legend = tmp, pch = 1:length(tmp))

library(UsingR)
simple.scatterplot(dose, len)