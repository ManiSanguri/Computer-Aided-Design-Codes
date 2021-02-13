s=[0,0;1,1;2,0]
S=[]
for i=1:3
  u=0
  for j=1:11
    if i==3
      S(j,1,i)=s(i,1)+u*(s(1,1)-s(i,1))
      S(j,2,i)=s(i,2)+u*(s(1,2)-s(i,2))
    else
      S(j,1,i)=s(i,1)+u*(s(i+1,1)-s(i,1))
      S(j,2,i)=s(i,2)+u*(s(i+1,2)-s(i,2))
    endif
    u=u+0.1
  end
end
deg=90
rad=deg2rad(deg)
s1=[]
for i=1:3
  s1(i,1)=s(i,1)*cos(rad)-s(i,2)*sin(rad)
  s1(i,2)=s(i,1)*sin(rad)+s(i,2)*cos(rad)  
end
s2=[]
for i=1:3
  s2(i,1)=-s1(i,2)
  s2(i,2)=-s1(i,1)
end
S2=[]
for i=1:3
  u=0
  for j=1:11
    if i==3
      S2(j,1,i)=s2(i,1)+u*(s2(1,1)-s2(i,1))
      S2(j,2,i)=s2(i,2)+u*(s2(1,2)-s2(i,2))
    else
      S2(j,1,i)=s2(i,1)+u*(s2(i+1,1)-s2(i,1))
      S2(j,2,i)=s2(i,2)+u*(s2(i+1,2)-s2(i,2))
    end
    u=u+0.1
  end
end
s3=[]
for i=1:3
  s3(i,1)=-s1(i,2)
  s3(i,2)=-s1(i,1)
end
s4=[]
for i=1:3
  s4(i,1)=s(i,1)*cos(rad)-s(i,2)*sin(rad)
  s4(i,2)=s(i,1)*sin(rad)+s(i,2)*cos(rad)  
end
S4=[]
for i=1:3
  u=0
  for j=1:11
    if i==3
      S4(j,1,i)=s4(i,1)+u*(s4(1,1)-s4(i,1))
      S4(j,2,i)=s4(i,2)+u*(s4(1,2)-s4(i,2))
    else
      S4(j,1,i)=s4(i,1)+u*(s4(i+1,1)-s4(i,1))
      S4(j,2,i)=s4(i,2)+u*(s4(i+1,2)-s4(i,2))
    end
    u=u+0.1
  end
end
plot('align')
title('Triangle with vertices (0,0)(1,1)(2,0)')
for i=1:3
  hold on
  plot(S(:,1,i),S(:,2,i))
  grid on
end
plot('align')
title('Rotation about z-axis by 90deg then reflection about y=-x')
for i=1:3
  hold on
  plot(S2(:,1,i),S2(:,2,i))
  grid on
end
plot('align')
title('Reflection about y=-x and then rotation about z-axis by 90deg')
for i=1:3
  hold on
  plot(S4(:,1,i),S4(:,2,i))
  grid on
end