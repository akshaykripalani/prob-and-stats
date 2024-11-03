#Question 1, code by Akshay Kripalani
mu = 1.5
x = 1.52
sig = 0.2
n = 100
alpha = 0.05

zstat = (x - mu) / (sig / sqrt(n))
zstat
zalpha = qnorm(1 - alpha / 2)
zalpha

if (abs(zstat) < zalpha) {
  print("We accept H0 and conclude that the machine is fulfilling its purpose")
} else {
  print("We reject H0 and conclude that the machine is not fulfilling its purpose")
}

#Question 2, code by Akshay Kripalani
x1 = 72
x2 = 70

s1 = 8
s2 = 6

n1 = 32
n2 = 36

alpha = 0.01

zstat = (x1 - x2) / sqrt((s1^2 / n1) + (s2^2 / n2))
zstat
zalpha = qnorm(1 - alpha / 2)
zalpha

if (abs(zstat) < zalpha) {
  print("We accept H0 and conclude that boys perform equal to girls")
} else {
  print("We reject H0 and conclude that boys do not perform equal to girls")
}


#Question 3, code by Akshay Kripalani
mu = 5
x = 4.45
vari = 4
sig = sqrt(vari)
n = 400
alpha = 0.05

zstat = (x - mu) / (sig / sqrt(n))
zstat
zalpha = qnorm(1 - alpha / 2)
zalpha

if (abs(zstat) < zalpha) {
  print("We accept H0 and conclude that the sample can be reasonably regarded as from a population with mean 5 cm")
} else {
  print("We reject H0 and conclude that the sample cannot be reasonably regarded as from a population with mean 5 cm")
}


#Q4                                                                                                                                                               # Q3)Given 
expected_fatality_rate = 0.1726
patients = 640
deaths = 63

expected_deaths = expected_fatality_rate * patients

test = prop.test(deaths, patients, p = expected_fatality_rate, alternative = "less")

print(test)
if (test$p.value < 0.01) {
  print("The hospital is not efficient at the 1% level of significance.\n")
} else {
  print("The hospital is efficient at the 1% level of significance.\n")
}

#Q5
smokers_undergraduates = 0.155 * 1600

smokers_postgraduates = 0.20 * 900

total_undergraduates = 1600

total_postgraduates = 900

prop_test_result = prop.test(c(smokers_undergraduates, smokers_postgraduates), 
                             
                             c(total_undergraduates, total_postgraduates), 
                             
                             alternative = "less")

print(prop_test_result)

if (prop_test_result$p.value < 0.05) {
  
  print("Reject hypothesis")
  
} else {
  
  print("Accept hypothesis")
  
}