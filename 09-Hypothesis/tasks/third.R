n = 40
x_observed = 9
p_hypothesis = 0.15
# Какво е разпределението? Биномно с n = 40 и вероятност p = 0.15.
plot(dbinom(seq(0, 40, 1), n, p_hypothesis), type="s")
# тогава
p_value = pbinom(x_observed, n, p_hypothesis)
p_value < alpha

