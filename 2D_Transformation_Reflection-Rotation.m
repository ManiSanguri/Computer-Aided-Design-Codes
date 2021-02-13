s=[0,0;0,1;1,1;1,0]
S=[]
for i=1:4
  u=0
  for j=1:11
    if i==4
      S(j,1,i)=s(i,1)+u*(s(1,1)-s(i,1))
      S(j,2,i)=s(i,2)+u*(s(1,2)-s(i,2))
    else
      S(j,1,i)=s(i,1)+u*(s(i+1,1)-s(i,1))
      S(j,2,i)=s(i,2)+u*(s(i+1,2)-s(i,2))
    endif
    u=u+0.1
  end
end
t1=[]
t1=input('Enter the co-ordinates of origin after translation=')
s1=[]
m=t1(1,1)
n=t1(1,2)
for i=1:4
  s1(i,1)=s(i,1)+m
  s1(i,2)=s(i,2)+n  
end
S1=[]
for i=1:4
  u=0
  for j=1:11
    if i==4
      S1(j,1,i)=s1(i,1)+u*(s1(1,1)-s1(i,1))
      S1(j,2,i)=s1(i,2)+u*(s1(1,2)-s1(i,2))
    else
      S1(j,1,i)=s1(i,1)+u*(s1(i+1,1)-s1(i,1))
      S1(j,2,i)=s1(i,2)+u*(s1(i+1,2)-s1(i,2))
    end
    u=u+0.1
  end
end
t2=input('Enter the degree of rotation about origin=')
rad=deg2rad(t2)
s2=[]
for i=1:4
  s2(i,1)=s(i,1)*cos(rad)-s(i,2)*sin(rad)
  s2(i,2)=s(i,1)*sin(rad)+s(i,2)*cos(rad)  
end
S2=[]
for i=1:4
  u=0
  for j=1:11
    if i==4
      S2(j,1,i)=s2(i,1)+u*(s2(1,1)-s2(i,1))
      S2(j,2,i)=s2(i,2)+u*(s2(1,2)-s2(i,2))
    else
      S2(j,1,i)=s2(i,1)+u*(s2(i+1,1)-s2(i,1))
      S2(j,2,i)=s2(i,2)+u*(s2(i+1,2)-s2(i,2))
    end
    u=u+0.1
  end
end
t3=input('Enter x-axis=1 or y-axis=2 for reflection about that axis=')
s3=[]
if t3==1
  for i=1:4
    s3(i,1)=s(i,1)
    s3(i,2)=-s(i,2)
  end
  S3=[]
  for i=1:4
    u=0
    for j=1:11
      if i==4
        S3(j,1,i)=s3(i,1)+u*(s3(1,1)-s3(i,1))
        S3(j,2,i)=s3(i,2)+u*(s3(1,2)-s3(i,2))
      else
        S3(j,1,i)=s3(i,1)+u*(s3(i+1,1)-s3(i,1))
        S3(j,2,i)=s3(i,2)+u*(s3(i+1,2)-s3(i,2))
      end
    u=u+0.1
    end
  end
elseif t3==2
  for i=1:4
    s3(i,1)=-s(i,1)
    s3(i,2)=s(i,2)
  end
  S3=[]
  for i=1:4
    u=0
    for j=1:11
      if i==4
        S3(j,1,i)=s3(i,1)+u*(s3(1,1)-s3(i,1))
        S3(j,2,i)=s3(i,2)+u*(s3(1,2)-s3(i,2))
      else
        S3(j,1,i)=s3(i,1)+u*(s3(i+1,1)-s3(i,1))
        S3(j,2,i)=s3(i,2)+u*(s3(i+1,2)-s3(i,2))
      end
    u=u+0.1
    end
  end  
end
a=input('Enter scaling about x-axis=')
b=input('Enter scaling about y-axis=')
s4=[]
for i=1:4
  s4(i,1)=a*s(i,1)
  s4(i,2)=b*s(i,2)  
end
S4=[]
for i=1:4
  u=0
  for j=1:11
    if i==4
      S4(j,1,i)=s4(i,1)+u*(s4(1,1)-s4(i,1))
      S4(j,2,i)=s4(i,2)+u*(s4(1,2)-s4(i,2))
    else
      S4(j,1,i)=s4(i,1)+u*(s4(i+1,1)-s4(i,1))
      S4(j,2,i)=s4(i,2)+u*(s4(i+1,2)-s4(i,2))
    end
    u=u+0.1
  end
end
t5=input('Enter x-axis=1 or y-axis=2 for shearing about that axis=')
s5=[]
if t5==1
  c=input('Enter the shearing value about x axis=')
  for i=1:4
    s5(i,1)=s(i,1)+c*s(i,2)
    s5(i,2)=s(i,2)
  end
  S5=[]
  for i=1:4
    u=0
    for j=1:11
      if i==4
        S5(j,1,i)=s5(i,1)+u*(s5(1,1)-s5(i,1))
        S5(j,2,i)=s5(i,2)+u*(s5(1,2)-s5(i,2))
      else
        S5(j,1,i)=s5(i,1)+u*(s5(i+1,1)-s5(i,1))
        S5(j,2,i)=s5(i,2)+u*(s5(i+1,2)-s5(i,2))
      end
    u=u+0.1
    end
  end
elseif t5==2
  c=input('Enter the shearing value about y axis=')
  for i=1:4
    s5(i,1)=s(i,1)
    s5(i,2)=s(i,2)+c*s(i,1)
  end
  S5=[]
  for i=1:4
    u=0
    for j=1:11
      if i==4
        S5(j,1,i)=s5(i,1)+u*(s5(1,1)-s5(i,1))
        S5(j,2,i)=s5(i,2)+u*(s5(1,2)-s5(i,2))
      else
        S5(j,1,i)=s5(i,1)+u*(s5(i+1,1)-s5(i,1))
        S5(j,2,i)=s5(i,2)+u*(s5(i+1,2)-s5(i,2))
      end
    u=u+0.1
    end
  end  
end
plot('align')
title('UNIT SQUARE')
for i=1:4
  hold on
  plot(S(:,1,i),S(:,2,i))
  grid on
end
plot('align')
title('Translation of origin to [%d,%d]",t1(1,1),t1(1,2)')
for i=1:4
  hold on
  plot(S1(:,1,i),S1(:,2,i))
  grid on
end
plot('align')
title('Rotation about origin with %d deg",t2')
for i=1:4
  hold on
  plot(S2(:,1,i),S2(:,2,i))
  grid on
end
plot(3,3,4,'align')
if t3==1
  title('Reflection about x-axis')
else
  title('Reflection about y-axis')
end
for i=1:4
  hold on
  plot(S3(:,1,i),S3(:,2,i))
  grid on
end
plot('align')
title('scaling along x & y axis by %d,%d',a,b)
for i=1:4
  hold on
  plot(S4(:,1,i),S4(:,2,i))
  grid on
end
plot('align')
if t5==1
  title('shearing about x-axis by %d',c)
elseif t5==2
  title('shearing about y-axis by %d',c)
end
for i=1:4
  hold on
  plot(S5(:,1,i),S5(:,2,i))
  grid on
end