
[p]=input('Enter co-odinates of points within brackets ->[x1 y1;x2 y2;x3 y3;x4 y4] ');    
n=4;
n1=3;
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
p1(1,:)=((1-ui)^3).*p(1,:)+(3*ui*((1-ui)^2)).*p(2,:)+(3*(ui^2)*(1-ui)).*p(3,:)+(ui^3).*p(4,:);
p1(2,:)=(((1-ui)^2)*(1-uj)).*p(1,:)+((2*ui+uj-3*ui*uj)*(1-ui)).*p(2,:)+(ui*(2*ui+uj-3*ui*uj)).*p(3,:)+((ui^2)*uj).*p(4,:);
p1(3,:)=(((1-uj)^2)*(1-ui)).*p(1,:)+((2*uj+ui-3*ui*uj)*(1-uj)).*p(2,:)+(uj*(2*uj+ui-3*ui*uj)).*p(3,:)+((uj^2)*ui).*p(4,:);
p1(4,:)=((1-uj)^3).*p(1,:)+(3*uj*((1-uj)^2)).*p(2,:)+(3*(uj^2)*(1-uj)).*p(3,:)+(uj^3).*p(4,:);

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