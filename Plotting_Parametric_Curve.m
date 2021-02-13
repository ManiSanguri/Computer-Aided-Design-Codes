
p0=input('enter initial point')
p1=input('enter final point')
l1=p1(1)-p0(1);
l2=p1(2)-p0(2);
l3=p1(3)-p0(3);
mod = sqrt(l1^2+l2^2+l3^2);
p0u=p0/mod
p1u=p1/mod
pu=zeros(10,3);
u=0;
for i=1:11
    f1=2*(u^3)-2*u*u+1;
    f2=(-2*(u^3))+(3*(u^2));
    f3=u^3-2*(u^2)+u;
    f4=u^3-u^2;
    pu(i,:)=f1*p0+f2*p1+f3*p0u+f4*p1u
    u=u+0.1
end
plot3(pu(:,1),pu(:,2),pu(:,3))
grid on
