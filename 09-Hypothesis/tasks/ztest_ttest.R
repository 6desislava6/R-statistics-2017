z.test = function(x, sigma, alpha) {
  sample_mean = mean(x)
  z_star_left = qnorm(alpha/2)
  z_star_right = qnorm(1 - alpha/2)
  sample_mean - c(z_star_right*sigma/sqrt(length(x)), z_star_left*sigma/sqrt(length(x)))
}

x = rbinom(40, 10, 0.2)
sigma = sqrt(40 * 0.2 * 0.8)
z.test(x, sigma, 0.05)

library(UsingR)
simple.z.test(x, sigma)


ttest = function(x, alpha) {
  sigma = sd(x)
  sample_mean = mean(x)
  z_star_left = qt(alpha/2, length(x) - 1)
  z_star_right = qt(1 - alpha/2,length(x) - 1)
  sample_mean - c(z_star_right*sigma/sqrt(length(x)), z_star_left*sigma/sqrt(length(x)))
}
ttest(x, 0.05)

t.test(x)