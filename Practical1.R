#code by Akshay Kripalani, Roll no B065
namesoffriends = c("Amar","Akbar","Anthony")
len = length(namesoffriends)
print(len)
two = namesoffriends[1:2]
print(two)
three = namesoffriends[2:3]
print(three)
sort(namesoffriends)
friends = namesoffriends[order(namesoffriends)]
print(friends)

#code by Akshay Kripalani, Roll no B065
currentyear = 2024
timestartuni = 2023L
diffuni = currentyear-timestartuni
born = 2005L
percdecimal = diffuni / (currentyear-born)
perc = percdecimal*100
print(perc)

#code by Akshay Kripalani, Roll no B065
l1 = c(4,5,7,11)
lsum = sum(l1)

#code by Akshay Kripalani, Roll no B065
x = c(1,2,3)
y = c(4,5,6)
z = c(7,8,9)
xyz = matrix(data = c(x,y,z), nrow=3, ncol=3, FALSE, dimnames=list(c("a","b","c")))
xyz

#code by Akshay Kripalani, Roll no B065
#vector is a collection of elements, it is made by using c operator
A = c(5,2,-2,6,7,10,12,14,15)
A
Y = A[A>6]
Y

#code by Akshay Kripalani, Roll no B065
vec = c(1,'a',2,'b')
class(vec)
Y

#code by Akshay Kripalani, Roll no B065
numvec = c(1, 2, 3, 4, 5)
print(numvec)
print(class(numvec))

charvec = c('a', 'b', 'c', 'd', 'e')
print(charvec)
print(class(charvec))

logicvec = c(TRUE, FALSE, TRUE, FALSE, TRUE)
print("Logical Vector:")
print(logicvec)
print(class(logicvec))

#code by Akshay Kripalani, Roll no B065
mat45 = matrix(data = c(1:20), nrow = 4, ncol = 5)
mat45
mat32 = matrix(data = c(1:6), nrow = 3, ncol = 2, byrow = TRUE)
mat32
mat22 = matrix(data = c(1:4), nrow = 2, ncol = 2, byrow = FALSE, dimnames = list(c('a','b'),c('x','y')))
mat22

#code by Akshay Kripalani, Roll no B065
vec = c(1,2,3,4,5,6)
sumvec = sum(vec)
sumvec
prodvec = prod(vec)
prodvec
meanvec = mean(vec)
meanvec

#code by Akshay Kripalani, Roll no B065
data(airmiles)
print(airmiles)

#code by Akshay Kripalani, Roll no B065
mat1 = matrix(data = c(1:16), nrow = 4, ncol = 4)
mat2 = matrix(data = c(1:16), nrow = 4, ncol = 4, byrow = TRUE)
print(mat1+mat2)
print(mat1-mat2)
print(mat1%*%mat2)

#code by Akshay Kripalani, Roll no B065
myvector = c(1, 2, 3, 4, 5)
mymatrix = matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12), nrow = 4, ncol = 3)
mylist = list(c(11, 22, 33), c(44, 55, 66, 77))
mymainlist = list(myvector, mymatrix, mylist)

# print the main list
print(mymainlist)
