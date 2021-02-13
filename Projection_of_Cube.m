pos=[0 1 0 0 1 1 0 1;0 0 1 0 0 1 1 1;1 1 1 0 0 0 0 1;1 1 1 1 1 1 1 1];
C=[2 4 8;3 7 0;4 6 0;5 0 0;6 8 0;7 0 0;8 0 0;0 0 0];
P=pos';
X=P(:,1);
Y=P(:,2);
Z=P(:,3);
for i=1:8
    for j=1:3
        r=C(i,j);
        if(r~=0)
            X1=[X(i,:) X(r,:)];
                Y1=[Y(i,:) Y(r,:)];
                Z1=[Z(i,:) Z(r,:)];
        plot3(X1,Y1,Z1,'g');
        hold on;
        grid on;
        end
    end
end 
%%Axonometric Projection
%for trimetric projection of cube
phi=input('Enter rotation about the y-axis');
theta=input('Enter rotation about the x-axis');
P=[1 0 0 0;0 1 0 0;0 0 0 0;0 0 0 1];
Ry=[cos(phi) 0 sin(phi) 0;0 1 0 0;-1*sin(phi) 0 cos(phi) 0;0 0 0 1];
Rx=[1 0 0 0;0 cos(theta) -1*sin(theta) 0;0 sin(theta) cos(theta) 0;0 0 0 1];
T=P*Rx*Ry;
pos_new=T*pos;
P=pos_new';
C=[2 4 8;3 7 0;4 6 0;5 0 0;6 8 0;7 0 0;8 0 0;0 0 0];
X=P(:,1);
Y=P(:,2);
Z=P(:,3);
for i=1:8
    for j=1:3
        r=C(i,j);
        if(r~=0)
            X1=[X(i,:) X(r,:)];
                Y1=[Y(i,:) Y(r,:)];
                Z1=[Z(i,:) Z(r,:)];
        plot3(X1,Y1,Z1,'b');
        hold on;
        grid on;
        end
    end
    xlabel('X AXIS');
    ylabel('Y AXIS');
end 
%for dimetric projection of cube
theta=input('Enter rotation about the x-axis');
phi=asind(((sin(theta))^2/(1-((sin(theta))^2)))^0.5);
P=[1 0 0 0;0 1 0 0;0 0 0 0;0 0 0 1];
Ry=[cos(phi) 0 sin(phi) 0;0 1 0 0;-1*sin(phi) 0 cos(phi) 0;0 0 0 1];
Rx=[1 0 0 0;0 cos(theta) -1*sin(theta) 0;0 sin(theta) cos(theta) 0;0 0 0 1];
T=P*Rx*Ry;
pos_new=T*pos;
P=pos_new';
C=[2 4 8;3 7 0;4 6 0;5 0 0;6 8 0;7 0 0;8 0 0;0 0 0];
X=P(:,1);
Y=P(:,2);
Z=P(:,3);
for i=1:8
    for j=1:3
        r=C(i,j);
        if(r~=0)
            X1=[X(i,:) X(r,:)];
                Y1=[Y(i,:) Y(r,:)];
                Z1=[Z(i,:) Z(r,:)];
        plot3(X1,Y1,Z1,'b');
        hold on;
        grid on;
        end
    end
    xlabel('X AXIS');
    ylabel('Y AXIS');
end 
%for isometric projection of cube
theta=35.26;
phi=45;
P=[1 0 0 0;0 1 0 0;0 0 0 0;0 0 0 1];
Ry=[cos(phi) 0 sin(phi) 0;0 1 0 0;-1*sin(phi) 0 cos(phi) 0;0 0 0 1];
Rx=[1 0 0 0;0 cos(theta) -1*sin(theta) 0;0 sin(theta) cos(theta) 0;0 0 0 1];
T=P*Rx*Ry;
pos_new=T*pos;
P=pos_new';
C=[2 4 8;3 7 0;4 6 0;5 0 0;6 8 0;7 0 0;8 0 0;0 0 0];
X=P(:,1);
Y=P(:,2);
Z=P(:,3);
for i=1:8
    for j=1:3
        r=C(i,j);
        if(r~=0)
            X1=[X(i,:) X(r,:)];
                Y1=[Y(i,:) Y(r,:)];
                Z1=[Z(i,:) Z(r,:)];
        plot3(X1,Y1,Z1,'b');
        hold on;
        grid on;
        end
    end
    xlabel('X AXIS');
    ylabel('Y AXIS');
end 
%%Oblique Projection
a=input('enter the value of alpha');
%cavalier
T_cavalier=[1 0 0 0;0 1 0 0;cos(a) sin(a) 0 0;0 0 0 1];
pos_new_cabinet=T_cabinet*pos;
P=pos_new_cabinet';
C=[2 4 8;3 7 0;4 6 0;5 0 0;6 8 0;7 0 0;8 0 0;0 0 0];
X=P(:,1);
Y=P(:,2);
Z=P(:,3);
for i=1:8
    for j=1:3
        r=C(i,j);
        if(r~=0)
            X1=[X(i,:) X(r,:)];
                Y1=[Y(i,:) Y(r,:)];
                Z1=[Z(i,:) Z(r,:)];
        plot3(X1,Y1,Z1,'b');
        hold on;
        grid on;
        end
    end
    xlabel('X AXIS');
    ylabel('Y AXIS');
end 
%cabinet
T_cabinet=[1 0 0 0;0 1 0 0;0.5*cos(a) 0.5*sin(a) 0 0;0 0 0 1];
pos_new_cavalier=T_cavalier*pos;
P=pos_new_cavalier';
C=[2 4 8;3 7 0;4 6 0;5 0 0;6 8 0;7 0 0;8 0 0;0 0 0];
X=P(:,1);
Y=P(:,2);
Z=P(:,3);
for i=1:8
    for j=1:3
        r=C(i,j);
        if(r~=0)
            X1=[X(i,:) X(r,:)];
                Y1=[Y(i,:) Y(r,:)];
                Z1=[Z(i,:) Z(r,:)];
        plot3(X1,Y1,Z1,'b');
        hold on;
        grid on;
        end
    end
    xlabel('X AXIS');
    ylabel('Y AXIS');
end 
%%Perspective Projection
p=input('enter the value of p');
q=input('enter the value of q');
r=input('enter the value of r');
T=[1 0 0 0;0 1 0 0;0 0 0 1;p q r 1];
pos_new=T*pos;
P=pos_new';
C=[2 4 8;3 7 0;4 6 0;5 0 0;6 8 0;7 0 0;8 0 0;0 0 0];
X=P(:,1);
Y=P(:,2);
Z=P(:,3);
for i=1:8
    for j=1:3
        r=C(i,j);
        if(r~=0)
            X1=[X(i,:) X(r,:)];
                Y1=[Y(i,:) Y(r,:)];
                Z1=[Z(i,:) Z(r,:)];
        plot3(X1,Y1,Z1,'b');
        hold on;
        grid on;
        end
    end
    xlabel('X AXIS');
    ylabel('Y AXIS');
end 
