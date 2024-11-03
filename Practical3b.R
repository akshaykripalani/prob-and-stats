#3b Question 1. Code by Akshay Kripalani

nonepass = dbinom(0,10,p=0.5)
print(nonepass)
onepass = dbinom(1,10,p=0.5)
print(onepass)
atleastonepass = pbinom(0,10,0.5,lower.tail = FALSE, log.p=FALSE)
print(atleastonepass)

#3b Question 2. Code by Akshay Kripalani
mean = 5
variance = 10/3
p = 1-(variance/mean)
print(p)
n = mean/p
print(n)
x = seq(0,n,by=1)
pdf = dbinom(x, n, p, log = FALSE)
plot(x,pdf)
cdf = pbinom(x,n,p,log.p=FALSE)
plot(x,cdf)

#3b Question 3. Code by Akshay Kripalani
prob3 = dpois(3,7.6, log = FALSE)
print(prob3)
probless3 = ppois(2,7.6, log.p = FALSE)
print(probless3)

#3b Question 4. Code by Akshay Kripalani
samps = rbinom(8, 150, p=0.4)
print(samps)

#3b Question 5. Code by Akshay Kripalani
noofheads = qbinom(0.25, 51, 0.5,log = FALSE)
print(noofheads)
prob26orless = pbinom(26,51,0.5,log.p=FALSE)
print(prob26orless)
