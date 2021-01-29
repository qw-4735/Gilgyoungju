R-Graphicss tool/21
1)plotting points
attach(mtcars)
head(mtcars,n=2) #�տ� ������ �������
?mtcars
plot() # �κ������� ���踦 ������
plot(mpg~disp,data=mtcars) #y��~x�� / �ϳ��� �����͸� 2������ ǥ��(disp, mpg)
x=rnorm(100) #ǥ�����Ժ����� ���� 100���� ������ ���ڸ� �����϶�
y=2+2*x+rnorm(100)
plot(x,y,main="plot(x-y)") #plot title ���� / plot�� �׸��� ���� vector���� ����� �� �ִ�.

<drawing option>
1. type : ���� ���õ� graphical object�� �ٲٰ� ���� ��.
type='p' : point #���� ����.
type='l' :line # ���� �����̸� "����������" ������ �̾��.
type='b': both point and line
type='step' :step #��ܽ�����.
x=seq(-2,2, length=10)
y=x^2
plot(x,y, type='p', main="y=x^2")
plot(x,y,type="b", lty=3, main="y=x^2") #lty=3 �����̸� �����ϴ� 'line type�� ����'
plot(x,y,type = "b", lty=3, pch=2, main="y=x^2") #pch=2 'point ��� ����'
plot(x=1:25, y= rep(0,25), pch=1:25) 
plot(x,y,type='b',lty=3, pch=2, col="blue",main="y=x^2") #col="blue" 'plot�� ���� ����'
colors()[1:10] #�̿밡���� color���� �̸� ����Ʈ
<Axis option>
plot(x,y, type="b", xlab="xx",ylab ="yy", main="y=x^2") # xlab="xx",ylab ="yy" x�� �̸�, y�� �̸� ����

plot(~mpg+disp+drat, data=mtcars, main="Simple Scatterplot Matrix") #drawing multiple plots #formula ~ + +
?set.seed
?rpois

2)Add lines and points
abline # y=a+bx ���Ⱑ �ִ� ����, ����, ������ �׷��ش�.
x=rnorm(100) #x~ N(0,1) , i=1,2,..,100
y=2+2*x +rnorm(100) #y=2+2x+������ ������~N(0,1)/����
plot(x,y,pch=20,main='scatter plot') #pch= point character
abline(a=1,b=2,col="red")  # y=1+2x
abline(v=1, col="blue") #v= vertical ���� /x=1
abline(h=1, col="green") #h= horizontal ���� /y=1

points <- �̹� ������� ��ȭ���� '�߰��� ������ �� �ִ�.'
plot(x=1,y=1,type='n',xlim=c(0,10), ylim = c(0,5), xlab = 'time', ylab = '#of visiting') #type='n' :none (����������)
x=0:10                                                                                   #xlim,ylim :x��� y���� ����
set.seed(1)
y=rpois(length(x),lambda=1) #���Ƽۺ���(���Ƽ� ��������) 
points(x,y,col="blue",type = "s") #type : ���� ���� �� �ִ�. � �������?
points(x,y,col="red", type = "l")

x=0:10                                                                                  
set.seed(1)
y=rpois(length(x),lambda=1)
plot(x,y,type="b",xlab = "x-variable", ylab="y-variable", main="y=x^2", xlim=c(-1,1), ylim= c(-1,1))

plot(mpg~disp, data=cars, xlab="displacement", ylab="mile/gallon", main="scatter plot", pch=20, col="darkblue")

lines() <- '������' �� ���� ����
plot(0,0, type='n', xlim=c(-2,2), ylim=c(-2,2))
x=c(-2,1,0,1,0)
y=c(0,-1,2,-2,1)
lines(x,y) #���� ������ ������, ������ �ִ� ������ ���� �ȵ�.

plot(0,0,type='n',xlim=c(-2,2),ylim = c(-2,2))
x=c(-2,1,NA,1,0)    #NA���� �����ν� line�� ���� �� �ִ�.
y=c(0,-1,NA,-2,1)
lines(x,y)
lines(x,y,lty=2) #lty: line type

plot(0,0, type='n', xlim=c(1,5), ylim=c(0,2))
x=seq(1,5, by=1)
abline(v=x, lty=1:length(x)) #lty=1:5 line type�� �� �ٸ��� ����

legend()
z=sort(rnorm(100))
y1=2+z+rnorm(100)
plot(z,y1,col="blue",pch=3)
points(z,y1/2, col="red",pch=19)
legend("topright",c("pch_3","pch_19"), col=c("blue","red"),pch=c(3,19))

par() <- �׷��� parameter���� ����, ���� / �����Լ�(���� �ɼǵ��� ����)
par(mfrow=c(2,1)) #2X1 layout
par(cex=1.2) #����ũ�� 1.2�� Ű���.
par(bg='gray90') #����
par(las=2) #label axis�� �������� ����, �������� ����( the style of axis labels)
par(mai=c(1,2,3,4)) #bottom���� �ð�������� margin�� 1,2,3,4�� �ǰ� ���� c(bottom, left,top, right)
?par

par(mfrow=c(2,2),bg='gray50',col='white',col.main='lightblue',col.axis='yellow',col.lab='lightgreen') #col: ��point ����, col.lab: x��,y�� label ����
x=rnorm(100)
y=2+ 2*x+ rnorm(100)
plot(x,y, main="plot(x-y)-1", pch=20)
plot(x,y/2,main="plot(x-y)-2")
plot(x,y/3, main="plot(x-y)-3",col.main="black") #col.main : plot�� �����̸�����
plot(x,y/4,main="plot(x-y)-4", col.axis="white") #col.axis : x��, y�� ���� ����

Visualization of K-nearest neighborhood method.skeleton
1)Regression
set.seed(1) #�ܼ�����ȸ�͸���
x<-sort(rnorm(100))
y<- 3+x^2 +rnorm(100)
plot(x,y,pch=20)

fit= lm(y~x) #lm(): R�� ���� ȸ�͸��� ����
fit$coefficient #������ ���� �� ������ ��

plot(x,y,pch=20,xlim=c(-2,2),ylim=c(0,8)) #1. �����͸� ǥ��(point ���)
abline(a=fit$coefficients[1], b=fit$coefficients[2], col='blue') #2. yhat line�׸���
yTrueMean= 3+x^2
lines(x,yTrueMean,lty=2,col='black') #3.y true �׸���(��¥ ���� �׸���)

2)KNN������� ȸ�͸��� �׸���
install.packages("FNN")
library("FNN")
knnx.index(x,0,k=10) #x: Ž�����(x-> i=1,2,,,,n) /0 : small x (������ ����� input data? 0�̶�!!!) /k=10 : 10�� ã�ƶ�!
idx<-c(knnx.index(x,0,k=10))
idx
knnx.index(x, c(0,1), k=10) #0���� ������ 10��, 1���� ����� �� 10��

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
idx.mat<-knnx.index(x,eval.point, k=100) #100X10���
yhat=rep(0,eval.n)
for(i in 1:eval.n) yhat[i]<-mean(y[idx.mat[i,]])
lines(eval.point,yhat,type='l',lty=2, col='red') #knn������� ������ �������� conditional expectation function

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