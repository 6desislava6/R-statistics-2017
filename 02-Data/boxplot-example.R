library("Simple") # read in library for these notes
data(movies) # read in data set for gross.
names(movies)
# [1] "title" "current" "previous" "gross"
attach(movies) # to access the names above
boxplot(current,main="current receipts",horizontal=TRUE)
boxplot(gross,main="gross receipts",horizontal=TRUE)
detach(movies) # tidy up