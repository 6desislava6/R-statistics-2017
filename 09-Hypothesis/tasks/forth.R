p_hypothesis = 0.5
n = 500
x_observed = 278
alpha = 0.05
# Binom
# К.О.
x_cr = qbinom(alpha, n, p_hypothesis, lower.tail = FALSE)
# [1] 268
# Наблюдаваното попада ли вътре?
# Да -> и отхвърляме хипотезата

# p_val
p_val = pbinom(x_observed, n, p_hypothesis, lower.tail = FALSE)
p_val < alpha