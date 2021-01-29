<������ data/Frequency of univariate variable �Ϻ���(������ ������ �ϳ���)>
counts=table(state.region) #state.region�� �ִ� �������� �󵵰��
counts
barplot(counts, main="simple bar chart", xlab="region", ylab="freq", cex.names = 0.8 )
freq.cyl=table(mtcars$cyl) #mtcars�� �ִ� cyl������ �󵵰��
freq.cyl
barplot(freq.cyl,main="simple bar chart", col="orange")
cyl.name= c("4cyl","6cyl","8cyl")
barplot(freq.cyl, main="simple bar chart", col="orange", names.arg = cyl.name) #names.arg�� levels�� �̸����� ������ �÷Կ� �� �̸����� �߰����ش�.

<�� �� �̻��� ������ ����/frequency of multivariate variables �ٺ���>
paste0("a","1") #paste0(����, ����,����...) : ������ ���ͷ� return
paste0("a",1:10)
cyl.name2=paste0(cyl.name, "(", freq.cyl, "%)")
cyl.name2
pie(freq.cyl, labels = cyl.name2, col=rainbow(length(freq.cyl)), main="pie chart")

install.packages("vcd")
library(vcd)
head(Arthritis, n=3)
my.table<-xtabs(~Treatment+Improved, data= Arthritis) #xtabs(~�ຯ��+������) : formula�� �̿��ؼ� ����(��)�� ���Ѵ�.
my.table
barplot(my.table, xlab="Improved", ylab="Frequency", legend.text =TRUE, col = c('green','red'))
barplot(t(my.table), xlab="Improved", ylab="Frequency", legend.text = TRUE, col= c('green','red','orange')) #t(my.table) :table�� ��� ���� �ٲ۴�. 

tmp=c("buckled","unbuckled")
belt<- matrix(c(58,2,8,16),ncol=2, dimnames = list(parent=tmp, child=tmp)) #dimnames�� matrix�� ��� �� ������ �̸��ο�
belt
spine(belt, main="spine plot for child seat-belt usage", gp=gpar(fill=c("green","red")))

<������ ������ �ð�ȭ>
x=rnorm(100)
boxplot(x,main="boxplot", col="lightblue")
x=faithful$waiting
hist(x, nclass=8) #nclass=8 : ���� 8��

hist(x, breaks= seq(min(x),max(x),length=10),probability = T) #break : bin�� ũ�� ���� (min(x)�� max(x)�� �����Ͽ� �� 10���� �������-> bin�� 9��)
hist(faithful$waiting, nclass=10, probability = T) #probability=T : ���̸� ���󵵷� ����
lines(density(x),col='red', lwd=2) #density(): Ŀ�� ����� ���� �е� ���� ���

<visualization for multivariate variables/ �ٺ��� ����(����������+ ����������1��)�� �ð�ȭ>
attach(mtcars)
boxplot(mpg~cyl, data=mtcars, names=c('4cyl','6cyl','8cyl'), main="MPG dist by cylinder")
hist(mpg[cyl==4],xlab="MPG", main="MPG dist by cylinder", xlim=c(5, 40), ylim = c(0,10),
     col="lightblue", nclass = trunc(sqrt(length(mpg[cyl==4])))) #trunc: �Ҽ��� ���ִ� �Լ�
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