y = dbinom(0:10, 10, 0.8)
plot(0:10, y, type = "s", col = "darkblue")

y = dgeom(0:10, 0.1)
plot(0:10, y, type="s")

y = dnbinom(0:10, 7, 0.6)
plot(0:10, y, type="s")

y = dpois(0:10, 4)
plot(0:10, y, type="s")

x = seq(from = -3, to = 3, by = 0.1)
y = dnorm(x, mean = 0, sd = 1)
plot(x, y, type = "l")

x = seq(from = 0, to=10,by=0.1)
y = dexp(x, rate =1/2)
plot(x,y, type = "l")

################
x = seq(from = -350, to = 350, by = 1)
y = dnorm(x, mean = 0, sd = 100)
plot(x, y, type = "l")
## P(-200 < x < 200)
## P(x < 200) - P(x <-200)
## P(z < 200/100) - P(z < -2)
pnorm(2) - pnorm(-2)
# или направо да ползваме умно R
pnorm(200, 0, 100) - pnorm(-200, 0, 100)
# искаме да разберем лицето на графиката за |x| > 250
2 * pnorm(250, 0, 100, lower.tail = FALSE)
# искаме да разберем за коя точка лицето на графиката е 20%
# т.е. по 10% от всяка страна
qnorm(0.1, 0, 100)

