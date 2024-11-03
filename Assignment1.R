#Q1 Skewness and Kurtosis
m1 = 2
m2 = 10
m3 = -30

momentsabout3 = c(1, m1, m2, m3)
central_moments = raw2central(momentsabout3)

mean = 3 + m1
variance = central_moments[3]
skewness = central_moments[4] / (central_moments[3]^(3/2))

print(paste("Mean:", mean))
print(paste("Variance:", variance))
print(paste("Skewness:", skewness))
print(central_moments)

#Q2 Skewness and Kurtosis

x = c(1, 2, 3, 4, 5, 6, 7, 8)
p = c(0.008, 0.032, 0.142, 0.216, 0.240, 0.206, 0.143, 0.013)
x1 = sum(x*p)
x2 = sum(x^2 *p)
x3 = sum(x^3 *p)
x4 = sum(x^4 *p)
raw_x = c(1,x1,x2,x3,x4)
cent_x = raw2central(raw_x)
skew_x = cent_x[4]/cent_x[3]^(3/2)
kurt_x = cent_x[5]/cent_x[3]^2
print(paste("Skewness:", skew_x))
print(paste("Kurtosis:", kurt_x))

#Q3
students = read_xlsx("C:\\Akshay\\College\\2. SY\\Sem 3\\PS\\students.xlsx")
barplot(students$maths, names.arg = students$rollno, main="Maths Marks", ylab = "Maths Marks", xlab="Rollno")
barplot(students$phys, names.arg = students$rollno, main="Physics Marks", ylab = "Physics Marks", xlab="Rollno")
barplot(students$chem, names.arg = students$rollno, main="Chemistry Marks", ylab = "Chemistry Marks", xlab="Rollno")

students$percentage = (students$maths + students$phys + students$chem)/3

above40 = sum(students$percentage>=40)
below40 = sum(students$percentage<40)
pie(c(above40,below40), labels=c(">=40%","<40%"),main = "Number of Students Above and Below 40%")
