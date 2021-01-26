x1=3.5 
typeof(x1) /*type() �޸� ����: ������ ����( double�Ǽ���, integer������, character������, logical true&false)
x4="a"
typeof(x4)
x5=TRUE
typeof(x5)

x=c(3) /���͵��� 1���� �迭/
print(x) /������ ����Ϳ��� ��������/
1:5 /�ݷп�����: ���ӻ���
(3.1):(5.5)
x1= 1:3 /'�ϳ��� ����'�� �⺻������ ���̰� 1�� ���ͷμ� �ٷ�����./
x2= 10:5
x3=c(x2,x1) /c()�� �پ��� ���͵��� �ٷ� �� �ִ�./
x3

seq() :�Լ�
y= seq(from=12, to=30, by=2) /*12���� 30���� 2�� ����*/
y  
y=seq(12,30,length=19) /length: ������ ������ ���Ұ���, ���/

rep(��ü, �ݺ���) : �ݺ��Լ�
x=rep(8,4)
x
x=rep(c(5,12,13),3) 
x
x=rep(c(5,12,13),c(1,2,3)) /5�� 1��, 12�� 2��, 13�� 3�� �ݺ�/
x
x=rep(c(5,12,13),each=3) /each: ������ ���ͼӼ��� 3���� �ݺ��϶�/
x  

bracket[��������or ����] :���� '��ġ'�� ������ �� ���
x=5:8
x1=x[1:3]
x1
x2=c(x1[1:3],10,x[4])
x2

y=c(1.2,3.9,0.4,0.12)
y[c(1,3)] /c(1,3): ��������/
y[2:3]  /2,3 : ����/
y[5]  ->NA

y[-c(1,2)] /negative integer: �긦 ������ �������� �����϶�/
y[-length(y)]  /length(): �Լ�, ������ ���̸� ���/
  
x=c(3,1,4,1)  
x[x>5] /x[�Ǽ���]/numeric(0): �����ϴ� ������� �ϳ��� ������
which(x>4) /which(): �Է°��� T index�� return�϶�/

a%in%b :b�ȿ� a�� �ִ°�?
c(1,5,3)%in% c(2,1,5)  

match(1,c(2,1,4))
x<-c(3,1,4,1)
match(x,c(2,1,4))

matrix: 2���� �迭
y=matrix(c(1,2,3,4),nrow=2,ncol=2) /nrow���ǰ���, ncol���ǰ���/ ������ ���� �Է�
y
y=matrix(c(1,2,3,4),nrow=2,ncol=2, byrow=T) /byrow=T �ະ�� ���� �Է�/
y  
y=matrix(c(1,3,4,5,1,3,4,1),4,2)
y
y[1,1] /1��1���� �ִ� ����?
y[,1] /1��?/
y[-2,] /2�� ����/

matrix function
class(y) /�������� �Ӽ��� ��������? (����������, factor������, data.frame����, �������� �����ϴ� ��)
dim(y)
ncol(y) 
nrow(y)

column bind and row bind
one=rep(1,4)
z=matrix(c(5:8, rep(-1,4), rep(0,4)),4,3)
cbind(one,z)
z=rbind(2,z)
z

data.frame
create dataframe 
x=1:10
x[1]="a"
typeof(x[2])
x=matrix(1:4,2,2)
x[2,2]="b"
typeof(x)

kids=c("jack","jill") /��ü ����/
ages=c(12,10)
d=data.frame(kids,ages,stringsAsFactors =T)/stringsAsFactors: ���͸� 
             /dataframe�ȿ� ����ִ´�/
              /stringasfactors: ���͸� ���������������� ��ȯ�� ����Ÿ���� factor�� ��ȯ�ϴ� ����/
d  
str(d) /� ��ü�� �����ͱ��� �˷���/

selecting the elements
d$ages
class(d$ages)
names(d) /list�� ������ ������� �̸���/
d[1,]  
class(d[1,])
A=data.frame(x1=rep(0,10),x2=rep('b',10))
B=data.frame(x3=rep(1,10),x2=rep('d',10))
AB=cbind(A,B)
head(AB) /������ 6��° �������� ��Ÿ����/

list /list�� �ٸ� ������ ���� data objects�� ���� �� �ִ� ü���̴�./
j<-list(names='joe',salary=55000, union=TRUE) 
jn<- list('joe',55000,TRUE)  
jini<-vector(mode='list',length=10) 
j$salary /list���� ������ҵ� �θ���/
j[["salary"]]
j[[2]]
j$history<-1:10 /list���� ������� �߰��ϱ�/
j[[1]]<- "Yoon"
j

factor : ������ ������ �����ϴ� ���ɾ�
x<-c(5,12,13,12)
xf<-factor(x)
xf
str(xf)
unclass(xf)
as.numeric(xf)/���ڷ� Ư���� �ٲ۴�/
xff<-factor(x, levels=c(5,12,13,88))  
xff
x1<-c(4,2,3,3,2,2)
table(x1) /table : �� ���/
x2<-c("a","b","a","a","b","b")  
table(x2)
x3=data.frame(x1=x1,x2=x2) 
table(x3)

casting: ��ü�� ���� ��ȯ�� �ٸ�(�������, ���Ϳ��� ����������������)
vector�� matrix�� ��� ������ ������ ������ ����/vector�� matrix�ȿ� ����.
dataframe�� list�� �ٸ������� ������ ������ �� �ִ�./dataframe�� list�� ����.
A=data.frame(x1=rep(0,2),x2=rep('b',2))
B=data.frame(x3=rep(1,2),x2=rep('d',2))
AB=cbind(A,B)
AB
head(AB)
rbind(A,B) �ȵȴ�.

a=matrix(1:10,5,2)
b=a[,-1] /���ϳ� �Ǵ� ���ϳ��� ���� matrix����� ���� �ʴ´�./
b
class(b)
b=a[,-1,drop=FALSE] /drop=FALSE�� ���� matrix������ �״�� �����Ѵ�./
class(b)  

casting function: matrix�� vector�� unfoldǮ�� ������ -> c() �̿�
*Ǯ���� ������ '����Է±�Ģ'�� ������.
a=matrix(1:10,5,2)
b=c(a)
b
str(b)
vector->factor: as.factor()
a=c("tommy","jimmy","jane")
b=as.factor(a)
b
list or data.frame -> vector : unlist()
a=list()
  for (i in 1:5) a[[i]]=i
a
b=unlist(a)
b
vector-> matrix : as.matrix()(=������)
a=1:3
b=as.matrix(a)
b
matrix->data.frame: as.data.frame()
a=matrix(1:10,5,2)
b=as.data.frame(a)
b
str(b)
daata.frame->list : unclass()
a=matrix(1:10,5,2)
b=as.data.frame(a)
b=unclass(b)
b
class(b)