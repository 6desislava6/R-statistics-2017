weight <- c(150, 135, 210, 140)
height <- c(65, 61, 70, 65)
gender <- c('Fe', 'Fe', 'M', 'Fe')
study <- data.frame(weight, height, gender)

# Начини да именуваме колоните:
# Когато ги създаваме:
# study <- data.frame(w = weight, height, gender)
# с функцията colnames
# colnames(study) <- c('w', 'h', 'g')
# с функцията names
# names(study) ←  c('w', 'h', 'g')
names(study) = c('w', 'h', 'g')
# Наименуваме редовете
row.names(study) <- c("Mary","Alice","Bob","Judy")
rownames(study) <- c("Mary","Alice","Bob","Judy")
# Прикрепяне на данните
attach(study)
detach(study)

# Индексиране
study[1,1]
study[,1]
study[1,]
study[,1:2]
study[,c(1,3)]

# Взимане на колоните с дадени имена
study[, 'w']
study[,c('w','g')]

# Извличане на всички редове, съдържащи данни за нежния пол:
study[study$g == 'Fe', ]
# Взима редовете, за които е TRUE, а то е TRUE за тези, които са от женски пол

# Извличане на всички наблюдения, 
# с тегло под 200 килограма и височина над 60 сантиметра.
study[study$w < 200 & study$h > 60, ]

# Взимане на реда на Мери
study['Mary',]
# Взимане на теглото на Мери
study['Mary', 'weight']

################################
data(PlantGrowth)
head(PlantGrowth)
PlantGrowth
unstack(PlantGrowth)

unstack(PlantGrowth, weight ~ group)
# Грешноо...
unstack(PlantGrowth, group ~ weight)

boxplot(unstack(PlantGrowth))

attach(PlantGrowth)
boxplot(weight ~ group)

########################
# Считаме кредитите за категорни, понеже са много малко
# различните стойности, които приема - 4 на брой
credits = c(3, 3, 5, 2, 3, 4)
programs = c("ИС", "ИС", "КН", "СИ", "ИС", "КН")
types = c("КП", "М", "КП", "КП", "М", "КП" )

table(types, programs)
table(types, programs, credits)

###################
weights = c(112.99, 136.49, 153.03, 142.34, 144.30, 123.30, 141.49, 136.46, 112.37, 120.67)

heightBulgaria = c(66.49, 67.62, 68.30, 67.12, 68.28, 71.09, 66.46, 68.65, 71.23, 67.13)
heightSerbia = c(65.78, 71.52, 69.40, 68.22, 67.79, 68.70, 69.80, 70.01, 67.90, 66.78)

plot(weights, heightBulgaria)
points(weights, heightSerbia, pch=2)


#####
library(UsingR)
data(emissions)
attach(emissions)
simple.scatterplot(perCapita,CO2)

#######
# pairs(data.frame(heightBulgaria, heightSerbia, weights))

#########
library(UsingR)
data(package="UsingR", chips)

summary(chips)
head(chips)
boxplot(chips)
simple.densityplot(chips)

############
library(UsingR)
head(kid.weights)

attach(kid.weights)
ageYears = cut(age, seq(0,144,by=12), labels=0:11)
boxplot(weight ~ ageYears, main="5.4 - age vs. weights")
