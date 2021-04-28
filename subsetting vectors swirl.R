library(swirl)
swirl()
cy
1
6

x
x[1:10]
x[is.na(x)]
y<-x[!is.na(x)]
y
2
1
5
y[y>0]
x[x>0]
x[!is.na(x) & x>0]

x[c(3,5,7)]
x[0]
x[3000]


x[c(-2,-10)] ##Luckily, R accepts negative integer indexes. Whereas x[c(2, 10)] gives us ONLY the 2nd and 10th elements of x, x[c(-2,-10) gives us all elements of x EXCEPT for the 2nd and 10th elements
x[-c(2,10)] ## same thing


vect <- c(foo = 11, bar = 2, norf = NA)
vect
names()
names(vect)


vect2<-c(11, 2, NA)
names(vect2)<-c("foo", "bar", "norf")
identical(vect,vect2)

vect["bar"]
vect[c("foo", "bar")]
