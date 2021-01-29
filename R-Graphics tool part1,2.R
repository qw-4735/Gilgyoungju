R-Graphicss tool/21
1)plotting points
attach(mtcars)
head(mtcars,n=2) #앞에 두줄을 보여줘라
?mtcars
plot() # 두변수간의 관계를 보여줌
plot(mpg~disp,data=mtcars) #y축~x축 / 하나의 데이터를 2차원상에 표시(disp, mpg)
x=rnorm(100) #표준정규분포에 대한 100개의 무작위 숫자를 산출하라
y=2+2*x+rnorm(100)
plot(x,y,main="plot(x-y)") #plot title 지정 / plot을 그리기 위해 vector들을 사용할 수 있다.

<drawing option>
1. type : 점과 관련된 graphical object를 바꾸고 싶을 때.
type='p' : point #점만 찍어라.
type='l' :line # 점과 점사이를 "순차적으로" 선으로 이어라.
type='b': both point and line
type='step' :step #계단식으로.
x=seq(-2,2, length=10)
y=x^2
plot(x,y, type='p', main="y=x^2")
plot(x,y,type="b", lty=3, main="y=x^2") #lty=3 점사이를 연결하는 'line type을 설정'
plot(x,y,type = "b", lty=3, pch=2, main="y=x^2") #pch=2 'point 모양 설정'
plot(x=1:25, y= rep(0,25), pch=1:25) 
plot(x,y,type='b',lty=3, pch=2, col="blue",main="y=x^2") #col="blue" 'plot의 색깔 설정'
colors()[1:10] #이용가능한 color들의 이름 리스트
<Axis option>
plot(x,y, type="b", xlab="xx",ylab ="yy", main="y=x^2") # xlab="xx",ylab ="yy" x축 이름, y축 이름 설정

plot(~mpg+disp+drat, data=mtcars, main="Simple Scatterplot Matrix") #drawing multiple plots #formula ~ + +
?set.seed
?rpois

2)Add lines and points
abline # y=a+bx 기울기가 있는 직선, 수평선, 수직선 그려준다.
x=rnorm(100) #x~ N(0,1) , i=1,2,..,100
y=2+2*x +rnorm(100) #y=2+2x+오차항 오차항~N(0,1)/독립
plot(x,y,pch=20,main='scatter plot') #pch= point character
abline(a=1,b=2,col="red")  # y=1+2x
abline(v=1, col="blue") #v= vertical 수직 /x=1
abline(h=1, col="green") #h= horizontal 수직 /y=1

points <- 이미 만들어진 도화지에 '추가로 점찍을 수 있다.'
plot(x=1,y=1,type='n',xlim=c(0,10), ylim = c(0,5), xlab = 'time', ylab = '#of visiting') #type='n' :none (점찍지마라)
x=0:10                                                                                   #xlim,ylim :x축과 y축의 범위
set.seed(1)
y=rpois(length(x),lambda=1) #포아송분포(포아송 난수생성) 
points(x,y,col="blue",type = "s") #type : 점을 이을 수 있다. 어떤 방식으로?
points(x,y,col="red", type = "l")

x=0:10                                                                                  
set.seed(1)
y=rpois(length(x),lambda=1)
plot(x,y,type="b",xlab = "x-variable", ylab="y-variable", main="y=x^2", xlim=c(-1,1), ylim= c(-1,1))

plot(mpg~disp, data=cars, xlab="displacement", ylab="mile/gallon", main="scatter plot", pch=20, col="darkblue")

lines() <- '인접한' 두 점을 연결
plot(0,0, type='n', xlim=c(-2,2), ylim=c(-2,2))
x=c(-2,1,0,1,0)
y=c(0,-1,2,-2,1)
lines(x,y) #오직 인접한 두점만, 떨어져 있는 점들은 연결 안됨.

plot(0,0,type='n',xlim=c(-2,2),ylim = c(-2,2))
x=c(-2,1,NA,1,0)    #NA값이 들어감으로써 line을 끊을 수 있다.
y=c(0,-1,NA,-2,1)
lines(x,y)
lines(x,y,lty=2) #lty: line type

plot(0,0, type='n', xlim=c(1,5), ylim=c(0,2))
x=seq(1,5, by=1)
abline(v=x, lty=1:length(x)) #lty=1:5 line type이 다 다르게 설정

legend()
z=sort(rnorm(100))
y1=2+z+rnorm(100)
plot(z,y1,col="blue",pch=3)
points(z,y1/2, col="red",pch=19)
legend("topright",c("pch_3","pch_19"), col=c("blue","red"),pch=c(3,19))

par() <- 그래픽 parameter들을 설정, 조정 / 실행함수(여러 옵션들을 실행)
par(mfrow=c(2,1)) #2X1 layout
par(cex=1.2) #글자크기 1.2배 키운다.
par(bg='gray90') #배경색
par(las=2) #label axis을 수평으로 놓냐, 수직으로 놓냐( the style of axis labels)
par(mai=c(1,2,3,4)) #bottom부터 시계방향으로 margin이 1,2,3,4가 되게 설정 c(bottom, left,top, right)
?par

par(mfrow=c(2,2),bg='gray50',col='white',col.main='lightblue',col.axis='yellow',col.lab='lightgreen') #col: 점point 색깔, col.lab: x축,y축 label 색깔
x=rnorm(100)
y=2+ 2*x+ rnorm(100)
plot(x,y, main="plot(x-y)-1", pch=20)
plot(x,y/2,main="plot(x-y)-2")
plot(x,y/3, main="plot(x-y)-3",col.main="black") #col.main : plot의 메인이름색깔
plot(x,y/4,main="plot(x-y)-4", col.axis="white") #col.axis : x축, y축 숫자 색깔

Visualization of K-nearest neighborhood method.skeleton
1)Regression
set.seed(1) #단순선형회귀모형
x<-sort(rnorm(100))
y<- 3+x^2 +rnorm(100)
plot(x,y,pch=20)

fit= lm(y~x) #lm(): R에 의한 회귀모형 적합
fit$coefficient #절편과 기울기 값 나오게 함

plot(x,y,pch=20,xlim=c(-2,2),ylim=c(0,8)) #1. 데이터를 표시(point 찍기)
abline(a=fit$coefficients[1], b=fit$coefficients[2], col='blue') #2. yhat line그리기
yTrueMean= 3+x^2
lines(x,yTrueMean,lty=2,col='black') #3.y true 그리기(진짜 직선 그리기)

2)KNN방법으로 회귀모형 그리기
install.packages("FNN")
library("FNN")
knnx.index(x,0,k=10) #x: 탐색대상(x-> i=1,2,,,,n) /0 : small x (누구랑 가까운 input data? 0이랑!!!) /k=10 : 10개 찾아라!
idx<-c(knnx.index(x,0,k=10))
idx
knnx.index(x, c(0,1), k=10) #0에서 가까운것 10개, 1에서 가까운 것 10개

yhat<-mean(y[idx])
yhat

eval.point=0
plot(x,y,pch=20)
abline(v=0,col='black')
idx<-c(knnx.index(x,eval.point,k=10))
points(x[idx],y[idx],col='red',pch=20)
abline(h=mean(y[idx]), lty=2,col='red')
mean(y[idx])

eval.n=100
eval.point=seq(-3,3, length=eval.n)
plot(x,y,pch=20)
idx.mat<-knnx.index(x,eval.point, k=100) #100X10행렬
yhat=rep(0,eval.n)
for(i in 1:eval.n) yhat[i]<-mean(y[idx.mat[i,]])
lines(eval.point,yhat,type='l',lty=2, col='red') #knn방법으로 추정한 데이터의 conditional expectation function

3)3d scatterplot
install.packages("scatterplot3d")
library("scatterplot3d")
attach(mtcars)
scatterplot3d(wt,disp,mpg, main="3D Scatterplot")

install.packages("rgl")
library("rgl")
plot3d(wt, disp,mpg,col="red",size=3)

z=2*volcano
x=10*(1:nrow(z))
y=10*(1:ncol(z))
par(bg="slategray")
persp(x,y,z,theta=135, phi=30, col="green3", scale=FALSE, ltheta = -120, shade=0.75, border=NA, box=FALSE)
