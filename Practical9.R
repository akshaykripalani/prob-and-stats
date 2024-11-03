#Q1
rainfall = c(31.1, 30.7, 24.3, 28.1, 27.9, 32.2, 25.4, 29.1)
test = t.test(rainfall,y = NULL, alternative = "two.sided", mu = 30, paired = FALSE, var.equal = FALSE, conf.level = 0.95)
print(test)
if (test$p.value < 0.05) {
  print("We reject the null hypothesis and conclude that average rainfall is significantly less than 30.")
} else {
  print("We accept null hypothesis and conclude that average rainfall is not significantly less than 30.")
}

#Q3
x = c(55,60,65,75,49,25,18,30,35,54,61,72)
y  = c(63,70,70,81,54,29,21,38,32,50,70,80)
test = t.test(x,y,alternative = "less",paired = TRUE,var.equal=FALSE, conf.level = 0.95)
print(test)
if(test$p.value<0.05){
  print("We reject null hypothesis")
} else{
  print("We accept null hypothesis")
}
