# Повечето -> p > 0.5
# Тъй като няма равенство, отива в алтернативата.
p_hypothesis = 0.5
n = 20
alpha = 0.025
x_observed = 14
# Binom разпределение с p_hypothesis = 0.5 и n = 20

### С p_value
# К.О. е вдясно
plot(dbinom(seq(0, n, 1), n, p_hypothesis), type="s")
pbinom(x_observed, n, p_hypothesis, lower.tail = FALSE)
# по-малко е от alpha -> отхвърляме хипотезата

### С критична област
x_cr = qbinom(alpha, n, p_hypothesis, lower.tail = FALSE)
# да, попада вътре -> отхвърляме

## beta беше да не отхвърлим H0, като H0 не е вярно.
## H0 не е вярно, вярно е p = 0.7 от условието
# P(да не отхвърлим H0| Binom(n, p=0.7))
pbinom(x_cr, n, 0.7)