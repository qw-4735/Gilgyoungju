<범주형 data/Frequency of univariate variable 일변량(분포가 변량이 하나인)>
counts=table(state.region) #state.region에 있는 변수들의 빈도계산
counts
barplot(counts, main="simple bar chart", xlab="region", ylab="freq", cex.names = 0.8 )
freq.cyl=table(mtcars$cyl) #mtcars에 있는 cyl변수의 빈도계산
freq.cyl
barplot(freq.cyl,main="simple bar chart", col="orange")
cyl.name= c("4cyl","6cyl","8cyl")
barplot(freq.cyl, main="simple bar chart", col="orange", names.arg = cyl.name) #names.arg는 levels의 이름들을 가져와 플롯에 그 이름들을 추가해준다.

<두 개 이상의 범주형 변수/frequency of multivariate variables 다변량>
paste0("a","1") #paste0(숫자, 문자,변수...) : 문자형 벡터로 return
paste0("a",1:10)
cyl.name2=paste0(cyl.name, "(", freq.cyl, "%)")
cyl.name2
pie(freq.cyl, labels = cyl.name2, col=rainbow(length(freq.cyl)), main="pie chart")

install.packages("vcd")
library(vcd)
head(Arthritis, n=3)
my.table<-xtabs(~Treatment+Improved, data= Arthritis) #xtabs(~행변수+열변수) : formula를 이용해서 상대빈도(빈도)를 구한다.
my.table
barplot(my.table, xlab="Improved", ylab="Frequency", legend.text =TRUE, col = c('green','red'))
barplot(t(my.table), xlab="Improved", ylab="Frequency", legend.text = TRUE, col= c('green','red','orange')) #t(my.table) :table의 행과 열을 바꾼다. 

tmp=c("buckled","unbuckled")
belt<- matrix(c(58,2,8,16),ncol=2, dimnames = list(parent=tmp, child=tmp)) #dimnames는 matrix의 행과 열 각각에 이름부여
belt
spine(belt, main="spine plot for child seat-belt usage", gp=gpar(fill=c("green","red")))

<연속형 변수의 시각화>
x=rnorm(100)
boxplot(x,main="boxplot", col="lightblue")
x=faithful$waiting
hist(x, nclass=8) #nclass=8 : 구간 8씩

hist(x, breaks= seq(min(x),max(x),length=10),probability = T) #break : bin의 크기 설정 (min(x)와 max(x)를 포함하여 점 10개를 등간격으로-> bin이 9개)
hist(faithful$waiting, nclass=10, probability = T) #probability=T : 높이를 상대빈도로 설정
lines(density(x),col='red', lwd=2) #density(): 커널 방법에 의한 밀도 추정 결과

<visualization for multivariate variables/ 다변량 변수(연속형변수+ 범주형변수1개)의 시각화>
attach(mtcars)
boxplot(mpg~cyl, data=mtcars, names=c('4cyl','6cyl','8cyl'), main="MPG dist by cylinder")
hist(mpg[cyl==4],xlab="MPG", main="MPG dist by cylinder", xlim=c(5, 40), ylim = c(0,10),
     col="lightblue", nclass = trunc(sqrt(length(mpg[cyl==4])))) #trunc: 소수점 없애는 함수
hist(mpg[cyl==6],xlab="MPG", main="MPG dist by cylinder", xlim=c(5, 40), ylim = c(0,10),
     col="orange", nclass = trunc(sqrt(length(mpg[cyl==6]))),add=TRUE)
hist(mpg[cyl==8],xlab="MPG", main="MPG dist by cylinder", xlim=c(5, 40), ylim = c(0,10),
     col="red", nclass = trunc(sqrt(length(mpg[cyl==8]))),add=TRUE)

par(mfrow=c(3,1))
hist(mpg[cyl==4],xlab="MPG", main="MPG dist by cylinder", xlim=c(5, 40), ylim = c(0,10),
     col="lightblue", nclass = trunc(sqrt(length(mpg[cyl==4]))))
hist(mpg[cyl==6],xlab="MPG", main="MPG dist by cylinder", xlim=c(5, 40), ylim = c(0,10),
     col="orange", nclass = trunc(sqrt(length(mpg[cyl==6]))))
hist(mpg[cyl==8],xlab="MPG", main="MPG dist by cylinder", xlim=c(5, 40), ylim = c(0,10),
     col="red", nclass = trunc(sqrt(length(mpg[cyl==8]))))
