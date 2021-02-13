M=[2 -2 1 1;-3 3 -2 -1;0 0 1 0;1 0 0 0];
for j=1:2
    for i=1:2
        n=input('enter the coordinates of the points');
        ax(i,j)=n(:,1);
        ay(i,j)=n(:,2);
        az(i,j)=n(:,3);
    end
end
for j=1:2
    for i=1:2
        n=input('enter the u tangent vectors');
        cx(i,j)=n(:,1);
        cy(i,j)=n(:,2);
        cz(i,j)=n(:,3);
    end
end
for j=1:2
    for i=1:2
        n=input('enter the w tangent vectors');
        bx(i,j)=n(:,1);
        by(i,j)=n(:,2);
        bz(i,j)=n(:,3);
    end
end
for j=1:2
    for i=1:2
        n=input('enter the twist vector');
        dx(i,j)=n(:,1);
        dy(i,j)=n(:,2);
        dz(i,j)=n(:,3);
    end
end
Bx=[ax,bx;cx,dx];
By=[ay,by;cy,dy];
Bz=[az,bz;cz,dz];
j=0;
for w=0:0.02:1
    j=j+1;
    i=0;
    W=[w.^3 w.^2 w 1];
    for u=0:0.02:1
        i=i+1;
        U=[u.^3 u.^2 u 1];
        px(i,j)=U*M*Bx*(M')*(W');
        py(i,j)=U*M*By*(M')*(W');
        pz(i,j)=U*M*Bz*(M')*(W');
    end
end
imax=i;
jmax=j;
for i=1:imax
     plot3(px(:,i),py(:,i),pz(:,i));
    hold on;
    grid on;
end
for j=1:jmax
    plot3(px(j,:),py(j,:),pz(j,:));
end 
plot3(px(:,1),py(:,1),pz(:,1),'color','m','linewidth',3);
plot3(px(:,imax),py(:,imax),pz(:,imax),'color','r','linewidth',3);
plot3(px(1,:),py(1,:),pz(1,:),'color','g','linewidth',3);
plot3(px(jmax,:),py(jmax,:),pz(jmax,:),'color','y','linewidth',3);
hold off;