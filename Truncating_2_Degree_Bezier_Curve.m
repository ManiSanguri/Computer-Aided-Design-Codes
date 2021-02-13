[p]=input('Enter co-odinates of points within brackets ->[x1 y1;x2 y2;x3 y3] ');    
n=3;
n1=2;
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
hold on
plot(P(:,1),P(:,2),'--r')
plot(p(:,1),p(:,2),'--r')
hold off

ui=input('enter the start parameter for the truncated curve');
uj=input('enter the end parameter for the truncated curve');

p1=[];
p1(1,:)=((1-ui)^2).*p(1,:)+(2*ui*(1-ui)).*p(2,:)+(ui^2).*p(3,:);
p1(2,:)=((1-ui)*(1-uj)).*p(1,:)+(-2*ui*uj+ui+uj).*p(2,:)+(ui*uj).*p(3,:);
p1(3,:)=((1-uj)^2).*p(1,:)+(2*uj*(1-uj)).*p(2,:)+(uj^2).*p(3,:);
l=[];
UB=[];
for v=0:0.002:1
for d=1:n
UB(d)=sigma(d)*((1-v)^(n-d))*(v^(d-1));
end
l=cat(1,l,UB);                                      
end
P=l*p1;
hold on
plot(P(:,1),P(:,2),'--g')
plot(p(:,1),p(:,2),'--g')
hold off