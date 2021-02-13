clear all 
clc
n=input('Enter no. of points  ');
n1=n-1;
[p]=input('Enter co-odinates of points within brackets ->[x1 y1;x2 y2;x3 y3;...;xn yn] ');   
for    i=0:1:n1
sigma(i+1)=factorial(n1)/(factorial(i)*factorial(n1-i));  
end
l=[];
UB=[];
for u=0:0.002:1
for d=1:n
UB(d)=sigma(d)*((1-u)^(n-d))*(u^(d-1));
end
l=cat(1,l,UB);
end
P=l*p;
line(P(:,1),P(:,2))
line(p(:,1),p(:,2))