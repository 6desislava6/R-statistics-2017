x = c(7.4, 7.1, 6.5, 7.5, 7.6, 6.3, 7.7, 6.9, 6.5, 7.0)
sample_mean = mean(x)
n = length(x)
sample_sd = sd(x)
sample_variance = var(x)
alpha = 0.02

## CI mean
sample_mean - sample_sd/sqrt(n)*c(qt(1 - alpha/2, n - 1), qt(alpha/2, n - 1))
t.test(x)

## CI variance
(n-1)*sample_variance/c(qchisq(1 - alpha/2, n - 1), qchisq(alpha/2, n - 1))

## Hypothesis
# Коя беше тестовата статистика? Ами работим с t разпределение ->
mu_hypothesis = 7.5
t_star = (sample_mean - mu_hypothesis)/sample_sd*sqrt(n)

#### С Критична област
# Критична област за alpha
# Едностранен тест е
# следователно CI е от -безкрайност до:
qt(alpha, n-1)
# t_star е в CI -> следователно отхвърляме хипотезата.

#### С p_value
pt(t_star, n-1)
# [1] 0.009556784
# По-малко ли е от alpha? Да -> отхвърляме

