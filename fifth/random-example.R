runif(1,0,3) #генерира случайно число в интервала [0,3]
x <- runif(50,0,5)
x
hist(x, col="red", main="uniform data on [0,5]")
hist(x, probability=TRUE, col="red", main="uniform data on [0,5]")


results = rnorm(80, mean = 4, sd =1.1)
hist(results)

################
y = rnorm(10,100,16)
hist(y, probability=TRUE, col="blue", main="normal data with mean=100, sd=16")
curve(dnorm(x, mean=100,sd=16), add=T)

###############

hist(rbinom(100, 5, 0.25), probability=TRUE)
# Прилича много повече на нормално
# Колкото повече опити в биномно разпределение, толкова
# повече то прилича на нормално
hist(rbinom(100, 100, 0.25), probability=TRUE)

rnorm(5,mean=0,sd=1)
rnorm(5,mean=0,sd=1:10)

