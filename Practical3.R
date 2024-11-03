#3a Q1, code by Akshay Kripalani
f = function(k) (k + (2*k) + (3*k) + (k*k) + ((k*k)+k) + (2*(k*k)) + (4*(k*k))-1)
k = uniroot(f, lower = 0, upper = 1)$root
print(k)
eq = c(k, (2*k), (3*k), (k*k), ((k*k)+k), (2*(k*k)), (4*(k*k)))
result = pdiscrete(4, eq, c(1:7))
result5 = pdiscrete(5, eq, c(1:7))
print(result)
print(result5)

barplot(eq, main="Probability Distribution", ylab="Probability", xlab="Categories", col="red")
cumu_result = cumsum(eq)
barplot(cumu_result, main="Cumulative Distribution", ylab="Cumulative Probability", xlab="Categories", col="red")

#3a Q2, code by Akshay Kripalani
f2 = function(k) (0.1+k+0.2+2*k+0.3+3*k-1)
k2 = uniroot(f2,lower=0,upper=1)$root
print(k2)

eq2=c(0.1,k2,0.2,2*k2,0.3,3*k2)
res2 = pdiscrete(1,eq2,c(-2:3))
print(res2)
cumu_res2 = cumsum(eq2)
barplot(cumu_res2, main="Probability Distribution", ylab="Probability", xlab="Categories", col="red")

#3a Q4, code by Akshay Kripalani
x = c(-3, -2, -1, 0, 1, 2)
prob = c(0.05, 0.1, 0.2, 0.3, 0.2, 0.15)

mean = sum(x * prob)
variance = sum((x - mean)^2 * prob)
print(mean)
print(variance)

df = data.frame(x, prob)
barplot(df$prob, names.arg = df$x, 
        main = "Probability Distribution",
        xlab = "X", ylab = "Probability",
        col = "red")

cumulative_prob = cumsum(prob)
barplot(cumulative_prob, names.arg = df$x, 
        main = "Cumulative Distribution Function",
        xlab = "X", ylab = "Cumulative Probability",
        col = "red")

#3a Q3, code by Akshay Kripalani
x = c(-2,1,0,1,2) 
v = (x*x)+1 
print(v)
pr = c(1/5,1/5,2/5,2/15,1/15) 
t = tapply(pr, v, sum) 
print(t) 
barplot(t, xlab = "results", ylab="Probability",main="Probability Distribution", col="red") 
barplot(cumsum(t),xlab = "results", ylab="Probability",main="Cumulative Probability Distribution",col="red") 

#3a Q4, code by Akshay Kripalani
x4 = c(-3,-2,-1,0,1,2)
p4 = c(0.05,0.1,0.2,0.3,0.2,0.15)

mean4 = sum(x4*p4)
print(mean4)

variance4 = sum((x-mean)^2 * p4)
print(variance4)
pdf4 = ddiscrete(x4, p4, values=(-3:2))
barplot(pdf4, xlab="results", ylab="Probability",main="Probability Distribution", col="red", names.arg=x4)
cdf4 = pdiscrete(x4, p4, values=(-3:2))
barplot(cdf4, xlab="results", ylab="Probability",main="Cumulative Probability Distribution", col="red", names.arg=x4)


#3a Q5, code by Akshay Kripalani
f3 = function(k) ((3*(k*k*k)) + ((4*k) - (10*k*k)) + 5*k - 1 - 1)
k3 = uniroot(f3, lower = 0, upper = 3)$root
print(k3)

eq = c((3*k3*k3*k3), (4*k3 - 10*k3*k3), (5*k3-1))
res3 = pdiscrete(0, eq, c(0,1,2))
print(res3)
res4 = pdiscrete(2, eq, c(0,1,2))-pdiscrete(1, eq, c(0,1,2))
print(res4)
res5 = pdiscrete(2, eq, c(0,1,2))-pdiscrete(0, eq, c(0,1,2))
print(res5)
