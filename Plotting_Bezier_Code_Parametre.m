


n = input('enter the number of control points');                            
d = n-1;                           
X = input('enter the x coordinates of the control points');
Y = input('enter the y coordinates of the control points');
line(X,Y);                        
for u = 0:0.01:1                   
    x=0; y=0;                      
    for i=0:1:d                    
        c=nchoosek(d,i);           
        B=c*((u^i)*(1-u)^(d-i));   
        x=x+B*X(i+1);              
        y=y+B*Y(i+1);             
    end;                           
plot(x,y,'*r');                    
end