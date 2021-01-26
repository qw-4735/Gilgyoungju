##조건문
a=3
b=0
if (a<2){
  b=b+1
}else{
  b=b-1
}

x=0
for(i in 1:3){
  x=x+i
}

x=0
v=c(2,4,6,8)
for(i in v){
  x=x+i
}

x=0
for(i in 1:3){      #안에 있는 for전체를 3번반복 (outer loop)
  for(j in 1:2){
    x=x+i+j      # 첫번째 i=1로 고정(by outer loop)
  }
}

##Loop
#break : break가 포함된 가장 작은 loop를 멈춤, outer loop는 원래대로 자기 할 일 계속함
#next : 현재 반복문 pass
#stop : stop 발생 시점에서 outer loop로 멈춤 (모든 loop 멈춤)
v=0
for(i in 1:10){
  for(j in 1:5){
    if(j==4) break
    v=v+1
  }
}
v

##function
testFunction=function(x1,x2){
  v=x1^2+x2
  return(v)
}
testFunction(x1=1,x2=2)

testFunction1=function(x1,x2){
  v1=x1^2+x2
  v2=x1^2-x2
  return(c(v1,v2))
}
testFunction1(x1=1,x2=2)

testFunction2=function(x){
  v=x^2+y
  return(v)
}
testFunction2(x)
y=10
testFunction2(x)

testFunction3=function(x){
  v1=x^2
  v2=matrix((1:5)^x,1,5)
  return(list(first=v1, second=v2))
}
testFunction3(2)

s_colMean= function(x){
  if( class(x)!="matrix")stop()
  v=rep(0, ncol(x))
  for(i in 1:ncol(x)){
    v[i]=mean(x[i,])
  }
  return(v)
}

#file()
getwd() /현재 파일 위치/
setwd() /file 위치를 바꿔준다./  
getwd() /다시 변경된 파일 위치 확인/

#'read.table' 파일읽기
A= read.table("C02.dat",header=TRUE, sep=" ", stringsAsFactors = FALSE)
(파일, 첫줄에 변수이름 있는가, 값과 값을 분리하는 구분자는?공백(space), 문자를 factors로 변경할거냐?)
head(A)
class(A$Plant)
read.csv("파일이름.csv", header=TRUE, sep=".",stringAsFactors=FALSE) # csv 파일 입력
