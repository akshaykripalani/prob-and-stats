# Code by Akshay Kripalani
data(iris)
hist(iris$Sepal.Width, xlab="Sepal Width", col="red", border="black")

# Code by Akshay Kripalani
site <- c("Site1", "Site2", "Site1", "Site2", "Site1", "Site2")
cu <- c(19.700, 10.643, 33.792, 5.353, 19.890, 26.966)
boxplot(cu ~ site, 
        main="Copper concentration",
        xlab="Site", 
        ylab="Cu",
        col=c("red", "black"))
data <- data.frame(Site = site, Cu = cu)
write.csv(data, file = "copper_concentration.csv", row.names = FALSE)


# Code by Akshay Kripalani
city <- c("Seattle", "London", "Tokyo", "Berlin", "Mumbai")
productA <- c(23, 89, 24, 36, 3)
productB <- c(11, 6, 7, 34, 78)
productC <- c(12, 56, 13, 44, 14)

data <- data.frame(City=city, ProductA=productA, ProductB=productB, ProductC=productC)
write.csv(data, file = "sales.csv", row.names = FALSE)

data$TotalSales <- rowSums(data[2:4])

library(ggplot2)

ggplot(data, aes(x=City, y=TotalSales, fill=City)) + 
  geom_bar(stat="identity") +
  labs(title="Total Sales Across Different Cities", x="City", y="Total Sales")



# Code by Akshay Kripalani
library(ggplot2)
data("swiss")
ggplot(swiss, aes(x=Catholic, y=Fertility)) + 
  geom_point() +
  geom_smooth(method="lm", col="blue", se=FALSE) +
  labs(title="Scatterplot of Fertility against %Catholic",
       x="% Catholic",
       y="Fertility")

# Code by Akshay Kripalani
sampleFactor <- factor(c("apple", "banana", "apple", "cherry", "banana"))
print("Original factor:")
print(sampleFactor)
print("Original levels:")
print(levels(sampleFactor))
levelsList <- levels(sampleFactor)
levelsList[1] <- "red"
levels(sampleFactor) <- levelsList
print("Updated factor:")
print(sampleFactor)
print("Updated levels:")
print(levels(sampleFactor))


# Code by Akshay Kripalani
months <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December",
            "January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")

ordered_months <- factor(months, levels = c("January", "February", "March", "April", "May", "June", 
                                            "July", "August", "September", "October", "November", "December"), 
                         ordered = TRUE)
print(ordered_months)
x <- c(75, 58, 95, 26, 34, 56, 32, 78, 90, 33, 21, 11, 45, 67)
y <- c(56, 58, 74, 89, 34, 12, 32, 78, 90, 22, 21, 11, 33, 67)
labels <- c("A", "B", "C", "D")
pie(x, labels = labels, main = "Pie Chart of x with Labels")
pie(y, main = "Pie Chart of y without Labels")


# Code by Akshay Kripalani
data(mtcars)
boxplot(mpg ~ cyl, data = mtcars, 
        xlab = "Number of Cylinders", 
        ylab = "Miles Per Gallon", 
        main = "Boxplot of MPG by Cylinder Count",
        col = "orange")

