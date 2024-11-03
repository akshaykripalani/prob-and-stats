# Question 1, Code by Akshay Kripalani
xMean <- 65
yMean <- 67
sdX <- 2.5
sdY <- 3.5
r <- 0.75
x <- 70

byx <- r * (sdY / sdX)
a <- yMean - byx * xMean

yPred <- a + byx * x

print(paste("The most likely price in Mumbai corresponding to the price of Rs. 70.00 at Calcutta is:", yPred))


# Question 2 & 3, Code by Akshay Kripalani
xwt = c(25,27.5,32.5,35,45)
ybraketime = c(102,125,140,140,150)
carscorr = cor(xwt,ybraketime)
print(paste("Correlation", carscorr))
print("Strong positive linear Correlation")

# Question 4, Code by Akshay Kripalani
datacars = data.frame(Auto)
modelcars <- lm(mpg ~ . - name, data = datacars) 
summary(modelcars)

# Question 5, Code by Akshay Kripalani
model = lm(Sales ~ Price + Urban + US, data = Carseats)
summary(model)
  
# Question 6, Code by Akshay Kripalani
y_mean <- 0.5
x_mean <- (14 + 2 * y_mean) / 5

x_mean
y_mean

#x + 6y = 6 is equation of Y on X
#3x + 2y = 10 is equation of X on Y
#we can say
byx= -1/6
bxy= -2/3
r =(byx*bxy)**0.5
r


