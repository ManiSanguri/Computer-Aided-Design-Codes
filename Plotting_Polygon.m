n = input('Enter the number of points:')
P=zeros(n+1,3);
for i=1:n
    P(i,:)=input('Enter the point:');
end
P(n+1,1)=P(1,1);
P(n+1,2)=P(1,2);
P(n+1,3)=P(1,3);
P
plot3(P(:,1),P(:,2),P(:,3),'r')
grid on



