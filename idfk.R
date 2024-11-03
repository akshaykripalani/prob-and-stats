#Example 1, code by Akshay Kripalani
x = c(1,2,3,4,5,5:10,5,6,7,8,9,10)
mean(x)
mfv(x)
median(x)
range=max(x)-min(x)
print(range)
var(x)

rawmoms = c(all.moments(x,order.max=4))
centralrawmoms=raw2central(rawmoms)
central2raw(centralrawmoms,eta=mean(x))

#Example 2, code by Akshay Kripalani
y = c(0,1,2,3)
p = c(0.1,0.2,0.3,0.4)
m0=1
m1=sum(y*p)
m2=sum(y*y*p)
m3=sum(y**3 *p)
m4=sum(y**4 *p)
m = c(m0,m1,m2,m3,m4)
m
centralm = raw2central(m)
centralm
duration = faithful$eruptions
moment(duration,order=3,central=TRUE)

#Q1, code by Akshay Kripalani
x=c(0,1,2)
p=c(1/3,1/3,1/3)
r0=1
r1=sum(x*p)
r1
r2=sum(x^2*p)
r2
r3=sum(x^3*p)
r3
r4=sum(x^4*p)
r4
m=c(r0,r1,r2,r3,r4) 
c=raw2central(m)
central2raw(c,eta=r1) 
m

#Q2, code by Akshay Kripalani
a=3
m31=2
m32=10
m33=-30
rw1=a+m31
rw1
rw2=(2*a*rw1) - (a^2) + 10
rw2
rw3= (3*a*rw2) - (3*a^2*rw1) + (m33) + (a^3)
rw3
m=c(0,rw1,rw2,rw3)
mean= rw1 #mean= first r moment
centm=raw2central(m)
centm
variance=centm[2] # var is 2 central moment
variance
skewness=centm[3]/centm[2]^(3/2)
skewness 

#Q3, code by Akshay Kripalani
x = c(0, 1, 2, 3)
p = c(1/4, 1/4, 1/4, 1/4)
m=mean(x)
m
e2=sum(x^2 * p)
e2
variance= e2-mean^2
variance 

#Q4, code by Akshay Kripalani
x = c(-2, 3, 1)
p = c(1/3, 1/2, 1/6)
rw0= 1
rw1=sum(x*p)
rw1
rw2=sum(x^2 * p)
rw2
rw3=sum(x^3 * p)
rw3
rw4=sum(x^4 * p)
rw4
m=c(rw0,rw1,rw2,rw3,rw4)
c=raw2central(m) 
central2raw(c,eta=rw1)
m 