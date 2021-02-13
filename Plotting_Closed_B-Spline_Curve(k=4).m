clc;
close all;
n=4;                        %n=N-1 N is the no. of control points
k=4;                        %degree 3 for quadratic
x=[50 60 150 180 50];      %points x cordinates(taken Randomly)
y=[60 250 250 220 60];     %points y coordinates(taken Randomly)
line(x,y);hold on;          %line through points
%closed polygon
x1 = 50;
y1 = 60;
x2 = 180;
y2 = 150;
for u=0:0.01:1
    x = x1 + u*(x2-x1);
    y = y1 + u*(y2-y1);
    plot(x,y,'.r');
end
%for knot vectors
j=n+k;                              %knot vector limit
for i=1:1:j                         %starting from 1 because matlab not consider 0
    l=k+1;                          %increment in k because t0 value is shifting to t1
   t(i)=i;
end;
disp(t);       % display knot vectors
%for Bspline equation
um=n-k+1;      % u maximum value n-k+1 intead of n-k+2 (k vale change to k+1)
for u=0:0.01:n+1
    x1=0; y1=0;
    for i=1:n
        b= B_Spline(t,k,u,i);  %closed Bspline function
        x1=x1+(b*x(i));
        y1=y1+(b*y(i));
    end;
    plot(x1,y1,'*','LineWidth',1);hold on;axis([0,250,0,180]);
end