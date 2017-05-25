## Two-sample tests 

## proportion
prop.test(c(45, 56), c(45 + 35, 56 + 47))

####
# mean
# drug and placebo
x = c(15, 10, 13, 7, 9, 8, 21, 9, 14, 8)
y = c(15, 14, 12, 8, 14, 7, 16, 10, 15, 12)
shapiro.test(x)
shapiro.test(y)
t.test(x,y,alt="greater", var.equal=TRUE)

#### Paired tests
x = c(3, 0, 5, 2, 5, 5, 5, 4, 4, 5)
y = c(2, 1, 4, 1, 4, 3, 3, 2, 3, 5)
hist(x)
shapiro.test(x)
shapiro.test(y)
wilcox.test(x,y,paired=TRUE)
########
attach(homework)
boxplot(Private, Public)
t.test(Private, Public, alternative = "less")
########
other = 150 - sum(c(13, 10, 42, 65, 150))
other_exp = 1- sum(c(0.2, 0.05, 0.1, 0.4, 0.2))
expected <- c(0.2, 0.05, 0.1, 0.4, 0.2, other_exp)
observed <- c(13, 10, 42, 65, 150, other)
chisq.test(observed, 150*expected)
######### shop
observed <- c(30,14,34,45,57,20)
expected <- c(.1, .1, .15, .2, .3,.15)
chisq.test(observed,p=expected)

####### dice
freq = c(22,21,22,27,22,36) # specify probabilities, (uniform, like this, is default though)
probs = rep(1/6,6)
chisq.test(freq, p=probs)

#######
yesbelt = c(12813,647,359,42)
nobelt = c(65963,4000,2642,303)
chisq.test(data.frame(yesbelt,nobelt))
