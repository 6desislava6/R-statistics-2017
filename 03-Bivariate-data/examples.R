smokes = c("Y","N","N","Y","N","Y","Y","Y","N","Y")
amount = c(1,2,2,3,3,1,2,1,3,2)

amount = factor(amount)
levels(amount) = c("less", "5 to 10", "more")


table_of_data = table(smokes,amount)
prop_table = prop.table(table_of_data)
prop_table
table_of_data
prop.table(table_of_data, 1)

############################


barplot(table(smokes,amount))
barplot(table(amount,smokes))
smokes = factor(smokes) # for names
barplot(table(smokes,amount), beside=TRUE, legend.text=T)

barplot(table(amount,smokes),main="table(amount,smokes)",
        beside=TRUE,
        legend.text=c("less than 5","5-10","more than 10"))


######################
mult2 = function(x) x*2
apply(table_of_data, 1, mult2)

prop = function(x) x/sum(x)
prop.table(table_of_data, 2)  #е като 
apply(table_of_data, 2, prop)

prop.table(table_of_data, 1)
apply(table_of_data, 1, prop)
t(apply(table_of_data, 1, prop)) 

#########################

x = c(5, 5, 5, 13, 7, 11, 11, 9, 8, 9)
y = c(11, 8, 4, 5, 9, 5, 10, 5, 4, 10)
boxplot(x,y)


amount = scan()
# 5 5 5 13 7 11 11 9 8 9 11 8 4 5 9 5 10 5 4 10
category = scan()
#  1 1 1 1 1 1 1 1 1 1 2 2 2 2 2 2 2 2 2 2
boxplot(amount ~ category) 

##############
library("UsingR")
data(home)
attach(home)
names(home)
boxplot(old, new)
stripchart(home, col=c("orange","red"))

simple.violinplot(old, new)
simple.violinplot(scale(old),scale(new))


###########
plot(old, new)
abline(lm(old, new))
###########

simple.lm(old, new)


##################
data('florida')
names(florida)
attach(florida)
simple.lm(BUSH, BUCHANAN)
identify(BUSH, BUCHANAN, n=2)

# махаме 50ия елемент
simple.lm(BUSH[-50],BUCHANAN[-50])

################

z = seq(0, 4, by=.1) 
plot(z, z^2, type="l")

curve(x^2, 0, 4)
curve(x ^2)

###############
miles = (0:8)*4
tread = scan() #  394 329 291 255 229 204 179 163 150
plot(miles,tread)
abline(lm(tread ~ miles))
points(miles, 360 - 7.3*miles, type="l")
lines(miles,360 - 7.3*miles)
curve(360 - 7.3*x,add=T)
