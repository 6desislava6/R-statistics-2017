#---------------------------------
# Example 1: Averages of Bernoulli variables
# The number of heads in n flips of a fair coin is modeled by binomial(n,.5)
# We use the cdf function pbinom(x, n, .5) to compute probabilities for various n

# Probability of 4 to 6 heads in 10 flips
# Note:  since pbinom(x,10,.5) is P(X <= x) we use pbinom(3,10.5) so X=4 is included
# in the probability
pbinom(6,10,.5) - pbinom(3,10,.5)
# 0.65625

# We look at the probability of between 40 and 60% heads for n = 50, 100, 500, 1000
pbinom(30,50,.5) - pbinom(19,50,.5)
# 0.8810795
pbinom(60,100,.5) - pbinom(39,100,.5)
# 0.9647998
pbinom(300,500,.5) - pbinom(199,500,.5)
# 0.9999941
pbinom(600,1000,.5) - pbinom(399,1000,.5)
# 1

# Next we look at the probability of between 49 and 51 percent heads 
# (again we include the endpoints in the probability)

# We look at the probability of between 40 and 60% heads for n = 50, 100, 500, 1000
pbinom(5,10,.5) - pbinom(4,10,.5)
# 0.2460937
pbinom(51,100,.5) - pbinom(48,100,.5)
# 0.2356466
pbinom(510,1000,.5) - pbinom(489,1000,.5)
# 0.49334
pbinom(5100,10000,.5) - pbinom(4899,10000,.5)
# 0.9555742

#---------------------------------
# Histogram examples
x = c(1,2,2,3,3,3,4,4,4,4)
brks = c(.5, 1.5, 2.5, 3.5, 4.5)
hist(x,breaks=brks, col="purple", freq=TRUE)
hist(x,breaks=brks, col="magenta", freq=FALSE)

brks = c(0,1,2,3,4)
hist(x,breaks=brks, col="red", freq=TRUE)
hist(x,breaks=brks, col="orange", freq=FALSE)

brks = c(0,2,4)
hist(x,breaks=brks, col="blue", freq=FALSE)

brks = c(.25,.75,1.25,1.75,2.25,2.75,3.25,3.75,4.25)
hist(x,breaks=brks, col="cyan", freq=FALSE)

#unequal size bins
brks = c(0,1,2,4)
hist(x,breaks=brks, col="red", freq=TRUE) #GENERATES WARNING
hist(x,breaks=brks, col="orange", freq=FALSE)
