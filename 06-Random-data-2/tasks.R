## Q 6.1
set.seed(6.1)
x = runif(10, min=0, max=12)
x
# [1] 6.062683 9.376420 2.643521 3.800939 8.074834 9.780757 9.579337 7.627319
# [9] 5.096485 0.644768

min(x)
# [1] 0.644768

max(x)
# [1] 9.780757


## Q 6.2
set.seed(6.2)
x = rnorm(10, mean=5, sd=5)
x
# [1]  6.348030  1.850073  9.343299 13.635978  5.120938  6.840126 -1.546021
# [8]  8.693110  5.224365 -0.241986

sum(x<0)
# [1] 2


## Q 6.3
m = 100
s = 10
x = rnorm(100, mean=m, sd=s)

sum(x<m-2*s | x>m+2*s)
# [1] 5


## Q 6.4
set.seed(6.4)
n = 1
p = 0.5
x = rbinom(50, n, p)

sum(x==1)
# [1] 30


## Q 6.5

x = sample(1:6, 100, replace=T)
sum(x==6)

x = rbinom(100, 1, 1/6)
sum(x==1)
# [1] 21


## Q 6.6
x = sample(1:49, 6, replace=F)
x

min(x)
# [1] 13

max(x)
# [1] 46


## Q 6.7
#qnorm(0.05) 
qnorm(0.05, 0, 1) 
# [1] -1.644854


## Q 6.8
#  mean is 0, meaning this probability distribution
#  is symmetric about the y-axis.
#  for P(-z <= Z <= z) = 0.05...
negative_z = qnorm(0.95/2)
z = -negative_z
# [1] 0.06270678

# pnorm(-z) = 0.5 - 0.025
pnorm(-1*z)
# [1] 0.475

# pnorm(z)  = 0.5 + 0.025
pnorm(z)
# [1] 0.525


## Q 6.9
pnorm(1.5, 0, 2, lower.tail=F)
# [1] 0.2266274


## 6.10
x = rexp(100, 1/10)
hist(x, probability=T, col=gray(0.9), main="6.10 - exponential, mean=10")
curve(dexp(x, 1/10), col="red", add=T)
dev.copy(png, "images/6-10.png")
dev.off()

#  ... median?
median(x)
# [1] 5.709862


## 6.11
#  ... off the top of my head, it looks like rnorm(5, mean=0, sd=1:5)
#      will:
#      a. return 5 random numbers from a normal distribution centered about the Y-axis
#      b. with each random number coming from a normal distribution with sd set to 1-5
rnorm(5, mean=0, sd=1:5)
# [1]  0.2696060 -1.2599708  2.6059795  6.9087821  0.1209382


## 6.12
cards = paste(rep(c("A",2:10,"J","Q","K"),4),c("H","D","S","C"))
cards
sample(cards, 5)
sample(cards, 5)
