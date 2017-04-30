CLT_binom <- function(s, n, p)
{
  # Средните (средно колко успехи)
  x = rbinom(s, n, p)
  z = (x - n* p) / sqrt(n * p * (1 - p))
  hist(z, prob=TRUE)
  return(z)
}
CLT_binom(1000, 15, 0.4)
CLT_binom(1000, 150, 0.4)
x = CLT_binom(100, 300000, 0.4)
curve(dnorm(x), -4, 3, add=TRUE)

# сравнява с квантилите на нормално разпределение
x
qqnorm(x)
# свързва първи и трети квантил
qqline(x)

CLT_exp = function(rep, n, lambda){
  z = c();
  for(i in 1:rep){
    x = rexp(n, lambda)
    z = c(z, (mean(x) - 1/lambda)*lambda*sqrt(n))
  }
  hist(z, prob=TRUE)
  return(z)
}
CLT_exp(100, 10, 2)
CLT_exp(100, 100, 2)


CLT_unif = function(rep, n, a, b){
  z = c();
  for(i in 1:rep)
  {
    x = runif(n, a, b)
    z = c(z, (mean(x) - (a + b) / 2)/sqrt((b - a)^2/12)*sqrt(n))
  }
  hist(z, prob=TRUE)
  return(z)
}
