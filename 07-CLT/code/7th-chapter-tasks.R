## Q 7.3
library("UsingR")
set.seed(7.3)
n = 100
f <- function(n=100, p=.5)
{
  # Това е sample mean
  S <- rbinom(1,n,p)
  (S - n*p)/sqrt(n*p*(1-p))
}
S1 <- simple.sim(1000,f,n,.25)
S2 <- simple.sim(1000,f,n,.05)
S3 <- simple.sim(1000,f,n,.01)
par(mfrow=c(1,3), oma=c(0,0,2,0))
hist(S1, col=gray(.9), prob=T, main="S1: p=0.25")
lines(density(S1, adjust=2), col="blue")
hist(S2, col=gray(.9), prob=T, main="S2: p=0.05")
lines(density(S2, adjust=2), col="blue")
hist(S3, col=gray(.9), prob=T, main="S3: p=0.01")
lines(density(S3, adjust=2), col="blue")
