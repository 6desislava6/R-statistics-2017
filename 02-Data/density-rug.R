
babiesWeights = c(7.2, 8.0, 8.2, 5.8, 6.1, 8.5, 7.8, 8.2, 7.7, 6.8, 7.9, 9.0, 6.8, 5.6, 7.5, 6.8, 9.4, 7.7, 6.0, 6.2, 8.6, 7.2, 8.5, 9.0, 6.7, 6.6, 7.2, 8.2, 7.1, 7.7, 7.5, 7.8, 7.7)
hist(babiesWeights)
hist(babiesWeights, breaks = c(min(babiesWeights), 6.0, 6.6, 7.2, 7.8, 8.4, 9.0, max(babiesWeights)), probability = FALSE)
hist(babiesWeights, breaks = c(min(babiesWeights), 6.0, 6.6, 7.2, 7.8, 8.4, 9.0, max(babiesWeights)), probability = TRUE)

hist(babiesWeights)
hist(babiesWeights, probability = TRUE)
rug(babiesWeights)
# Frequency polygon
x = c(.314,.289,.282,.279,.275,.267,.266,.265,.256,.250,.249,.211,.161)
tmp = hist(x) # store the results
lines(c(min(tmp$breaks), tmp$mids, max(tmp$breaks)), c(0, tmp$counts,0), type="l")


library(UsingR)
data(faithful)
faithful$eruptions
hist(faithful$eruptions,15,prob=T)
lines(density(faithful$eruptions))

d = density(mtcars$wt)
plot(d)

lines(a)
# plot(density(faithful$eruptions))
# rug(jitter(faithful$eruptions))
# rug(faithful$eruptions)
