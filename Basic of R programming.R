##���ǹ�
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
for(i in 1:3){      #�ȿ� �ִ� for��ü�� 3���ݺ� (outer loop)
  for(j in 1:2){
    x=x+i+j      # ù��° i=1�� ����(by outer loop)
  }
}

##Loop
#break : break�� ���Ե� ���� ���� loop�� ����, outer loop�� ������� �ڱ� �� �� �����
#next : ���� �ݺ��� pass
#stop : stop �߻� �������� outer loop�� ���� (��� loop ����)
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
getwd() /���� ���� ��ġ/
setwd() /file ��ġ�� �ٲ��ش�./  
getwd() /�ٽ� ����� ���� ��ġ Ȯ��/

#'read.table' �����б�
A= read.table("C02.dat",header=TRUE, sep=" ", stringsAsFactors = FALSE)
(����, ù�ٿ� �����̸� �ִ°�, ���� ���� �и��ϴ� �����ڴ�?����(space), ���ڸ� factors�� �����Ұų�?)
head(A)
class(A$Plant)
read.csv("�����̸�.csv", header=TRUE, sep=".",stringAsFactors=FALSE) # csv ���� �Է�