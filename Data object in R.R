x1=3.5 
typeof(x1) /*type() 메모리 관리: 데이터 형식( double실수형, integer정수형, character문자형, logical true&false)
x4="a"
typeof(x4)
x5=TRUE
typeof(x5)

x=c(3) /벡터들의 1차원 배열/
print(x) /변수를 모니터에다 출력해줘라/
1:5 /콜론연산자: 연속생성
(3.1):(5.5)
x1= 1:3 /'하나의 변수'는 기본적으로 길이가 1인 벡터로서 다뤄진다./
x2= 10:5
x3=c(x2,x1) /c()는 다양한 벡터들을 다룰 수 있다./
x3

seq() :함수
y= seq(from=12, to=30, by=2) /*12부터 30까지 2씩 증가*/
y  
y=seq(12,30,length=19) /length: 생성된 벡터의 원소개수, 등간격/

rep(객체, 반복수) : 반복함수
x=rep(8,4)
x
x=rep(c(5,12,13),3) 
x
x=rep(c(5,12,13),c(1,2,3)) /5가 1번, 12가 2번, 13이 3번 반복/
x
x=rep(c(5,12,13),each=3) /each: 각각의 벡터속성을 3번씩 반복하라/
x  

bracket[정수벡터or 변수] :값의 '위치'를 참조할 때 사용
x=5:8
x1=x[1:3]
x1
x2=c(x1[1:3],10,x[4])
x2

y=c(1.2,3.9,0.4,0.12)
y[c(1,3)] /c(1,3): 정수벡터/
y[2:3]  /2,3 : 변수/
y[5]  ->NA

y[-c(1,2)] /negative integer: 얘를 제외한 나머지를 참조하라/
y[-length(y)]  /length(): 함수, 벡터의 길이를 계산/
  
x=c(3,1,4,1)  
x[x>5] /x[실수값]/numeric(0): 만족하는 결과값이 하나도 없을때
which(x>4) /which(): 입력값의 T index를 return하라/

a%in%b :b안에 a가 있는가?
c(1,5,3)%in% c(2,1,5)  

match(1,c(2,1,4))
x<-c(3,1,4,1)
match(x,c(2,1,4))

matrix: 2차원 배열
y=matrix(c(1,2,3,4),nrow=2,ncol=2) /nrow행의개수, ncol열의개수/ 열별로 값이 입력
y
y=matrix(c(1,2,3,4),nrow=2,ncol=2, byrow=T) /byrow=T 행별로 값이 입력/
y  
y=matrix(c(1,3,4,5,1,3,4,1),4,2)
y
y[1,1] /1행1열에 있는 값은?
y[,1] /1열?/
y[-2,] /2행 빼고/

matrix function
class(y) /변수들의 속성이 무엇인지? (숫자형인지, factor형인지, data.frame인지, 벡터인지 구분하는 것)
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

kids=c("jack","jill") /객체 생성/
ages=c(12,10)
d=data.frame(kids,ages,stringsAsFactors =T)/stringsAsFactors: 벡터를 
             /dataframe안에 집어넣는다/
              /stringasfactors: 벡터를 데이터프레임으로 변환시 문자타입을 factor로 변환하는 인자/
d  
str(d) /어떤 객체의 데이터구조 알려줌/

selecting the elements
d$ages
class(d$ages)
names(d) /list가 가지는 행맨위에 이름들/
d[1,]  
class(d[1,])
A=data.frame(x1=rep(0,10),x2=rep('b',10))
B=data.frame(x3=rep(1,10),x2=rep('d',10))
AB=cbind(A,B)
head(AB) /위에서 6번째 값까지만 나타내기/

list /list는 다른 종류를 가진 data objects를 가질 수 있는 체인이다./
j<-list(names='joe',salary=55000, union=TRUE) 
jn<- list('joe',55000,TRUE)  
jini<-vector(mode='list',length=10) 
j$salary /list안의 구성요소들 부르기/
j[["salary"]]
j[[2]]
j$history<-1:10 /list에서 구성용소 추가하기/
j[[1]]<- "Yoon"
j

factor : 범주형 값들을 저장하는 명령어
x<-c(5,12,13,12)
xf<-factor(x)
xf
str(xf)
unclass(xf)
as.numeric(xf)/숫자로 특성을 바꾼다/
xff<-factor(x, levels=c(5,12,13,88))  
xff
x1<-c(4,2,3,3,2,2)
table(x1) /table : 빈도 계산/
x2<-c("a","b","a","a","b","b")  
table(x2)
x3=data.frame(x1=x1,x2=x2) 
table(x3)

casting: 객체들 간의 변환을 다름(예를들어, 벡터에서 데이터프레임으로)
vector와 matrix는 모두 동일한 형태의 값만을 관리/vector는 matrix안에 포함.
dataframe과 list는 다른형태의 값들을 관리할 수 있다./dataframe은 list에 포함.
A=data.frame(x1=rep(0,2),x2=rep('b',2))
B=data.frame(x3=rep(1,2),x2=rep('d',2))
AB=cbind(A,B)
AB
head(AB)
rbind(A,B) 안된다.

a=matrix(1:10,5,2)
b=a[,-1] /행하나 또는 열하나는 원래 matrix취급을 하지 않는다./
b
class(b)
b=a[,-1,drop=FALSE] /drop=FALSE를 쓰면 matrix구조를 그대로 유지한다./
class(b)  

casting function: matrix를 vector로 unfold풀고 싶을때 -> c() 이용
*풀리는 순서가 '행렬입력규칙'을 따른다.
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
vector-> matrix : as.matrix()(=열백터)
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
