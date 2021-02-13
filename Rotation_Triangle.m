%Rotate a triangle by Delta degree in Anticlockwise Direction about the
%Axis Passign through centroid and Normal to the Plane of Triangle

%3D Transformation 

%Step 1- Input the Coordinates of the three Sides of the Triangle
prompt = 'Enter the First Coordinate of the Triangle ';
x1 = input(prompt)
prompt = 'Enter the Second Coordinate of the Triangle ';
x2 = input(prompt)
prompt = 'Enter the Third Coordinate of the Triangle ';
x3 = input(prompt)

%Step 2- Get the Position of the Centroid and Find the Equation of the
%Plane of the triangle

xc = (x1(1)+x2(1)+x3(1))/3;
yc = (x1(2)+x2(2)+x3(2))/3;
zc = (x1(3)+x2(3)+x3(3))/3;

alpha = x2(1)-x1(1);
beta = x2(2)-x1(2);
alphaq = x3(1)-x1(1);
betaq = x3(2)-x1(2);

Ax = [ alpha beta; alphaq betaq ];

gamma1 = x2(3)-x1(3);
gamma2 = x3(3)-x1(3);
gamma = [gamma1; gamma2];
field = -(inv(Ax))*gamma;
fieldmega = [ field; 1];  %direction vector of the plane of the triangle

%Step 3- Get the Equation of Plane Perpendicular to plane of the triangle

vec1 = [field(1) field(2) ; alphaq betaq];
vec2 = [1 ; gamma2];
fieldvar = -(inv(vec1))*vec2;
fieldqw = [fieldvar ; 1]; %Direction vector of Plane Perpendicular to Plane of the Triangle

%Intiliazation of transformation Matrices. Tranlation required are T1=
%Translation of Origin to Centroid, T2= Rotation of Perpendicular Plane
%Either via X axis or Y Axis or Z axis. T3= Rotation of all the Points of
%trainlge by Delta as Input by the User and then inv(T2) and inv(T1)

%Step 4- Initilization of Tranformation Matrices (Considering rotation of
%perpendicular Plane about X axis) and Finding the Final Result
prompt = 'Enter the Value of Delta in Radians for the Rotation of triangle in Anticlockwise Direction'; 
Delta = input(prompt)
T1 = [1 0 0 0; 0 1 0 0; 0 0 1 0; -xc -yc -zc 1];
zeta = norm(fieldqw); 
theta = acos(fieldqw(1)/zeta);
if theta>= 1.5708 && theta<= pi
    theta = pi-theta;
end
Tyz = [-1 0 0 0; 0 -1 0 0; 0 0 1 0; 0 0 0 1]; 
T2 = [1 0 0 0; 0 cos(theta) -sin(theta) 0; 0 sin(theta) cos(theta) 0; 0 0 0 1];
T3 = [1 0 0 0; 0 cos(Delta) -sin(Delta) 0; 0 sin(Delta) cos(Delta) 0; 0 0 0 1];
x1bar = [x1 ; 1];
x2bar = [x2 ; 1];
x3bar = [x3 ; 1];

refc = ((x1bar)')*T1*Tyz*T2*T3*(inv(Tyz))*(inv(T2))*(inv(T1))
refd = ((x2bar)')*T1*Tyz*T2*T3*(inv(Tyz))*(inv(T2))*(inv(T1))
refe = ((x3bar)')*T1*Tyz*T2*T3*(inv(Tyz))*(inv(T2))*(inv(T1))

refcbar = [refc(1) ; refc(2) ; refc(3)];
refdbar = [refd(1) ; refd(2) ; refd(3)];
refebar = [refe(1) ; refe(2) ; refe(3)];

%Plotting the Reflected triangle in 3D Plot
figure('color','w')
h=patch('Faces',1:3,'Vertices',[((refcbar)');((refdbar)');((refebar)')]);
set(h,'FaceColor','r','EdgeColor','k','LineWidth',2,'FaceAlpha',0.5)
axis equal vis3d
view([30 30])
xlabel('x','FontSize',20)
ylabel('y','FontSize',20)
zlabel('z','FontSize',20)








