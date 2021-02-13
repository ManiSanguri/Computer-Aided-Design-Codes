n=input('Give the number of points through which the curve passes');
u=0:1/n:1;
u=u';
unit=ones(size(u));
U=[u.^3 u.^2 u.^1 unit];
P0=input('Give the coordinate of the point 1');
P1=input('Give the coordinate of the point 2');
P2=input('Give the tangent vector at the first point');
P3=input('Give the tangent vector at the second point');
P=[P0;P1;P2;P3];
M=[2 -2 1 1;-3 3 -2 -1;0 0 1 0;1 0 0 0];
Q=U*M*P;

P0=input('Give the coordinate of the point 1');
P1=input('Give the coordinate of the point 2');
P2=input('Give the tangent vector at the first point');
P3=input('Give the tangent vector at the second point');
P=[P0;P1;P2;P3];
M=[2 -2 1 1;-3 3 -2 -1;0 0 1 0;1 0 0 0];
Q1=U*M*P;

figure
plot(Q(:,1),Q(:,2),'b');
title('Plot 1:1st Hermite');
hold on
plot(Q1(:,1),Q1(:,2),'g');
title('Plot 2:2nd Hermite');
hold off
