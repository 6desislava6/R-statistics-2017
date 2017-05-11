n = 61
sample_mean = 8.3
sample_sd = 1.2
alpha = 0.01

# Знаем, че извадковото средно е нормално разпределено със
mu = sample_mean
sigma = sample_sd / sqrt(n)
plot(dnorm(seq(5, 12, 0.01), mu, sigma), type="l")
# К.О. там е
x_cr_left = qnorm(alpha/2, mu, sigma)
x_cr_right = qnorm(alpha/2, mu, sigma, lower.tail=FALSE)

mu_hypothesis = 8.5
# Не попада в КО и не отхвърляме хипотезата
p_value = 2 * pnorm(mu_hypothesis, mu, sigma)