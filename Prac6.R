#-------------EXPERIMENT 5 CONTINUED------------------#

#Question 4, code by Akshay Kripalani
numstudents = 1000
mean = 14
sd = 2.5

p12and15 = pnorm(15,mean,sd) - pnorm(12,mean,sd)
num12and15 = round(p12and15*numstudents)
print(paste("Number of students between 12 and 15: ",num12and15))

pgreater18 = pnorm(18,mean,sd, lower.tail = FALSE)
numgreater18 = round(pgreater18*numstudents)
print(paste("Number of students between above 18: ",numgreater18))

pless8 = pnorm(8,mean,sd)
numless8 = round(pless8*numstudents)
print(paste("Number of students less than 8: ",numless8))

x = seq(0,28,length=1000)
y = dnorm(x,mean,sd)
df = data.frame(x,y)

p1 = ggplot(df, aes(x, y)) +
  geom_line() +
  geom_area(data = subset(data.frame(x, y), x >= 12 & x <= 15), fill = "lightblue", alpha = 0.5)

print(p1)

p2 = ggplot(df, aes(x, y)) +
  geom_line() +
  geom_area(data = subset(data.frame(x, y), x >= 18 & x <= 28), fill = "lightblue", alpha = 0.5)
print(p2)

p3 = ggplot(df, aes(x, y)) +
  geom_line() +
  geom_area(data = subset(data.frame(x, y), x >= 0 & x <= 8), fill = "lightblue", alpha = 0.5)
print(p3)

#Question 5, code by Akshay Kripalani
nummen = 1000
meanheight = 68.16
sdheight = 3.2
numtall6ft = round(nummen * pnorm(72,68.16, 3.2, lower.tail = FALSE))
print(paste("Number of men taller than 6ft: ",numtall6ft))

xheight = seq(meanheight*0.75, meanheight*1.25, length = 1000)
yheight = dnorm(xheight, 68.16, 3.2)
p4 = ggplot(data.frame(xheight,yheight), aes(xheight,yheight)) + geom_line() + geom_area(data = subset(data.frame(xheight,yheight), xheight>=72), fill="skyblue", alpha = 0.5)
print(p4)

#------------------EXPERIMENT 6----------------------#


#Question 1, code by Akshay Kripalani
judgeA = c(8, 7, 6, 3, 2, 1, 5, 4)
judgeB = c(7, 5, 4, 1, 3, 2, 6, 8)

correlation = cor(judgeA, judgeB)

print(paste(" Pearson Correlation coefficient is", correlation))

spearcorr = cor(judgeA, judgeB, method = "spearman")

print(paste("Spearman correlation coefficient:", spearcorr))
#Given the correlation: They are roughly correlated with each other
plot(judgeA, judgeB, xlab = "Judge A Rankings", ylab = "Judge B Rankings")


#Question 2, code by Akshay Kripalani
x = c(62, 64, 65, 69, 70, 71, 72, 74)
y = c(126, 125, 139, 145, 165, 152, 180, 208)
xycorr = cor(x,y)
print(paste("Correlation: ", round(xycorr, digits=4)))

#Question 3, code by Akshay Kripalani

dfair = airquality
dfair = na.omit(dfair)
matair = cor(dfair)
corrplot(matair, method="color", type="lower", tl.col="black", tl.srt=45)
#Solar radiation and ozone are weakly correlated - as radiation increases ozone production
#Wind is negatively correlated with ozone as wind disperses ozone
#Temp is positively correlated as high temperatures result in increased ozone production


dffaith = faithful
matfaith = cor(dffaith)
corrplot(matfaith, method="color", type="lower", tl.col="black", tl.srt=45)
#Duration & waiting time: Positive correlation as longer eruptions are followed by longer waiting times.

dftree = trees
mattree = cor(dftree)
corrplot(mattree, method="color", type="lower", tl.col="black", tl.srt=45)
#Girth and height: A positive correlation is expected - larger trees tend to be taller.
#Girth and volume: A very strong positive correlation is because larger girth means more wood volume

dflongley = longley
matlongley = cor(dflongley)
corrplot(matlongley, method="color", type="lower", tl.col="black", tl.srt=45)
#This dataset is known for its multicollinearity
#(high correlation between predictor variables)
#This makes it difficult to disentangle the effect of each variable on the other
#However some effects are obvious, as population increases, GNP increases
#As employment increases, GNP Increases
#As the years go on, population increases

#However, the dataset is quite small with only 16 observations so concrete conclusions
#cannot be easily made. correlations can be influenced by outliers or short-term 
#trends that might not represent a long-term relationship.

#Question 4, code by Akshay Kripalani
tsla = "TSLA"
ford = "F"

start_date = "2023-01-01"
end_date = "2023-12-31"

getSymbols(tsla, from = start_date, to = end_date)
getSymbols(ford, from = start_date, to = end_date)

tslaReturns = dailyReturn(TSLA)1
fordReturns = dailyReturn(F)


correlation = cor(tslaReturns, fordReturns)

print(paste("Correlation:", correlation))
#Correlation is 0.386, which indicates some amount of correlation between tesla 
#and ford stocks, however it is not necessary that they both go up and down together
