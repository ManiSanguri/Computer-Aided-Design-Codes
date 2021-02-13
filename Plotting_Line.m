N = 100 ;
t = linspace(0,1,N) ;
disp('Parametric Form of Equation ; X = A+ta ; Y = B+tb ; Z = C+tc')
A = input('Enter the value of A:');
B = input('Enter the value of B:');
C = input('Enter the value of C:');
a = input('Enter the value of a:');
b = input('Enter the value of b:');
c = input('Enter the value of c:');
x=A+(t*a) ;
y=B+(t*b) ;
z=C+(t*c) ; 
plot3(x,y,z);
grid on;