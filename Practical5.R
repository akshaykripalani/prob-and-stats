#Example question 1, code by Akshay Kripalani
pdf_custom = function(x){
  if (x>=0)
  {
    return((1/2)*exp(-x/2))
  }
  else
    return(0)
}
pdf_custom = Vectorize(pdf_custom)
xvals = seq(-1,1, length.out=10)

pdf_values = pdf_custom(xvals)

if (all(pdf_values>=0)){
  print("The function is non negative over the specified domain")
} else {
  print("The function is negative at some points")
}

result = integrate(pdf_custom, lower = 0, upper = Inf)
print(paste("Integral is ", result$value))

#Example Question 2, code by Akshay Kripalani
pfall =function(x){
  if((x>0)&(x<2))
    return((3/4)*(2*x-x**2))
  else return(0)
}
pfall=Vectorize(pfall)
prob0to1 = integrate(pfall, lower = 0, upper = 1)$value
print(paste("Probability 0 to 1", prob0to1))
prob1.5up = integrate(pfall, lower = 1.5, upper = 2)$value
print(paste("Probability 0 to 1 ", prob1.5up))
prob0.5to1.5 = integrate(pfall, lower = 0.5, upper = 1.5)$value
print(paste("Probability 0 to 1 ", prob0.5to1.5))

#Question 1, code by Akshay Kripalani
pf1 = function(x){
  if ((x>0)&(x<3)){
    return(x*x)
  } else {
    return(0)
  }
}
pf1 = Vectorize(pf1)
cres = (integrate(pf1, lower=0,upper=3)$value)
cval = 1/cres
print(cval)
p1to2 = cval*integrate(pf1, lower = 1, upper = 2)$value
print(p1to2)


#Question 2, code by Akshay Kripalani
pf2 = function(x){
  if (x>=0){
    return (x*x*exp(-x))
  }  else {
    return(0)
  }
}
pf2 = Vectorize(pf2)
k = 1/(integrate(pf2, lower=0, upper=Inf)$value)
print(k)
pf2norm = function(x) k*pf2(x)

mean = integrate((function(x) x * pf2norm(x)), lower = 0, upper = Inf)$value
print(mean)
variance = integrate((function(x) x*x * pf2norm(x)), lower = 0, upper = Inf)$value - mean*mean
print(variance)

#Question 3, code by Akshay Kripalani
pf3 = function(x){
  if ((x>=0)&(x<=1)){
    return(x^3)
  } else if ((x>=1)&(x<=2)) {
    return(3*(2-x)^3)
  } else {
    return(0)
  }
}
pf3 = Vectorize(pf3)

res3 = integrate(pf3, lower = 1/4, upper = 3/4)$value
print(res3)
